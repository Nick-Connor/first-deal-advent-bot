const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');

const pgPool = new Pool({
  host: 'localhost',
  port: 5432,
  database: 'strapi_db',
  user: 'user',
  password: 'password',
});

function convertTimestamp(value) {
  if (value === null || value === undefined) return null;
  const num = parseInt(value);
  if (isNaN(num)) return value;
  if (num > 1000000000000) {
    return new Date(num).toISOString().slice(0, 19).replace('T', ' ');
  }
  return value;
}

async function clearTables() {
  const tables = [
    'advent_cells', 'faqs', 'stats_events',
    'user_questions', 'telegram_users', 'user_progresses'
  ];

  console.log('🗑️ Очистка таблиц перед импортом...');
  for (const table of tables) {
    try {
      await pgPool.query(`TRUNCATE TABLE ${table} CASCADE;`);
      console.log(`   ✅ ${table} очищена`);
    } catch (err) {
      console.log(`   ⚠️ ${table}: ${err.message}`);
    }
  }
}

async function importTable(tableName, jsonFile) {
  const filePath = path.join(__dirname, '..', 'backup', jsonFile);

  if (!fs.existsSync(filePath)) {
    console.log(`⚠️ Файл ${jsonFile} не найден`);
    return;
  }

  const data = fs.readFileSync(filePath, 'utf8');
  const rows = JSON.parse(data);

  console.log(`📥 Импорт ${tableName}: ${rows.length} записей`);

  for (const row of rows) {
    // Преобразование timestamp полей
    if (row.created_at) row.created_at = convertTimestamp(row.created_at);
    if (row.updated_at) row.updated_at = convertTimestamp(row.updated_at);
    if (row.published_at) row.published_at = convertTimestamp(row.published_at);
    if (row.opened_at) row.opened_at = convertTimestamp(row.opened_at);
    if (row.timestamp) row.timestamp = convertTimestamp(row.timestamp);
    if (row.registered_at) row.registered_at = convertTimestamp(row.registered_at);

    // Удаляем поля внешних ключей (они ссылаются на admin_users)
    delete row.created_by_id;
    delete row.updated_by_id;

    const columns = Object.keys(row).filter(k => row[k] !== null && row[k] !== undefined);
    const placeholders = columns.map((_, i) => `$${i + 1}`).join(',');
    const values = columns.map(k => row[k]);

    const query = `INSERT INTO ${tableName} (${columns.join(',')})
                   VALUES (${placeholders})
                   ON CONFLICT (id) DO NOTHING`;

    try {
      await pgPool.query(query, values);
    } catch (err) {
      console.error(`   ❌ Ошибка: ${err.message}`);
    }
  }

  console.log(`✅ ${tableName} импортирован`);
}

async function runImport() {
  console.log('🚀 Импорт данных в PostgreSQL...');
  console.log('=========================================');

  await clearTables();

  const tables = [
    { name: 'advent_cells', file: 'advent_cells.json' },
    { name: 'faqs', file: 'faqs.json' },
    { name: 'stats_events', file: 'stats_events.json' },
    { name: 'user_questions', file: 'user_questions.json' },
    { name: 'telegram_users', file: 'telegram_users.json' },
    { name: 'user_progresses', file: 'user_progresses.json' }
  ];

  for (const table of tables) {
    await importTable(table.name, table.file);
  }

  console.log('=========================================');
  console.log('✨ Импорт завершён!');
  process.exit();
}

runImport();