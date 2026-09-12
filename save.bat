@echo off
cd /d "%~dp0"

echo Baixando os saves mais recentes do GitHub...
git pull origin main

echo Iniciando o Valheim...
start /wait "" "steam://run/892970"

echo O Valheim foi fechado. Enviando novo save para o GitHub...
git add .
git commit -m "Save automatico: %date% %time%"
git push origin main

echo Tudo pronto! Pode fechar.
pause