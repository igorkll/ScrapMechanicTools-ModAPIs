---
sidebar_position: 4
title: sci.input
hide_title: true
sidebar-label: 'sci.input'
---

<br></br>

### sci.input

```lua
local inputActive = sci.input()
local redInputActive = sci.input( "#ff0000" )
```

Gets the current logic input signal of the block, If any one of the connected inputs is active, it returns true, else false.

If you pass nil in it checks all inputs and if you pass a color in it only checks the inputs with the same color.

<strong>Arguments:</strong> <br></br>

- <code>color</code> [<strong> string </strong>]: The color

<strong>Returns:</strong> <br></br>

- <code>bool</code> [<strong> boolean </strong>]: If any one of the connected inputs is active, it returns true, else false.
---

