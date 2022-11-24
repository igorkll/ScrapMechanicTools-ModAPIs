---
sidebar_position: 1
title: Standard Functions
hide_title: true
sidebar-label: 'Standard Functions'
---

<br></br>

## Standard Functions

Listed below are some standard Lua functions that were disabled by Axolot, which are re-enabled by DLM.

### getmetatable

```lua
local mt = getmetatable( obj )
```

Returns the [metatable](https://www.lua.org/pil/13.html) of the given object. <br></br>
Please refer to official Lua documentation for details about metatables.

<strong>Arguments:</strong> <br></br>

- <code>obj</code> [<strong> any </strong>]: The object to get the metatable of.

<strong>Returns:</strong> <br></br>

- <code>mt</code> [<strong> table/nil </strong>]: The object's metatable or nil, if there is none.

---

### setmetatable

```lua
local tbl = setmetatable( tbl, mt )
```

Sets the [metatable](https://www.lua.org/pil/13.html) of the given table to the given metatable. <br></br>
Please refer to official Lua documentation for details about metatables.

<strong>Arguments:</strong> <br></br>

- <code>tbl</code> [<strong> table </strong>]: The table of which to set the metatable.
- <code>mt</code> [<strong> table </strong>]: The metatable to set.

<strong>Returns:</strong> <br></br>

- <code>tbl</code> [<strong> table </strong>]: The given table, with the new metatable set.

---


