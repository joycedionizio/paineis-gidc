@echo off
chcp 65001 >nul
echo ===================================================
echo    Sincronizador de Paineis Embratur - GitHub
echo ===================================================
echo.

:: Caminho da pasta no formato nativo do Linux/WSL
set WSL_PATH=/home/joyce/embratur/paineis-gidc

echo [1/4] Baixando atualizacoes dos colegas (Git Pull)...
wsl bash -c "cd %WSL_PATH% && git pull origin main"

echo.
echo [2/4] Preparando seus arquivos modificados (Git Add)...
wsl bash -c "cd %WSL_PATH% && git add ."

echo.
echo [3/4] Salvando a versao no historico (Git Commit)...
wsl bash -c "cd %WSL_PATH% && git commit -m 'Atualizacao automatica do time: $(date \"+%%d/%%m/%%Y as %%H:%%M\")'"

echo.
echo [4/4] Enviando para a nuvem (Git Push)...
wsl bash -c "cd %WSL_PATH% && git push origin main"

echo.
echo ===================================================
echo    Sincronizacao concluida com sucesso!
echo ===================================================
echo.
pause