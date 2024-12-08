@echo off
setlocal

rem Set directories
set opensimDir=diva-distribution
set installerDir=Installer
set divaDistMasterDir=diva-distribution-master
set currencyServerDir=opensimcurrencyserver-dotnet

rem Clone repositories
echo Cloning repositories...
git clone https://github.com/opensim/opensim.git %opensimDir%
git clone https://github.com/ManfredAabye/d2.git %installerDir%
git clone https://github.com/ManfredAabye/diva-distribution.git %divaDistMasterDir%
git clone https://github.com/ManfredAabye/opensimcurrencyserver-dotnet.git %currencyServerDir%

rem Copy Installer contents to diva-distribution
echo Copying Installer contents to diva-distribution...
xcopy /E /I /Y %installerDir%\* %opensimDir%\
rem Copy addon-modules directories from diva-distribution\Tools to diva-distribution\addon-modules\Tools
xcopy /E /I /Y %opensimDir%\Tools %opensimDir%\addon-modules\Tools\

rem Copy addon-modules directories from diva-distribution-master to diva-distribution
echo Copying addon-modules directories from diva-distribution-master to diva-distribution...
xcopy /E /I /Y %divaDistMasterDir%\addon-modules\00Data %opensimDir%\addon-modules\00Data\
xcopy /E /I /Y %divaDistMasterDir%\addon-modules\00DivaInterfaces %opensimDir%\addon-modules\00DivaInterfaces\
xcopy /E /I /Y %divaDistMasterDir%\addon-modules\01DivaUtils %opensimDir%\addon-modules\01DivaUtils\
xcopy /E /I /Y %divaDistMasterDir%\addon-modules\1DivaOpenSimServices %opensimDir%\addon-modules\1DivaOpenSimServices\
xcopy /E /I /Y %divaDistMasterDir%\addon-modules\20WifiScriptEngine %opensimDir%\addon-modules\20WifiScriptEngine\
xcopy /E /I /Y %divaDistMasterDir%\addon-modules\21Wifi %opensimDir%\addon-modules\21Wifi\

rem Copy specific files from diva-distribution-master to diva-distribution
echo Copying specific files from diva-distribution-master to diva-distribution...
xcopy /Y %divaDistMasterDir%\copy-files.sh %opensimDir%\
xcopy /Y %divaDistMasterDir%\divaprebuild.xml %opensimDir%\
xcopy /Y %divaDistMasterDir%\divarunprebuild.bat %opensimDir%\
xcopy /Y %divaDistMasterDir%\make-packs.sh %opensimDir%\
xcopy /Y %divaDistMasterDir%\Makefile %opensimDir%\
xcopy /Y %divaDistMasterDir%\nant-color %opensimDir%\
xcopy /Y %divaDistMasterDir%\runprebuild.sh %opensimDir%\

rem Copy addon-modules directories from opensimcurrencyserver-dotnet to diva-distribution
echo Copying addon-modules directories from opensimcurrencyserver-dotnet to diva-distribution...
xcopy /E /I /Y %currencyServerDir%\addon-modules\OpenSim-Data-MySQL-MySQLMoneyDataWrapper %opensimDir%\addon-modules\OpenSim-Data-MySQL-MySQLMoneyDataWrapper\
xcopy /E /I /Y %currencyServerDir%\addon-modules\OpenSim-Grid-MoneyServer %opensimDir%\addon-modules\OpenSim-Grid-MoneyServer\
xcopy /E /I /Y %currencyServerDir%\addon-modules\OpenSim-Modules-Currency %opensimDir%\addon-modules\OpenSim-Modules-Currency\

rem Copy addon-modules directories from opensimcurrencyserver-dotnet\ to diva-distribution

rem Copy bin files from opensimcurrencyserver-dotnet to diva-distribution
echo Copying bin files from opensimcurrencyserver-dotnet to diva-distribution...
xcopy /E /I /Y %currencyServerDir%\bin\* %opensimDir%\bin\

echo All files have been copied successfully.
pause
