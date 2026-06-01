@echo off
echo %date% %time% Checking service >> C:\Scripts\SalesPadEDI.log
 
sc query "SalesPad EDI Service - Penix" | find "RUNNING" >nul
if errorlevel 1 (
    echo %date% %time% Starting service >> C:\Scripts\SalesPadEDI.log
    net start "SalesPad EDI Service - Penix" >> C:\Scripts\SalesPadEDI.log 2>&1
) else (
    echo %date% %time% Service already running >> C:\Scripts\SalesPadEDI.log
)
