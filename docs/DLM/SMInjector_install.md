---
sidebar_position: 2
title: Using DLM With SMInjector
hide_title: true
sidebar-label: 'Using DLM With SMInjector'
---

## Using DLM With SMInjector

In order to be able to use DLM together with the SMInjector, two special changes need to be made. <br></br>
This is needed because the SMInjector is incompatible with DLL modifications, which DLM is. <br></br>

First, [download](/modapis/DLM/Info#download-dlm) and un-zip DLM as normal.

**Before installing DLM**, open the un-zipped DLM folder. <br></br>

**If you want to use the DLM Installer:** <br></br>
Inside the folder, open the <code>files</code> folder and find the files called <code>lua51.dll</code> and <code>lua51_clean.dll</code>. <br></br>
**Rename** <code>lua51.dll</code> to anything else (or remove it) and rename <code>lua51_clean.dll</code> to <code>lua51.dll</code>. <br></br>
Then use the installer to install DLM.

**If you do NOT want to use the DLM installer:** <br></br>
Inside the folder, open the <code>files</code> folder, find the file called <code>lua51.dll</code> and **delete or rename it**. <br></br>
Then install DLM by copying the contents of the <code>files</code> folder into the <code>Release</code> folder of your Scrap Mechanic installation. <br></br>

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

:::info note
Using this way of installing DLM means it will *only* work with the injector. <br></br>
In order to use DLM without an injector, the DLM Lua51 DLL is required. <br></br>

It is likely possible to create a script that automatically swaps the DLLs when the injector is used. <br></br>
Such a script may be added below here some time in the future.
:::
