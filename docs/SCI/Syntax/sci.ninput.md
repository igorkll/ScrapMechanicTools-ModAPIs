---
sidebar_position: 5
title: sci.ninput
hide_title: true
sidebar-label: 'sci.ninput'
---

<br></br>

### sci.ninput

```lua
local numberInputs = sci.ninput()
local redNumberInputs = sci.ninput( "#ff0000" )
```

Gets the power value of all connected inputs and returns a table with them (Power is used by modpack's number logic)

If you pass nil in it checks all inputs and if you pass a color in it only checks the inputs with the same color.

<strong>Arguments:</strong> <br></br>

- <code>color</code> [<strong> string </strong>]: The color

<strong>Returns:</strong> <br></br>

- <code>modpacktable</code> [<strong> table </strong>]: All connected inputs.
---
