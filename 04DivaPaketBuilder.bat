@echo off
setlocal

:: Define source and target directories
set source_directory=diva-distribution
set target_directory=Mdiva-r0931

:: Create the target directory if it doesn't exist
echo Creating target directory: %target_directory%
if not exist "%target_directory%" mkdir "%target_directory%"

:: Copy all required contents
echo Copying contents...

xcopy "%source_directory%\bin\*" "%target_directory%\bin\" /E /I /Y
xcopy "%source_directory%\doc\*" "%target_directory%\doc\" /E /I /Y
xcopy "%source_directory%\configs\doc\*" "%target_directory%\doc\" /E /I /Y
xcopy "%source_directory%\ThirdPartyLicenses\*" "%target_directory%\ThirdPartyLicenses\" /E /I /Y
xcopy "%source_directory%\Tools\bin\*" "%target_directory%\bin\" /E /I /Y

:: Copy specific configuration and documentation files
copy "%source_directory%\configs\doc\DivaPreferences.ini" "%target_directory%\bin\config-include\" >nul
copy "%source_directory%\configs\doc\MyWorld.ini.example" "%target_directory%\bin\config-include\" >nul

copy "%source_directory%\configs\doc\*.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\*.txt" "%target_directory%\doc\" >nul

copy "%source_directory%\README.txt" "%target_directory%\" >nul

copy "%source_directory%\configs\doc\OpenSim-previous.ini" "%target_directory%\bin\" >nul
copy "%source_directory%\configs\doc\OpenSim.exe.config.example" "%target_directory%\bin\" >nul
copy "%source_directory%\configs\doc\OpenSim.ini.diva.example" "%target_directory%\bin\" >nul

xcopy "%source_directory%\addon-modules\21Wifi\Wifi.ini" "%target_directory%\bin\" /E /I /Y
xcopy "%source_directory%\addon-modules\21Wifi\WifiSQLite.ini.example" "%target_directory%\bin\" /E /I /Y

:: Copy Web
xcopy "%source_directory%\addon-modules\21Wifi\WifiPages\de\*" "%target_directory%\bin\de\" /E /I /Y
xcopy "%source_directory%\addon-modules\21Wifi\WifiPages\es\*" "%target_directory%\bin\es\" /E /I /Y
xcopy "%source_directory%\addon-modules\21Wifi\WifiPages\fr\*" "%target_directory%\bin\fr\" /E /I /Y
xcopy "%source_directory%\addon-modules\21Wifi\WifiPages\pt\*" "%target_directory%\bin\pt\" /E /I /Y
xcopy "%source_directory%\addon-modules\21Wifi\WifiPages\ru\*" "%target_directory%\bin\ru\" /E /I /Y

xcopy "%source_directory%\addon-modules\21Wifi\WifiPages\*" "%target_directory%\bin\en\" /E /I /Y

xcopy "%source_directory%\addon-modules\21Wifi\WifiPages\*" "%target_directory%\WifiPages\" /E /I /Y

:: Create ZIP archive
echo Creating ZIP archive...
powershell -Command "Compress-Archive -Path '%target_directory%' -DestinationPath '%target_directory%.zip'"

echo Package created successfully: %target_directory%.zip
pause
