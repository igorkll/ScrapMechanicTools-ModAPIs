---
sidebar_position: 2
title: dlm
hide_title: true
sidebar-label: 'dlm'
---

<br></br>

## dlm

The global <code>dlm</code> table contains all added libraries (like audio) and constants. <br></br>
It also contains some functions which are related to the mod itself or did not fit any specific category.

### version

```lua
dlm.version = "2.0"
```

The current DLM version, as a string. <br></br>
You can check this in your mod to make sure the user has the correct DLM version installed.

---

### setupContentPath

```lua
dlm.setupContentPath( modName, localId, steamId )
```

Sets up the content path ($CONTENT_uuid) for the content with the given name, localId and steamId.

**This is required for some functions to work (e.g. audio.loadBank)!**

This needs to only be called once per mod. <br></br>
You should call this in the root of a script that is always loaded (like a util.lua or similar file).

:::info note
The <code>modName</code> parameter should be **the name of the mod's local folder**, NOT the name in the description.json! <br></br> <br></br>

If your mod is not uploaded to the steam workshop, you can use <code>0</code> as a placeholder for the <code>steamId</code> parameter. <br></br>
**However, it is absolutely necessary to replace it with the mod's *actual* steam id after uploading!!** <br></br>
**If you do not set the steamId correctly, your mod will not work when your subscribers try to use it!** <br></br> <br></br>

This might get improved in a future update.
:::

<strong>Arguments:</strong> <br></br>

- <code>modName</code> [<strong> string </strong>]: The local folder name of the mod. <br></br>
- <code>localId</code> [<strong> Uuid </strong>]: The localId value in the mod's description.json. <br></br>
- <code>steamId</code> [<strong> number </strong>]: The steamId value in the mod's description.json, or 0 if not uploaded yet. <br></br>

---


