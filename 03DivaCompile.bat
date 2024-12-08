@echo OFF
echo Compiling prebuild source...
cd diva-distribution
dotnet build --configuration Release OpenSim.sln
cd Tools
dotnet build --configuration Release OpenSim.sln
cd ..
pause
