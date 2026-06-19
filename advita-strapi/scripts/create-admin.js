const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

// Флаг, чтобы создать админа только один раз
const FLAG_FILE = '/app/.admin-created';
// Альтернативный путь для флага (если не в Docker)
const LOCAL_FLAG_FILE = path.join(__dirname, '..', '.admin-created');

const ADMIN_EMAIL = process.env.ADMIN_EMAIL || 'admin@advita.ru';
const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'Admin123!@#';
const ADMIN_FIRSTNAME = process.env.ADMIN_FIRSTNAME || 'Admin';
const ADMIN_LASTNAME = process.env.ADMIN_LASTNAME || 'User';

/**
 * Проверка, создан ли уже администратор
 */
function isAdminCreated() {
    // Проверяем флаг в Docker
    if (fs.existsSync(FLAG_FILE)) {
        return true;
    }
    // Проверяем флаг локально
    if (fs.existsSync(LOCAL_FLAG_FILE)) {
        return true;
    }
    return false;
}

/**
 * Отметить, что администратор создан
 */
function markAdminCreated() {
    try {
        // Пытаемся создать флаг в Docker
        fs.writeFileSync(FLAG_FILE, new Date().toISOString());
    } catch (e) {
        // Если не в Docker — создаём локально
        fs.writeFileSync(LOCAL_FLAG_FILE, new Date().toISOString());
    }
    console.log('✅ Флаг создания администратора установлен');
}

/**
 * Проверка, существует ли уже администратор с таким email
 */
function checkAdminExists() {
    try {
        const result = execSync(
            `npm run strapi admin:list -- --email ${ADMIN_EMAIL}`,
            { encoding: 'utf8', stdio: 'pipe' }
        );
        return result.includes(ADMIN_EMAIL);
    } catch (e) {
        // Если команда не удалась — считаем, что админа нет
        return false;
    }
}

/**
 * Создание администратора
 */
function createAdmin() {
    console.log('🔄 Создание администратора Strapi...');
    console.log(`📧 Email: ${ADMIN_EMAIL}`);
    console.log(`👤 Имя: ${ADMIN_FIRSTNAME} ${ADMIN_LASTNAME}`);

    try {
        // Сначала проверяем, существует ли уже администратор
        if (checkAdminExists()) {
            console.log('✅ Администратор уже существует');
            markAdminCreated();
            return true;
        }

        // Команда создания администратора
        const cmd = `npm run strapi admin:create -- \
            --email=${ADMIN_EMAIL} \
            --password=${ADMIN_PASSWORD} \
            --firstname=${ADMIN_FIRSTNAME} \
            --lastname=${ADMIN_LASTNAME}`;

        console.log(`📝 Выполнение: ${cmd}`);

        const output = execSync(cmd, {
            encoding: 'utf8',
            stdio: 'inherit'
        });

        console.log('✅ Администратор создан успешно!');
        markAdminCreated();
        return true;

    } catch (error) {
        console.error('❌ Ошибка создания администратора:', error.message);
        return false;
    }
}

/**
 * Функция ожидания готовности Strapi
 */
async function waitForStrapi() {
    const maxRetries = 60; // 60 попыток по 2 секунды = 2 минуты
    let retries = 0;

    console.log('⏳ Ожидание запуска Strapi...');

    while (retries < maxRetries) {
        try {
            // Используем fetch для проверки готовности
            const response = await fetch('http://localhost:1337/admin/init', {
                method: 'GET',
                headers: { 'Content-Type': 'application/json' }
            });

            if (response.ok) {
                console.log('✅ Strapi запущен и готов');
                return true;
            }
        } catch (e) {
            // Игнорируем ошибки подключения
        }

        retries++;
        await new Promise(resolve => setTimeout(resolve, 2000));

        if (retries % 10 === 0) {
            console.log(`⏳ Ожидание Strapi... ${retries * 2} секунд`);
        }
    }

    console.log('⚠️ Strapi не ответил после 2 минут, продолжаем...');
    return false;
}

/**
 * Основная функция
 */
async function main() {
    console.log('=========================================');
    console.log('🔄 Скрипт создания администратора Strapi');
    console.log('=========================================');

    // Проверка, создан ли уже администратор
    if (isAdminCreated()) {
        console.log('✅ Администратор уже создан ранее, пропускаем');
        return;
    }

    // Ожидание готовности Strapi
    await waitForStrapi();

    // Создание администратора
    const success = createAdmin();

    if (success) {
        console.log('=========================================');
        console.log('✅ Администратор создан!');
        console.log(`📧 Email: ${ADMIN_EMAIL}`);
        console.log(`🔑 Пароль: ${ADMIN_PASSWORD}`);
        console.log('=========================================');
        console.log('📝 Сохраните эти данные для входа в админ-панель!');
    } else {
        console.log('=========================================');
        console.log('❌ Не удалось создать администратора');
        console.log('📝 Создайте его вручную через админ-панель:');
        console.log('   http://localhost:1337/admin');
        console.log('=========================================');
    }
}

// Запуск
main().catch(console.error);