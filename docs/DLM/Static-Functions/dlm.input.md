---
sidebar_position: 8
title: dlm.input
hide_title: true
sidebar-label: 'dlm.input'
---

<br></br>

## dlm.input

The Input library provides a way to get keyboard and mouse input. <br></br>
An example of this function being used can be found in the [DLM Code Examples mod](https://steamcommunity.com/sharedfiles/filedetails/?id=2888172201).

### getKeyState

```lua
local state = dlm.input.getKeyState( keyCode )
```

Gets the current state (pressed/not pressed) of a keyboard key or mouse button.

See [dlm.constants.input](/modapis/DLM/Static-Functions/dlm.constants#input) and the [Virtual-Key Codes list](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes) for a list of key codes.

<strong>Arguments:</strong> <br></br>

- <code>keyCode</code> [<strong> number </strong>]: The key code for the key to check, e.g. <code>dlm.constants.input.enter</code>.

<strong>Returns:</strong> <br></br>

- <code>state</code> [<strong> boolean </strong>]: Whether the checked key is currently pressed or not.

---
