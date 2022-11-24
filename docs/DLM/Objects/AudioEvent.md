---
sidebar_position: 2
title: AudioEvent
hide_title: true
sidebar-label: 'AudioEvent'
---

<br></br>

## AudioEvent

**Associated namespace:** [dlm.audio](/modapis/DLM/Static-Functions/dlm.audio) <br></br>
**Associated object type:** [EventInstance](/modapis/DLM/Objects/EventInstance)

An object representing an audio event created with [dlm.audio.createEvent](/modapis/DLM/Static-Functions/dlm.audio#createevent).

### getLength

```lua
local api_result, fmod_result, length = <AudioEvent>:getLength()
```
<code>Client-Only</code> <br></br>

Gets the duration of the event in milliseconds.

<strong>Arguments:</strong> <br></br>

- <code>AudioEvent</code> [<strong> AudioEvent </strong>]: The AudioEvent object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>length</code> [<strong> int </strong>]: The duration of the event in milliseconds. May be -1 if the function failed.

---

### createInstance

```lua
local api_result, fmod_result, EventInstance = <AudioEvent>:createInstance()
```
<code>Client-Only</code> <br></br>

Creates an [EventInstance](/modapis/DLM/Objects/EventInstance) object from this event. <br></br>
This EventInstance can be used to play the sound in the event.

<strong>Arguments:</strong> <br></br>

- <code>AudioEvent</code> [<strong> AudioEvent </strong>]: The AudioEvent object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>EventInstance</code> [<strong> EventInstance </strong>]: The created EventInstance object. May be nil if the function failed.

---

### isValid

```lua
local api_result, fmod_result, is_valid = <AudioEvent>:createInstance()
```
<code>Client-Only</code> <br></br>

Checks whether the object's internal event reference is valid or not.

<strong>Arguments:</strong> <br></br>

- <code>AudioEvent</code> [<strong> AudioEvent </strong>]: The AudioEvent object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>is_valid</code> [<strong> boolean </strong>]: Whether the event reference is valid or not.

---

### destroy

```lua
local api_result, fmod_result = <AudioEvent>:destroy()
```
<code>Client-Only</code> <br></br>

Destroys the AudioEvent object and releases the internal event reference that belongs to it.

<strong>Arguments:</strong> <br></br>

- <code>AudioEvent</code> [<strong> AudioEvent </strong>]: The AudioEvent object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

