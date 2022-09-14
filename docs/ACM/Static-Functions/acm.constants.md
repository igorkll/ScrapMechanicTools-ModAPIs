---
sidebar_position: 2
title: ACM.constants
hide_title: true
sidebar-label: 'ACM.constants'
---

<br></br>

## ACM.constants

Contains various static values.

### version

```lua
ACM.constants.version = "0.8.0"
```

Contains the current version of the ACM mod as a string, e.g. <code>"0.8.0"</code>.

- <strong>type:</strong> <code>string</code>
- <strong>value:</strong> The current mod version.

---

### mapStates

```lua
ACM.constants.mapStates = {
	developing = 1,
	finalized = 2,
	finalized_not_started = 3,
	started_test = 4,
	started_play = 5,
	finished = 6
}
```

Contains the various states used to control the state of the map/challenge.

- <strong>type:</strong> <code>table</code>
- <strong>value:</strong> The states used to control the map/challenge level.

Explanation of the different states:

- <code>developing:</code> The map is currently being developed/built. <br></br>
	All creator-only features, like the <code>/settings</code> command, are available. <br></br>
	This is the default state of the map when creating a new world.

- <code>finalized:</code> The map was finalized using the <code>finalize</code> button in the settings menu. <br></br>
	This state is deprecated and mainly only exists for backwards compatibility. <br></br>
	It is used temporarily when finalizing the map.

- <code>finalized_not_started:</code> The map is finalized and the challenge has not started. <br></br>
	All creator-only features, such as the <code>/settings</code> command, are <strong>disabled</strong>. <br></br>
	Also, this can not be reversed - A finalized map is not meant to be un-finalized.

- <code>started_test:</code> The map is not finalized and the challenge is running in <strong>test mode</strong>.

- <code>started_play:</code> The map is finalized and the challenge is running in <strong>play mode</strong>.

- <code>finished:</code> The challenge is finished, e.g. the player has reached the end of the map.

---






