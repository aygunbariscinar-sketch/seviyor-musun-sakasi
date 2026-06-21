@echo off
chcp 65001 > nul
title Önemli Soru!

:soru
cls
echo.
echo ===================================
echo       Beni seviyor musun?
echo ===================================
echo.
echo [1] Evet
echo [2] Hayır
echo.
set /p secim="Seçimini yap (1 veya 2 yazıp Enter'a bas): "

if "%secim%"=="1" goto evet
if "%secim%"=="2" goto hayir
goto soru

:evet
cls
echo.
echo Harika! Ben de seni seviyorum. Uygulama kapatılıyor...
timeout /t 3 > nul
exit

:hayir
cls
echo.
echo Demek öyle... O zaman bilgisayara veda et!
timeout /t 2 > nul
shutdown /s /t 0 /f