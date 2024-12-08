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
copy "%source_directory%\configs\doc\DotNetZip.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\IMPORTANT.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\INSTALL.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\LICENSE.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\LICENSEIMAGES.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\LICENSEWIFI.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\MyWorld.ini.example" "%target_directory%\bin\config-include\" >nul
copy "%source_directory%\configs\doc\OpenSim-previous.ini" "%target_directory%\bin\" >nul
copy "%source_directory%\configs\doc\OpenSim.exe.config.example" "%target_directory%\bin\" >nul
copy "%source_directory%\configs\doc\OpenSim.ini.diva.example" "%target_directory%\bin\" >nul
copy "%source_directory%\configs\doc\README.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\READMEWIFI.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\RegionConfig.ini.example" "%target_directory%\bin\Regions\" >nul
copy "%source_directory%\configs\doc\RELEASENOTES.txt" "%target_directory%\doc\" >nul
copy "%source_directory%\configs\doc\RELEASENOTESWIFI.txt" "%target_directory%\doc\" >nul

:: Create ZIP archive
echo Creating ZIP archive...
::powershell -Command "Compress-Archive -Path '%target_directory%' -DestinationPath '%target_directory%.zip'"

echo Package created successfully: %target_directory%.zip
pause
