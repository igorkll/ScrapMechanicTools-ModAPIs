---
sidebar_position: 2
title: Portal
hide_title: true
sidebar-label: 'Portal'
---

<br></br>

## Portal

The <code>Portal</code> object is a custom object created by the [createPortal](/ACM/Static-Functions/acm.portal#createportal) function. <br></br>
This object is used to control and update a portal in the game world.

### __type

```lua
<Portal>.__type = "Portal"
```
<strong>value type:</strong> <code>string</code>

This value defines the type of the object.
<strong>Do not modify this value!</strong>

---

### __id

```lua
<Portal>.__id = <Uuid>
```
<strong>value type:</strong> <code>Uuid</code>

This value is the unique UUID of the portal. <br></br>
This is used internally to identify the portal.

<strong>Do not modify this value!</strong>

---

### update

```lua
<Portal>:update( position, rotation )
```
<code>Server-Only</code> <br></br>

Updates the portal's position and/or rotation. <br></br>
To update only one of the values, simply pass <code>nil</code> for the other one.

:::caution warning
This function uses the network to syncronize data with other players. <br></br>
Because of this, this function should only be called when necessary, to avoid generating lag.
:::

:::info note
Updating a portal takes one game tick.

It may take one or more tick(s) for the updated portal data to be syncronized to other clients.
:::

<strong>Arguments:</strong> <br></br>

- <code>position</code> [<strong> Vec3/nil </strong>]: The new world position.
- <code>rotation</code> [<strong> Quat/nil </strong>]: The new world rotation.

---

### link

```lua
<Portal>:link( portal )
```
<code>Server-Only</code> <br></br>

Links the portal to another portal, connecting the two portals together. <br></br>
If an object enters one of two linked portals, it will be teleported to the other one.

If the given portals are already linked, the linking will fail without generating an error. <br></br>
If one of the given portals is already linked to a different portal, that link will be <br></br>
voided and the portal in question will be re-linked to the other one. <br></br>

If linking the portal fails, a warning may be logged and this function will return false.

<strong>Arguments:</strong> <br></br>

- <code>portal</code> [<strong> Portal </strong>]: The new world position.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the link was successful or not.

---

### unlink

```lua
<Portal>:unlink()
```
<code>Server-Only</code> <br></br>

Un-links the portal, if it is linked to another portal. <br></br>
This will close the connection between the two portals - objects that enter <br></br>
either of the two portals after calling this will not be teleported anymore.

This returns false if the portal was not linked to another portal.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether closing the link was successful or not.

---

### isLinked

```lua
<Portal>:isLinked()
```
<code>Server-Only</code> <br></br>

Checks if the portal is currently linked to another portal.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the portal is linked or not.

---

### exists

```lua
<Portal>:exists()
```
<code>Server-Only</code> <br></br>

Checks if the portal exists. <br></br>
A portal may stop existing if a different world/terrain is loaded (e.g. with [loadWorld](/ACM/Static-Functions/acm.world#loadworld)). <br></br>
If a portal does not exist, calling any functions on it will fail.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the portal exists or not.

---

### destroy

```lua
<Portal>:destroy()
```
<code>Server-Only</code> <br></br>

Destroys the portal. <br></br>
This should be used if the portal is not used anymore.

---
