@echo off
chcp 65001 >nul
echo ===================================================
echo    Sincronizador de Paineis Embratur - GitHub
echo ===================================================
echo.

:: O comando /d garante que ele mude de disco se necessario, 
:: e o %USERPROFILE% entra direto na pasta Documentos do usuario atual.
cd /d "%USERPROFILE%\Documents\paineis-gidc"

echo [1/4] Baixando atualizacoes dos colegas (Git Pull)...
git pull origin main

echo.
echo [2/4] Preparando seus arquivos modificados (Git Add)...
git add .

echo.
echo [3/4] Salvando a versao no historico (Git Commit)...
git commit -m "Atualizacao do painel (Sincronizacao Automatica)"

echo.
echo [4/4] Enviando para a nuvem (Git Push)...
git push origin main

echo.
echo ===================================================
echo    Sincronizacao concluida com sucesso!
echo ===================================================
echo.
pause