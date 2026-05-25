@echo off
set REPO_URL=https://github.com/ahror1994/gorilla.git

REM 1. Инициализируем Git
git init

REM 2. Локально настраиваем имя и почту автора (чтобы Git не ругался)
git config user.email "ahror1994@gmail.com"
git config user.name "ahror1994"

REM 3. Безопасно привязываем GitHub репозиторий
git remote remove origin 2>nul
git remote add origin %REPO_URL%

REM 4. Добавляем файлы и создаем коммит (теперь сработает)
git add .
git commit -m "Initial commit"

REM 5. Создаем ветку main и принудительно отправляем файлы
git branch -M main
git push -u origin main --force

echo.
echo === УСПЕШНО ВЫПОЛНЕНО ===
pause