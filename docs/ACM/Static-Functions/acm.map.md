---
sidebar_position: 6
title: ACM.map
hide_title: true
sidebar-label: 'ACM.map'
---

<br></br>

## ACM.map

The <code>map</code> library contains functions to interact with the map and challenge/map state system.

### save

```lua
ACM.map.save( name, addToSavepoints, override )
```
<code>Server-Only</code> <br></br>

Creates a save state of the map. <br></br>
This save state saves all players and creations in the world, their current position, rotation, active state, etc. <br></br>
It can be loaded using [map.load](#load) to restore the map to the saved state.

If <code>addToSavepoints</code> is true, players can access the created save point in the Save Point interactable. <br></br>
If <code>override</code> is true, any existing saves with the same name will be overwritten.

:::info note
The maximum amount of save states for each category is limited to 5.

If the save limit is reached or the save already exists and <code>override</code> is false, <br></br>
creating the save state will fail.
:::

<strong>Arguments:</strong> <br></br>

- <code>name</code> [<strong> string </strong>]: The name of the save state.
- <code>addToSavepoints</code> [<strong> bool </strong>]: Whether the save should be available in the Save Point or not.
- <code>override</code> [<strong> bool </strong>]: Whether an existing save should be overwritten or not.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the save was created successfully or not.

---

### load

```lua
ACM.map.load( name, disableSpawnpoints )
```
<code>Server-Only</code> <br></br>

Loads a saved state. <br></br>
This will undo any changes made to the map after creating the save state and restore it <br></br>
to the state it was in when it was saved.

If <code>disableSpawnpoints</code> is true, all spawn point interactables will be disabled for 2.5 seconds when loading <br></br>
the state. This is to prevent players from being placed on the spawn point(s) when loading a save state.

This function first checks the "hidden" save states, then the save states in the Save Point interactable.

Returns false if there was no save with the given name.

<strong>Arguments:</strong> <br></br>

- <code>name</code> [<strong> string </strong>]: The name of the save state.
- <code>disableSpawnpoints</code> [<strong> bool </strong>]: Whether spawn points should be disabled or not. Defaults to true.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the save was loaded successfully or not.

---

### getMapState

```lua
ACM.map.getMapState()
```
<code>Server-Only</code> <br></br>

Returns the current [map state](/ACM/Static-Functions/acm.constants#mapstates). <br></br>
If this function returns <code>"unknown"</code>, something went very wrong.

<strong>Returns:</strong> <br></br>

- [<strong> string </strong>]: The current map state.

---

### finalize

```lua
ACM.map.finalize()
```
<code>Server-Only</code> <br></br>

Finalizes the map. <br></br>
This permanently disables all creator-only features (like the <code>/settings</code> command). <br></br>
It also saves the current state of the map, which is the state that [restartChallenge](#restartchallenge) will load if used.

:::info note
The map can only be finalized if the challenge is <strong>not</strong> running.
:::

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the map was successfully finalized or not.

---

### startChallengeTest

```lua
ACM.map.startChallengeTest()
```
<code>Server-Only</code> <br></br>

Starts the challenge in <strong>test mode</strong>. <br></br>
This is normally used while the map is not finalized, to test the challenge. <br></br>
In this mode, the challenge can only be stopped by using [resetChallenge](#resetchallenge). <br></br>
If the challenge is stopped in this mode, the map will be reset to the state <br></br>
it was in when this function was called.

:::info note
Test mode can only be activated if the challenge is <strong>not</strong> running and the map is <strong>not</strong> finalized.
:::

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the challenge was successfully started or not.

---

### startChallenge

```lua
ACM.map.startChallenge()
```
<code>Server-Only</code> <br></br>

Starts the challenge in <strong>play mode</strong>. <br></br>
This is normally used to start the challenge after it is finalized, to play it. <br></br>
In this mode, the challenge can be stopped using [resetChallenge](#resetchallenge) and [restartChallenge](#restartchallenge).

If the challenge is stopped using [restartChallenge](#restartchallenge), the map will be reset to <br></br>
the state it was in when it was finalized.

If the challenge is stopped using [resetChallenge](#resetchallenge), the map will be reset to <br></br>
the state it was in when this function was called.

:::info note
Play mode can only be activated if the challenge is <strong>not</strong> running and the map is finalized and <strong>not</strong> finished.
:::

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the challenge was successfully started or not.

---

### resetChallenge

```lua
ACM.map.resetChallenge()
```
<code>Server-Only</code> <br></br>

Resets the level and stops the challenge.

If used in [test mode](#startchallengetest), this resets the map to the state it was in before <br></br>
the challenge test was started.

If used in [play mode](#startchallenge), this resets the map to the state it was in before <br></br>
the challenge was started.

:::info note
This only works if the challenge is running.
:::

---

### restartChallenge

```lua
ACM.map.restartChallenge()
```
<code>Server-Only</code> <br></br>

Resets the level and stops the challenge.

This function is only available in [play mode](#startchallenge).

When used, this resets the map to the state it was in when it was finalized.

:::info note
This only works if the challenge is running and the map is finalized.
:::

---

### finishChallenge

```lua
ACM.map.finishChallenge()
```
<code>Server-Only</code> <br></br>

Finishes the challenge level.

:::info note
This only works if the challenge is running and not finished.
:::

---

### getLevelCreations

```lua
ACM.map.getLevelCreations()
```
<code>Server-Only</code> <br></br>

Returns a list of JSON strings representing all creations in the world. <br></br>
The data contains transform data, e.g. position, rotation, bearing rotation, etc.

<strong>Returns:</strong> <br></br>

- [<strong> table </strong>]: The table of level creations, as JSON strings.

---
