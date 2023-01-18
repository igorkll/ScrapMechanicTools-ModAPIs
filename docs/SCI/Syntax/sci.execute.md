---
sidebar_position: 17
title: sci.execute()
hide_title: true
sidebar-label: 'sci.execute()'
---

<br></br>

### sci.execute()

```lua
sci.execute( "a('Hello World!')", {a = print})
```

<blockquote> <strong>NOTE: </strong>This function is not tested by the creator of <strong>SCI</strong></blockquote>

Exactly like Loadstring but automaticly executes it.

<strong>Arguments:</strong> <br></br>

- <code>code</code> [<strong> string </strong>]: The code to run.
- <code>env</code> [<strong> table | nil </strong>]: The custom enviroment.
---
