@echo off
setlocal

:: create Mdiva-r0931
mkdir Mdiva-r0931

:: copy diva-distribution contents to Mdiva-r0931
copy diva-distribution\bin\* Mdiva-r0931\bin
copy diva-distribution\doc\* Mdiva-r0931\doc
copy diva-distribution\ThirdPartyLicenses\* Mdiva-r0931\ThirdPartyLicenses
copy diva-distribution\configs\doc\* Mdiva-r0931\doc

:: copy diva-distribution configs and docs...
copy diva-distribution\configs\doc\DivaPreferences.ini Mdiva-r0931\bin\config-include
copy diva-distribution\configs\doc\DotNetZip.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\IMPORTANT.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\INSTALL.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\LICENSE.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\LICENSEIMAGES.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\LICENSEWIFI.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\MyWorld.ini.example Mdiva-r0931\bin\config-include
copy diva-distribution\configs\doc\OpenSim-previous.ini Mdiva-r0931\bin
copy diva-distribution\configs\doc\OpenSim.exe.config.example Mdiva-r0931\bin
copy diva-distribution\configs\doc\OpenSim.ini.diva.example Mdiva-r0931\bin
copy diva-distribution\configs\doc\README.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\READMEWIFI.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\RegionConfig.ini.example Mdiva-r0931\bin\Regions
copy diva-distribution\configs\doc\RELEASENOTES.txt Mdiva-r0931\doc
copy diva-distribution\configs\doc\RELEASENOTESWIFI.txt Mdiva-r0931\doc

@REM rem copy tools from opensimcurrencyserver-dotnet to diva-distribution
@REM echo Copying tools from opensimcurrencyserver-dotnet to diva-distribution...
@REM copy diva-distribution\Tools\bin\* diva-distribution\bin\
@REM copy diva-distribution\Tools\configuration diva-distribution\addon-modules\configuration\

rem Zip the distribution using 7-Zip
echo Zipping...
7z a -tzip Mdiva-r0931.zip Mdiva-r0931

echo Package building completed.
pause
