@echo OFF
echo Creating prebuild source...

rem Copying System.Drawing.Common.dll if it exists
if exist diva-distribution\bin\System.Drawing.Common.dll.win (
    copy diva-distribution\bin\System.Drawing.Common.dll.win diva-distribution\bin\System.Drawing.Common.dll
) else (
    echo System.Drawing.Common.dll.win does not exist.
)

rem Running prebuild
cd diva-distribution
dotnet bin\prebuild.dll /target vs2022 /targetframework net8_0 /excludedir "obj|bin" /file prebuild.xml

@REM Running prebuild Tools
cd Tools
dotnet bin\prebuild.dll /target vs2022 /targetframework net8_0 /excludedir "obj|bin" /file prebuild.xml
cd ..

rem Removing directories if they exist
if exist "bin\addin-db-002" (
    del /F /Q /S bin\addin-db-002 > NUL
    rmdir /Q /S bin\addin-db-002
)
if exist "bin\addin-db-004" (
    del /F /Q /S bin\addin-db-004 > NUL
    rmdir /Q /S bin\addin-db-004
)

::END
cd ..
pause
