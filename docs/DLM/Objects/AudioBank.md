---
sidebar_position: 1
title: AudioBank
hide_title: true
sidebar-label: 'AudioBank'
---

<br></br>

## AudioBank

**Associated namespace:** [dlm.audio](/modapis/DLM/Static-Functions/dlm.audio)

An object representing an FMOD Audio Bank loaded with [dlm.audio.loadBank](/modapis/DLM/Static-Functions/dlm.audio#loadbank).

### getLoadingState

```lua
local api_result, fmod_result, fmod_loading_state = <AudioBank>:getLoadingState()
```
<code>Client-Only</code> <br></br>

Checks the loading state of the object's bank file. <br></br>
This can be used to determine whether an asynchronously loaded bank has finished loading or not.

<strong>Arguments:</strong> <br></br>

- <code>AudioBank</code> [<strong> AudioBank </strong>]: The AudioBank object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>fmod_loading_state</code> [<strong> int </strong>]: The bank loading state. See <code>dlm.constants.audio.fmod_loading_states</code>.

---

### isValid

```lua
local api_result, fmod_result, is_valid = <AudioBank>:isValid()
```
<code>Client-Only</code> <br></br>

Checks if the object's internal bank reference is valid or not.

<strong>Arguments:</strong> <br></br>

- <code>AudioBank</code> [<strong> AudioBank </strong>]: The AudioBank object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>is_valid</code> [<strong> boolean </strong>]: Whether the bank reference is valid or not.

---

### destroy

```lua
local api_result, fmod_result = <AudioBank>:destroy()
```
<code>Client-Only</code> <br></br>

Destroys the AudioBank object and unloads the bank file that belongs to it.

<strong>Arguments:</strong> <br></br>

- <code>AudioBank</code> [<strong> AudioBank </strong>]: The AudioBank object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---
