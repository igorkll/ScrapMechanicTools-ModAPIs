---
sidebar_position: 3
title: EventInstance
hide_title: true
sidebar-label: 'EventInstance'
---

<br></br>

## EventInstance

An object representing an instance of an [AudioEvent](/modapis/DLM/Objects/AudioEvent), which can be used for audio playback.

### start

```lua
local api_result, fmod_result = <EventInstance>:start()
```
<code>Client-Only</code> <br></br>

Starts playing the sound.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### stop

```lua
local api_result, fmod_result = <EventInstance>:stop( stopImmediate )
```
<code>Client-Only</code> <br></br>

Stops playing the sound and resets its playback position back to the start.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.
- <code>stopImmediate</code> [<strong> boolean </strong>]: Whether the sound should stop immediately or not. Defaults to false.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### getPlaybackState

```lua
local api_result, fmod_result, fmod_playback_state = <EventInstance>:getPlaybackState()
```
<code>Client-Only</code> <br></br>

Gets the current playback state of the event instance.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>fmod_playback_state</code> [<strong> int </strong>]: The playback state. See <code>dlm.constants.audio.fmod_playback_states</code>.

---

### setPaused

```lua
local api_result, fmod_result = <EventInstance>:setPaused( paused )
```
<code>Client-Only</code> <br></br>

Sets whether the instance is paused or not. <br></br>
A paused instance will not make any sound and its playback position will stay where it was at the time of pausing. <br></br>
When un-pausing an instance, it will continue playing from its current playback position.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.
- <code>paused</code> [<strong> boolean </strong>]: Whether the instance should be paused or not.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### getPaused

```lua
local api_result, fmod_result, paused = <EventInstance>:getPaused()
```
<code>Client-Only</code> <br></br>

Gets whether the instance is currently paused or not.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>paused</code> [<strong> boolean </strong>]: Whether the instance is paused or not. May be false if the function failed.

---

### setPitch

```lua
local api_result, fmod_result = <EventInstance>:setPitch( pitch )
```
<code>Client-Only</code> <br></br>

Sets the instance's pitch. <br></br>
The default instance pitch is 1.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.
- <code>pitch</code> [<strong> number </strong>]: The pitch.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### getPitch

```lua
local api_result, fmod_result, pitch = <EventInstance>:getPitch()
```
<code>Client-Only</code> <br></br>

Gets the instance's pitch.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>pitch</code> [<strong> number </strong>]: The pitch. May be -1 if the function failed.

---

### setPlaybackPosition

```lua
local api_result, fmod_result = <EventInstance>:setPlaybackPosition( position )
```
<code>Client-Only</code> <br></br>

Sets the instance's playback position in milliseconds.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.
- <code>position</code> [<strong> int </strong>]: The playback position.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### getPlaybackPosition

```lua
local api_result, fmod_result, position = <EventInstance>:getPlaybackPosition()
```
<code>Client-Only</code> <br></br>

Gets the instance's playback position in milliseconds.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>position</code> [<strong> int </strong>]: The playback position. May be -1 if the function failed.

---

### setVolume

```lua
local api_result, fmod_result = <EventInstance>:setVolume( volume )
```
<code>Client-Only</code> <br></br>

Sets the instance's volume level. <br></br>
The default volume level is 1. <br></br>
Values below this will lower the volume and values above will increase the volume. <br></br>
Note that very high volume may lead to distortion.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.
- <code>volume</code> [<strong> number </strong>]: The volume level.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### getVolume

```lua
local api_result, fmod_result, volume = <EventInstance>:getVolume()
```
<code>Client-Only</code> <br></br>

Gets the instance's current volume level.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>volume</code> [<strong> number </strong>]: The volume level. May be -1 if the function failed.

---

### setParameter

```lua
local api_result, fmod_result = <EventInstance>:setParameter( name, value, ignoreSeekSpeed )
```
<code>Client-Only</code> <br></br>

Sets a named parameter for the instance.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.
- <code>name</code> [<strong> string </strong>]: The parameter name.
- <code>value</code> [<strong> number </strong>]: The value.
- <code>ignoreSeekSpeed</code> [<strong> boolean </strong>]: Whether the value should be set immediately or not. Defaults to false.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---

### getParameter

```lua
local api_result, fmod_result, value = <EventInstance>:getParameter( name )
```
<code>Client-Only</code> <br></br>

Gets the value of a named parameter of the instance.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.
- <code>name</code> [<strong> string </strong>]: The parameter name.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>value</code> [<strong> number </strong>]: The value of the parameter. May be -1 if the function failed.

---

### isValid

```lua
local api_result, fmod_result, is_valid = <EventInstance>:isValid()
```
<code>Client-Only</code> <br></br>

Checks if the object's internal instance reference is valid or not.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.
- <code>is_valid</code> [<strong> boolean </strong>]: Whether the instance reference is valid or not.

---

### destroy

```lua
local api_result, fmod_result = <EventInstance>:destroy()
```
<code>Client-Only</code> <br></br>

Destroys the EventInstance object and releases the internal event reference belonging to it.

<strong>Arguments:</strong> <br></br>

- <code>EventInstance</code> [<strong> EventInstance </strong>]: The EventInstance object.

<strong>Returns:</strong> <br></br>

- <code>api_result</code> [<strong> int </strong>]: The API result code. See <code>dlm.constants.audio.api_results</code>.
- <code>fmod_result</code> [<strong> int </strong>]: The FMOD result code. See <code>dlm.constants.audio.fmod_results</code>.

---
