---
sidebar_position: 7
title: ACM.util
hide_title: true
sidebar-label: 'ACM.util'
---

<br></br>

## ACM.util

The <code>util</code> library contains various useful utility functions.

### splitString

```lua
ACM.util.splitString( str, sep )
```

Splits a given string by the given separator. <br></br>
If no separator is given, this splits the string every character.

<strong>Arguments:</strong> <br></br>

- <code>str</code> [<strong> string </strong>]: The string to split.
- <code>sep</code> [<strong> string/nil </strong>]: The separator, or nil to separate every character.

<strong>Returns:</strong> <br></br>

- [<strong> table </strong>]: The list of string segments.

---

### clamp

```lua
ACM.util.clamp( value, min, max )
```

Clamps any number to any given number range.

<strong>Arguments:</strong> <br></br>

- <code>value</code> [<strong> number </strong>]: The number to clamp.
- <code>min</code> [<strong> number </strong>]: The minimum value.
- <code>max</code> [<strong> number </strong>]: The maximum value.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The clamped number.

---

### isWithinBounds

```lua
ACM.util.isWithinBounds( position, center, bounds )
```

Checks if a given position is within a given box area.

<strong>Arguments:</strong> <br></br>

- <code>position</code> [<strong> Vec3 </strong>]: The position to check.
- <code>center</code> [<strong> Vec3 </strong>]: The center of the box area.
- <code>bounds</code> [<strong> Vec3 </strong>]: The "diameter" of the area.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the given position is within the given bounds or not.

---

### mirrorVector

```lua
ACM.util.mirrorVector( vec, normal )
```

Mirrors a (normalized!) direction vector around an axis.

<strong>Arguments:</strong> <br></br>

- <code>vec</code> [<strong> Vec3 </strong>]: The direction to mirror.
- <code>normal</code> [<strong> Vec3 </strong>]: The axis to mirror around.

<strong>Returns:</strong> <br></br>

- [<strong> Vec3 </strong>]: The mirrored vector.

---

### isServer

```lua
ACM.util.isServer()
```

Checks if the code is running on the server or client. <br></br>
Unlike <code>sm.isHost</code> or <code>sm.isServerMode</code>, this function reliably works on the host.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the code is running on the server or not.

---

### type

```lua
ACM.util.type( any )
```

Checks the type of any Lua object.

Unlike the default <code>type</code> function in Lua, this one is modified to properly recognize <br></br>
custom objects (such as lasers) for what they are (e.g. "Laser" instead of "table").

It is recommended to load this function into a variable in your mod, using <code>customType = ACM.util.type</code>.

You can also replace the default <code>type</code> function by using <code>type = ACM.util.type</code>.

<strong>Arguments:</strong> <br></br>

- <code>any</code> [<strong> any </strong>]: The object/value to check.

<strong>Returns:</strong> <br></br>

- [<strong> string </strong>]: The type of the given object.

---

### debugPrint

```lua
ACM.util.debugPrint( ... )
```

Prints data to the debug console.

:::info note
This function only works if ACM is in [debug mode](/ACM/Static-Functions/acm.mod#enabledebugmode)! <br></br>
If debug mode is disabled, this function does nothing.
:::

<strong>Arguments:</strong> <br></br>

- <code>...</code> [<strong> any </strong>]: The data to print.

---
