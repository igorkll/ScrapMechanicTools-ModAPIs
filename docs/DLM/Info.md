---
sidebar_position: 1
title: Info
hide_title: true
sidebar-label: 'Info'
---

<br></br>

![DLM Image](/img/DLM.png)

DLM API Extension is a mod/add-on for Scrap Mechanic which extends the game's Lua Modding API.

It does so mainly by adding various Lua libraries and functions to the API that would otherwise not be available. <br></br>
Some of those are *existing* libraries (such as [HTTPS](/modapis/DLM/Static-Functions/dlm.http)) with a wrapper written around them, while others (like [Audio](/modapis/DLM/Static-Functions/dlm.audio)) <br></br>
are *completely custom-made* specifically for this mod.

Apart from this, DLM also applies some other, minor improvements (see [Other Changes](/modapis/DLM/other_changes)).

Also note that DLM does NOT affect multiplayer - you can play without any issues even with this mod installed.

### Download DLM

You can download the newest DLM version [here](/files/DLM_API_Extension_2_3.zip).

Older versions of DLM can be found [below](#old-versions).

**DLM API Documentation** can be found in the categories on the left and <br></br>
as a [Lua documentation file](/files/DLM.lua) (written by Tofix.rs).

### How to install and use

:::caution warning
There are some important things you need to be aware of before installing this mod. <br></br> <br></br>

<strong>The download link provided below is THE ONLY official source of this mod!</strong> <br></br>

If you download it from **anywhere else**, it might contain a virus, malware, etc. <br></br>

**If you are a mod developer using this mod, do NOT re-distribute this mod's files in your own mod(s)!** <br></br>
**Instead, add a link to this page and let people download it from here themselves.** <br></br> <br></br>

**The added HTTP library allows mods to send/request data to/from any server on the internet.** <br></br>
While this is a useful feature, it also means that such a mod may connect to potentially unwanted <br></br>
services and send or receive data (like player usernames). <br></br> <br></br>

**If you find a bug or malfunction in this mod** <br></br>
**There are 4 (four!) ways to report issues** with any of my content, [which you can see here](https://scrapmechanictools.com/report_issues.html). <br></br>
If you find a bug in this mod, *please use one of these ways* to *report said bug*. <br></br>
Please do *not* spread claims like "the mod breaks things", ***especially*** if you have <br></br>
not reported said bug using one of the 4 ways above! <br></br> <br></br>

**I (the creator of DLM) am NOT responsible for any damages caused by this library or any mods <br></br>
using it, *especially* if you downloaded this mod from any place other than this website.**
:::

First, download DLM from [the link above](/files/DLM_API_Extension_2_2.zip).

To install it, simply un-zip the zip file into any folder, then open the extracted <code>DLM API Extension</code> folder and run the provided <code>install.exe</code>. <br></br>
If the installer fails or you do not want to run it, you can also manually copy the files in the <code>DLM API Extension/files/</code> folder, <br></br>
open your Scrap Mechanic installation folder, paste the copied files into <code>Scrap Mechanic/Release/</code> <br></br>
and select <code>Replace existing files</code> if required.

To <strong>remove DLM</strong>, either use the provided <code>uninstall.exe</code> or [verify your game files](steam://validate/387990).

After installing, you can use the API functions listed in the categories on the left.

:::info note
As of DLM version 2.1, the extension does not work with the custom game test button in the Mod Tool. <br></br>
**This will be fixed in version 3.0.** <br></br> <br></br>

The DLM installer may not work properly if Scrap Mechanic is not installed in the default directory (C:/Program Files(x86)/...). <br></br>
**This will be fixed soon.**
:::

More information about the mod, bug reports, known bugs and update notifications can be found in the [Discord Server](https://discord.gg/2eACct5FDm).







## Change Log

### Version 2.3

#### Fixes

- Fixed a bug in the [dlm.xml.parseXmlString](/modapis/DLM/Static-Functions/dlm.xml#parsexmlstring) function

### Version 2.2

#### Fixes

- Attempted to fix a very rare crash that might have been caused by DLM (???)

### Version 2.1

#### Fixes

- Fixed [dlm.gui.createGuiFromXmlString](/modapis/DLM/Static-Functions/dlm.gui#createguifromxmlstring) not working

### Version 2.0

#### Potentially Breaking Changes

- The second parameter (<code>handler</code>) for [dlm.xml.parseXmlString](/modapis/DLM/Static-Functions/dlm.xml#parsexmlstring) is now deprecated and will be removed in version 3.0.

#### New Libraries

- New Library: [dlm.constants](/modapis/DLM/Static-Functions/dlm.constants)
- New Library: [dlm.gui](/modapis/DLM/Static-Functions/dlm.gui)
- New Library: [dlm.audio](/modapis/DLM/Static-Functions/dlm.audio)
- New Library: [dlm.input](/modapis/DLM/Static-Functions/dlm.input)

#### New Objects

- New Object: [AudioBank](/modapis/DLM/Objects/AudioBank)
- New Object: [AudioEvent](/modapis/DLM/Objects/AudioEvent)
- New Object: [EventInstance](/modapis/DLM/Objects/EventInstance)

#### New Functions

- New Function: [dlm.setupContentPath](/modapis/DLM/Static-Functions/dlm#setupcontentpath)

#### Other Changes

- New Value: [dlm.version](/modapis/DLM/Static-Functions/dlm#version)
- Changed the mod's name to <code>DLM API Extension</code> (previously known as <code>DLLMod</code>). <br></br>
The global <code>dllmod</code> table still exists, though I highly recommend using the <code>dlm</code> table instead.

### Version 1.0

- First release






## Old Versions

Below you can download old versions of DLM.

<strong>Note - These versions are no longer supported and may contain bugs that are fixed in newer versions. <br></br>
They are only here for backwards compatibility, e.g. if a mod requires a specific DLM version.</strong> <br></br> <br></br>

- [DLM Version 2.2](/files/DLM_API_Extension_2_2.zip)
- [DLM Version 2.1](/files/DLM_API_Extension_2_1.zip)
- [DLM Version 2.0](/files/DLM_API_Extension.zip)
- [DLM Version 1.0](/files/DLLMod.zip)


