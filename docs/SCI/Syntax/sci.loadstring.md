---
sidebar_position: 16
title: sci.loadstring()
hide_title: true
sidebar-label: 'sci.loadstring()'
---

<br></br>

### sci.loadstring()

```lua
sci.loadstring( "a('Hello World!')", {a = print})()
```

<blockquote> <strong>NOTE: </strong>This function is not tested by the creator of <strong>SCI</strong></blockquote>

Loads a string.

<strong>Arguments:</strong> <br></br>

- <code>code</code> [<strong> string </strong>]: The code to run.
- <code>env</code> [<strong> table | nil </strong>]: The custom enviroment.

<strong>Returns:</strong> <br></br>

- <code>Function</code> [<strong> Function </strong>]: The function.

---
