FROM node:20-alpine

# Установка рабочей директории
WORKDIR /app

# Копирование package.json и установка зависимостей
COPY package*.json ./
RUN npm ci --only=production

# Копирование всего кода Strapi
COPY . .

# Сборка админ-панели
RUN npm run build

# Копирование скриптов (для создания администратора)
COPY scripts/ /app/scripts/

# Открытие порта
EXPOSE 1337

# Запуск скрипта создания администратора, затем Strapi
CMD ["node", "/app/scripts/create-admin.js"]