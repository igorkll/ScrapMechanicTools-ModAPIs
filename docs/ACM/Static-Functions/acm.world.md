---
sidebar_position: 9
title: ACM.world
hide_title: true
sidebar-label: 'ACM.world'
---

<br></br>

## ACM.world

The <code>world</code> library contains functions related to the game world.

### loadWorld

```lua
ACM.world.loadWorld( name, creations, saveMapData )
```
<code>Server-Only</code> <br></br>

:::caution warning
This is a very experimental function and may not always work as expected.
:::

Loads a world by its name from the terrain selector list.

If a table of creation blueprint strings is given, those creations will be spawned in the
world once it has finished loading.

If <code>saveMapData</code> is true, all creations in the map will be saved upon loading the world.

:::caution warning
The <code>creations</code> table is a list of <strong>blueprint strings</strong> exported with [exportToString](https://scrapmechanictools.com/lua/Game-Script-Environment/Static-Functions/sm.creation#exporttostring) <strong>with transforms enabled!</strong> <br></br>
Any other type of data may cause unexpected behavior or errors.
:::

<strong>Arguments:</strong> <br></br>

- <code>name</code> [<strong> string </strong>]: The name of the world in the terrain selector (e.g. "Flat World").
- <code>creations</code> [<strong> table </strong>]: A table of exported blueprint strings <strong>with transforms enabled</strong>.
- <code>saveMapData</code> [<strong> bool </strong>]: Whether the map creations should be saved upon loading the world or not.

---

