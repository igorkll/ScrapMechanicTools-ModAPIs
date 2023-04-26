---
sidebar_position: 2
title: Using DLM With SMInjector
hide_title: true
sidebar-label: 'Using DLM With SMInjector'
---

## Using DLM With SMInjector

In order to be able to use DLM together with the SMInjector, you need to make two changes to your SMInjector setup. <br></br>
This is needed because the SMInjector is incompatible with DLL modifications, which DLM is. <br></br>

First, [download](/modapis/DLM/Info#download-dlm) and install DLM as normal.

:::info note
Make sure you have installed DLM **Version 2.4 or newer**, as older versions will not work.
:::

**After installing DLM**, open your SMInjector installation folder. <br></br>
It should contain files and folders such as <code>SMInjector.exe</code> and <code>config</code>. <br></br>
Open the <code>config</code> folder and inside it, the <code>SMLuaHook</code> folder. It should contain a file called <code>lua_hooks.json</code>. Open this file. <br></br>

Inside this file, add the following entry to the <code>luaL_loadstring</code> hook. <br></br>
Make sure the <code>priority</code> of the extra entry is **lower** than all other hook entries. <br></br>

```json title="Hook Entry"
{"priority": 0,"selector":[{"operator":"CONTAINS","value":"unsafe_env"}],"execute":[{"command": "APPEND_STRING","string":"do local f, err = loadfile( \"API.lua\" )if f then local s, e = pcall( f )if not s then sm.log.error( \"Error initializing DLM: \" .. (err and err or \"Unknown Error\") )end else sm.log.error( \"Error loading DLM: \" .. (err and err or \"Unknown Error\") )end end"}]}
```
Your <code>lua_hooks.json</code> file's contents should now look something like this:

```json
{
	"hooks": {
		"luaL_loadstring": [
			// Other hook entries go here

			// Make sure "priority" in this entry is lower(!) than all other hooks
			{"priority": 0,"selector":[{"operator":"CONTAINS","value":"unsafe_env"}],"execute":[{"command": "APPEND_STRING","string":"do local f, err = loadfile( \"API.lua\" )if f then local s, e = pcall( f )if not s then sm.log.error( \"Error initializing DLM: \" .. (err and err or \"Unknown Error\") )end else sm.log.error( \"Error loading DLM: \" .. (err and err or \"Unknown Error\") )end end"}]}
		]

		// Other hooks go here
	}
}
```

**After adding the hook**, go back into your SMInjector installation folder. <br></br>
In this folder (next to <code>SMInjector.exe</code>), **create a new file** called <code>Launch.bat</code> and open it in a text editor. <br></br>
Copy-paste the following code into the file and save it:

```bat
@echo off
setlocal enabledelayedexpansion

set "appID=387990"
set "gameName=Scrap Mechanic"

for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve\Steam" /v InstallPath') do (
    set "steamPath=%%b"
)

if not defined steamPath (
    echo Steam is not installed on this system.
    exit /b 1
)

for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App %appID%" /v "InstallLocation" ^| findstr "InstallLocation"') do set INSTALL_LOCATION=%%b

if not defined INSTALL_LOCATION (
    echo %gameName% is not installed on Steam.
    exit /b 1
)

echo %gameName% is installed at: %INSTALL_LOCATION%

set release=%INSTALL_LOCATION%\Release\

rename "%release%lua51.dll" lua51_DLM.dll
rename "%release%lua51_clean.dll" lua51.dll

call SMInjector.exe

:loop
timeout /t 1 /nobreak > NUL
tasklist /fi "ImageName eq ScrapMechanic.exe" /fo csv 2>NUL | find /I "ScrapMechanic.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop

rename "%release%lua51.dll" lua51_clean.dll
rename "%release%lua51_DLM.dll" lua51.dll
```

**After saving the file**, whenever you want to use SMInjector while DLM is installed, do **not** run <code>SMInjector.exe</code> directly - instead, run the created <code>Launch.bat</code> file. <br></br>
The <code>Launch.bat</code> file takes care of properly launching the injector to avoid compatibility issues with the modified DLL.

