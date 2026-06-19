-- Создание базы данных
CREATE DATABASE strapi_db;

-- Создание пользователя
CREATE USER user WITH PASSWORD 'password';

-- Настройки для корректной работы Strapi
ALTER ROLE user SET client_encoding TO 'utf8';
ALTER ROLE user SET default_transaction_isolation TO 'read committed';
ALTER ROLE user SET timezone TO 'UTC';

-- Права доступа
GRANT ALL PRIVILEGES ON DATABASE strapi_db TO user;

-- Подключение к базе для восстановления данных
\c strapi_db;

-- Создание расширений
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";