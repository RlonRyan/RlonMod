@echo off
Setlocal EnableDelayedExpansion

REM if exist temp.txt (del temp.txt)
echo. 2>temp.txt
for /f "usebackq tokens=* delims=" %%a in ("package.rsc") do (
	for /f "usebackq tokens=1-4 delims= " %%b in ('%%a') do (
		if "%%c"=="_userVersion" (
			for /f "usebackq tokens=1-3 delims=.;" %%f in ('%%e') do (
				set /a rev=%%g
				set /a inc=%%h+1
				echo.%%b %%c %%d %%f.%%g.!inc!;>>temp.txt
			)
		) else (
			echo:%%a>>temp.txt
		)
	)
)

echo. 2>package.rsc
for /f "usebackq tokens=* delims=" %%a in ("temp.txt") do (
	for /f "usebackq tokens=1-4 delims= " %%b in ('%%a') do (
		if "%%c"=="_description" (
			for /f "usebackq tokens=1 delims=:" %%d in ('%%a') do (
				echo.%%d^: !rev! Build: !inc!^";>>package.rsc
			)
		) else (
			echo:%%a>>package.rsc
		)
	)
)

del temp.txt

@echo on
..\bin\x64\Tools-x64.exe /build rlonmodResources.rsc /pathres ../rlonmod /pathdat ../rlonmod/bin
..\bin\x64\Tools-x64.exe /mod Package.rsc:rlonmod /pathres ../rlonmod /pathdat ../rlonmod/bin

@echo off
copy ..\bin\WinData\rlonmod.pkm ..\rlonmod\dist\rlonmod.pkm /y
if exist {"C:\Program Files (x86)\Steam\SteamApps\common\Banished\WinData"} do (
	copy "..\bin\WinData\rlonmod.pkm" "C:\Program Files (x86)\Steam\SteamApps\common\Banished\WinData\rlonmod.pkm" /y
)
echo.
echo Completed Build: !inc!.
echo.
pause