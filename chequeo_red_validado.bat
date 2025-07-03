@echo off
cls
echo ================================
echo  CHEQUEO DE RED - SOPORTE IT
echo ================================

echo.
echo [1] Dirección IP:
for /f "tokens=14 delims= " %%a in ('ipconfig ^| findstr /i "IPv4"') do (
    set IP=%%a
)
echo     IP Detectada: %IP%

echo.
echo [2] Ping al Router (192.168.1.1):
ping 192.168.1.1 -n 2 > nul
if %errorlevel%==0 (
    echo     [OK] Se alcanzó el router correctamente.
) else (
    echo     [ERROR] No se pudo alcanzar el router.
)

echo.
echo [3] Ping a Internet (8.8.8.8):
ping 8.8.8.8 -n 2 > nul
if %errorlevel%==0 (
    echo     [OK] Acceso a internet disponible.
) else (
    echo     [ERROR] No hay acceso a internet.
)

echo.
echo [4] DNS configurado:
ipconfig /all | findstr /i "Servidor DNS"

echo.
echo [5] Nombre del equipo:
hostname

echo.
echo --------------------------------
echo CHEQUEO COMPLETADO
echo Revise los resultados marcados con [OK] o [ERROR]
echo --------------------------------
pause > nul
