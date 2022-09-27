---
sidebar_position: 13
title: ACM.loot
hide_title: true
sidebar-label: 'ACM.loot'
---

<br></br>

## ACM.settings

The <code>loot</code> library contains functions related to loot items that can be picked up by players.

### addToolProxyItem

```lua
ACM.loot.addToolProxyItem( toolUuid, shapeUuid )
```
<code>Client-Only</code> <br></br>

Sets the [Shape](https://scrapmechanictools.com/lua/Game-Script-Environment/Userdata/Shape) (a block or part) to be displayed in the world when the given tool is dropped by a player. <br></br>
If a tool does not have a registered proxy item, the loot item will be invisible when the tool is dropped.

<strong>Arguments:</strong> <br></br>

- <code>toolUuid</code> [<strong> Uuid </strong>]: The uuid of the tool.
- <code>shapeUuid</code> [<strong> Uuid </strong>]: The uuid of the shape that should be displayed as the loot item.

---





