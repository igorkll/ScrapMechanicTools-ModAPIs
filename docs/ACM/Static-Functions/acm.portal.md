---
sidebar_position: 10
title: ACM.portal
hide_title: true
sidebar-label: 'ACM.portal'
---

<br></br>

## ACM.portal

The <code>portal</code> library contains functions for creating and managing portals. <br></br>
A portal is a special collider area in the world. Usually two of these colliders are linked together.<br></br>
If any object enters one of these colliders, the object is "teleported" to the other collider <br></br>
that the first one is linked to, while keeping its properties (like (angular) velocity).

:::caution note
This library is experimental and not finished! <br></br>
Functions in the library and/or behavior of the library or the portals may change!
:::

### createPortal

```lua
ACM.portal.createPortal( position, rotation, color )
```
<code>Server-Only</code> <br></br>

Creates a portal at the given position/rotation with the given color.

:::caution warning
This function uses the network to syncronize data with other players. <br></br>
Because of this, this function should only be called when necessary, to avoid generating lag.
:::

:::info note
Only one portal with a given color can exist at any time.

Creating the portal takes one game tick. After creating the portal, you can get and control it using [getPortalByColor](#getportalbycolor).

It may take one or more tick(s) for the created portal to be syncronized to other clients. <br></br>
Until this has happened, [hasPortalByColor](#hasportalbycolor) will return false.
:::

<strong>Arguments:</strong> <br></br>

- <code>position</code> [<strong> Vec3 </strong>]: The world position of the portal.
- <code>rotation</code> [<strong> Quat </strong>]: The world rotation of the portal.
- <code>color</code> [<strong> Color </strong>]: The color of the portal.

---

### getPortalByColor

```lua
ACM.portal.getPortalByColor( color )
```
<code>Server-Only</code> <br></br>

Returns a [Portal](/ACM/Objects/portal) object representing the portal with the given color. <br></br>
If no portal with the given color exists, this returns nil.

:::info note
After calling [createPortal](#createportal), it will take one game tick until the portal is available.
:::

<strong>Arguments:</strong> <br></br>

- <code>color</code> [<strong> Color </strong>]: The color of the portal.

<strong>Returns:</strong> <br></br>

- [<strong> Portal </strong>]: The portal.

---

### hasPortalByColor

```lua
ACM.portal.hasPortalByColor( color )
```
<code>Client-Only</code> <br></br>

Checks if a portal of the given color exists or not.

:::info note
After calling [createPortal](#createportal), it will take one or more game tick(s) until the created portal is syncronized with clients. <br></br>
During this time, this function will return false for that portal's color.
:::

<strong>Arguments:</strong> <br></br>

- <code>color</code> [<strong> Color </strong>]: The color.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether a portal with the given color exists already or not.

---