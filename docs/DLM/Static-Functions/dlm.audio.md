---
sidebar_position: 7
title: dlm.audio
hide_title: true
sidebar-label: 'dlm.audio'
---

<br></br>

## dlm.audio

**Associated object types:** [AudioBank](/modapis/DLM/Objects/AudioBank), [AudioEvent](/modapis/DLM/Objects/AudioEvent)

The DLM Audio library provides a way to load and play custom audio. <br></br>
It does so using the FMOD Audio System (https://fmod.com). <br></br>
See the [Custom Audio Tutorial](https://scrapmechanictools.com/modding_help/Tutorials/Custom_Audio) and [DLM Code Examples mod](https://steamcommunity.com/sharedfiles/filedetails/?id=2888172201) for how to setup custom audio using this library.

:::info note
3D FMOD features are currently **not** implemented in the API - they will be added in a future DLM update.
:::

### updateSystem

```lua
local fmod_result = dlm.audio.updateSystem()
```
<code>Client-Only</code> <br></br>

Updates the audio system. <br></br>
You should call this every tick and make sure it is called after using any other audio-related function. <br></br>
If this is not called correctly, unexpected behavior may occur.

<strong>Returns:</strong> <br></br>

- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### loadBank

```lua
local api_result, fmod_result, bank = dlm.audio.loadBank( filePath, asynchronous, guids_file )
```
<code>Client-Only</code> <br></br>

Loads an FMOD audio bank file and, optionally, a GUIDs.txt file for said audio bank and creates an [AudioBank](/modapis/DLM/Objects/AudioBank) object.

Loading a GUIDs.txt file will allow you to use paths like <code>event:/xyz</code> for [createEvent](#createevent). <br></br>
This is the recommended method of implementing custom audio.

Without a GUIDs.txt file, you have to create events using their GUID, e.g. <code>{4f84f5d2-5a6e-4bc7-89c7-8db8bec42f40}</code>.

:::info note
**This function requires the [content path to be setup](/modapis/DLM/Static-Functions/dlm#setupcontentpath) in order to work!** <br></br> <br></br>

When <code>asynchronous</code> is false, the game may freeze until the bank is loaded. <br></br> <br></br>

To avoid this, the bank can be loaded asynchronously by setting <code>asynchronous</code> to true. <br></br>
Keep in mind that an asynchronously loaded bank **cannot** be used until it is fully loaded. <br></br>
Use [getLoadingState](/modapis/DLM/Objects/AudioBank#getloadingstate) to check if the bank has finished loading or not.
:::

<strong>Arguments:</strong> <br></br>

- <code>filePath</code> [<strong> string </strong>]: The path ($CONTENT_uuid) to the audio bank file.
- <code>asynchronous</code> [<strong> boolean </strong>]: Whether the bank should be loaded asynchronously or not. Defaults to false.
- <code>guids_file</code> [<strong> string </strong>]: The path ($CONTENT_uuid) to the GUIDs.txt file for the bank.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The custom API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>bank</code> [<strong> AudioBank </strong>]: The created AudioBank object. Can be nil if loading the bank failed.

---

### createEvent

```lua
local api_result, fmod_result, event = dlm.audio.createEvent( name, bank )
```
<code>Client-Only</code> <br></br>

Creates an [AudioEvent](/modapis/DLM/Objects/AudioEvent) object from a GUID or event path.

:::info note
In order to be able to use an **event path** (e.g. <code>event:/xyz</code>), you must pass in the [AudioBank](/modapis/DLM/Objects/AudioBank) <br></br>
object containing the event **and** the given bank **must** have been loaded with a GUIDs.txt file. <br></br>
This is the recommended way of using custom audio. <br></br>
If either of these conditions is not fulfilled, creating the event will fail. <br></br> <br></br>

If your bank was loaded **without** a GUIDs.txt file, you have to use the GUID of the sound (e.g. <code>{4f84f5d2-5a6e-4bc7-89c7-8db8bec42f40}</code>) to create the event. <br></br>
If you are using a GUID to create an event, do **not** pass in a bank object, else the function will fail.
:::

<strong>Arguments:</strong> <br></br>

- <code>name</code> [<strong> string </strong>]: The GUID or event path (if using a bank with GUIDs.txt) of the event.
- <code>bank</code> [<strong> AudioBank </strong>]: The audio bank to load the event from. <strong>Only for event paths with GUIDs.txt!</strong>

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The custom API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>event</code> [<strong> AudioEvent </strong>]: The created AudioEvent object. Can be nil if creating the event failed.

---
