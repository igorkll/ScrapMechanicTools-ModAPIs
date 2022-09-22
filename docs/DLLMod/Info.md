---
sidebar_position: 1
title: Info
hide_title: true
sidebar-label: 'Info'
---

<br></br>

![DLLMod Image](/img/DLLMod.png)

<code>DLLMod</code> is a modified Lua DLL which expands the Scrap Mechanic Lua API by loading <br></br>

in [custom libraries](/DLLMod/Custom-Functions/dllmod.http) and adding them and/or their functions to the Lua sandbox. <br></br>
It also re-enables some [standard Lua functions](/DLLMod/standard_functions) that were disabled by Axolot. <br></br>
The [custom libraries](/DLLMod/Custom-Functions/dllmod.http) are available in the global <code>dllmod</code> table (NOT <code>sm.dllmod</code>!).

Apart from this, it also applies some [other random, minor changes](/DLLMod/other_changes) to existing Lua functions.

### How to Install and Use

:::caution warning
There are some important things you need to be aware of before installing this mod! <br></br>
<br></br>
<strong>The download link provided below is THE ONLY legit download for this mod!</strong> <br></br>
Do not download it from anywhere else! <br></br>
If you see a download link for this outside of this website, please be safe and always <br></br>
download it from here instead, as other downloads might contain viruses/malware/etc. <br></br>
<br></br>
<strong>The added HTTP library allows mods to connect to any server on the internet.</strong> <br></br>
While this is a useful feature, it also means that a mod may connect to potentially <br></br>
unwanted services and <strong>send or receive certain data</strong>, for example a player's username. <br></br>
<br></br>
Last but not least, CMA: <br></br>
<strong>I (the creator) am NOT responsible for any damages caused by this library or any mods using it!</strong>
:::

First, <strong>download DLLMod here</strong>: [DOWNLOAD](/files/DLLMod.zip)

To install it, simply un-zip the zip file into any folder, then open the extracted <code>DLLMod</code> <br></br>
folder and run the provided <code>install.exe</code>. <br></br>
If this does not work, you need to copy the files in the <code>DLLMod/files/</code> folder, <br></br>
browse to your Scrap Mechanic installation, paste the copied files into <code>Scrap Mechanic/Release/</code> <br></br>
and select <code>Replace existing files</code> if required.

To <strong>remove DLLMod</strong>, either use the provided <code>uninstall.exe</code> or [verify your game files](steam://validate/387990).

## Change Log

### Version 1.0

- DLLMod first release






