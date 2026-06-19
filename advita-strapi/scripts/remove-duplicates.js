const { Pool } = require('pg');

const pgPool = new Pool({
  host: 'localhost',
  port: 5432,
  database: 'strapi_db',
  user: 'user',
  password: 'password',
});

async function removeDuplicates() {
  console.log('🗑️ Удаление дубликатов из таблиц...');
  console.log('=========================================');

  // 1. advent_cells - дубли по day_number
  console.log('📋 Обработка advent_cells...');
  const result1 = await pgPool.query(`
    DELETE FROM advent_cells a
    USING advent_cells b
    WHERE a.day_number = b.day_number AND a.id > b.id
  `);
  console.log(`   ✅ Удалено ${result1.rowCount} дубликатов`);

  // 2. faqs - дубли по question
  console.log('📋 Обработка faqs...');
  const result2 = await pgPool.query(`
    DELETE FROM faqs a
    USING faqs b
    WHERE a.question = b.question AND a.id > b.id
  `);
  console.log(`   ✅ Удалено ${result2.rowCount} дубликатов`);

  // 3. telegram_users - дубли по telegram_id
  console.log('📋 Обработка telegram_users...');
  const result3 = await pgPool.query(`
    DELETE FROM telegram_users a
    USING telegram_users b
    WHERE a.telegram_id = b.telegram_id AND a.id > b.id
  `);
  console.log(`   ✅ Удалено ${result3.rowCount} дубликатов`);

  // 4. user_progresses - дубли по user_id + cell_id
  console.log('📋 Обработка user_progresses...');
  const result4 = await pgPool.query(`
    DELETE FROM user_progresses a
    USING user_progresses b
    WHERE a.user_id = b.user_id AND a.cell_id = b.cell_id AND a.id > b.id
  `);
  console.log(`   ✅ Удалено ${result4.rowCount} дубликатов`);

  // 5. stats_events - дубли по telegram_id + event_type + timestamp
  console.log('📋 Обработка stats_events...');
  const result5 = await pgPool.query(`
    DELETE FROM stats_events a
    USING stats_events b
    WHERE a.telegram_id = b.telegram_id
      AND a.event_type = b.event_type
      AND a.timestamp = b.timestamp
      AND a.id > b.id
  `);
  console.log(`   ✅ Удалено ${result5.rowCount} дубликатов`);

  // 6. user_questions - дубли по telegram_id + question_text
  console.log('📋 Обработка user_questions...');
  const result6 = await pgPool.query(`
    DELETE FROM user_questions a
    USING user_questions b
    WHERE a.telegram_id = b.telegram_id
      AND a.question_text = b.question_text
      AND a.id > b.id
  `);
  console.log(`   ✅ Удалено ${result6.rowCount} дубликатов`);

  console.log('=========================================');
  console.log('✨ Удаление дубликатов завершено!');
}

async function showStatistics() {
  console.log('\n📊 Статистика после очистки:');
  console.log('=========================================');

  const stats = await pgPool.query(`
    SELECT
      (SELECT COUNT(*) FROM advent_cells) as advent_cells,
      (SELECT COUNT(*) FROM faqs) as faqs,
      (SELECT COUNT(*) FROM telegram_users) as telegram_users,
      (SELECT COUNT(*) FROM user_progresses) as user_progresses,
      (SELECT COUNT(*) FROM stats_events) as stats_events,
      (SELECT COUNT(*) FROM user_questions) as user_questions
  `);

  console.log(`   advent_cells:     ${stats.rows[0].advent_cells}`);
  console.log(`   faqs:             ${stats.rows[0].faqs}`);
  console.log(`   telegram_users:   ${stats.rows[0].telegram_users}`);
  console.log(`   user_progresses:  ${stats.rows[0].user_progresses}`);
  console.log(`   stats_events:     ${stats.rows[0].stats_events}`);
  console.log(`   user_questions:   ${stats.rows[0].user_questions}`);
}

async function run() {
  try {
    await removeDuplicates();
    await showStatistics();
    process.exit(0);
  } catch (err) {
    console.error('❌ Ошибка:', err.message);
    process.exit(1);
  }
}

run();