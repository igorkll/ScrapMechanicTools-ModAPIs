---
sidebar_position: 1
title: Laser
hide_title: true
sidebar-label: 'Laser'
---

<br></br>

## Laser

The <code>Laser</code> object is a custom object created by the [createLaser](/ACM/Static-Functions/acm.laser#createlaser) function. <br></br>
This object is used to create and control a laser beam.

### __type

```lua
<Laser>.__type = "Laser"
```

<strong>value type:</strong> <code>string</code>

This value defines the type of the object.
<strong>Do not modify this value!</strong>

---

### active

```lua
<Laser>.active = true/false
```

<strong>value type:</strong> <code>bool</code>

This value represents whether the clientside laser beam effect is currently active or not. <br></br>
This can be used to determine whether [cl_stop](#cl_stop) should be called or not.

<strong>Do not modify this value!</strong>

---

### sv_fire

```lua
<Laser>:sv_fire( position, direction, range, simple, scale, useSphereCast )
```
<code>Server-Only</code> <br></br>

Fires the laser on the server. <br></br>
The serverside laser beam is what calculates interactions with other objects, like activating laser receivers, <br></br>
getting the hit shapes, etc.

A <code>scale</code> value of 1 creates a laser with default size.

If <code>simple</code> is true, the laser will behave exactly the same as the laser fired by the existing 'Laser' interactable. <br></br>
This means that any registered laser receivers will be activated if they are hit by the laser beam <br></br>
and have the same color as the laser.

If <code>simple</code> is false, this function will return a table with data about the objects that were hit by the laser. <br></br>
The data is structured like this:

```lua
{
	{
		shape = <Shape>, --The first shape that was hit
		hitPos = <Vec3>, --The world hit position on the shape
		hitNormal = <Vec3> --The world normal vector of the hit direction
	},
	{
		shape = <Shape>, --The second shape that was hit
		hitPos = <Vec3>, --...etc.
		hitNormal = <Vec3>
	},
	... --etc.
}
```

:::info note
Calling this function will fire the laser <strong>once</strong>. <br></br>
To have a "constant" laser beam, you need to call this every tick.
:::

<strong>Arguments:</strong> <br></br>

- <code>Laser</code> [<strong> Laser </strong>]: The Laser object.
- <code>position</code> [<strong> Vec3 </strong>]: The laser beam's start position.
- <code>direction</code> [<strong> Vec3 </strong>]: The laser beam's direction.
- <code>range</code> [<strong> number </strong>]: The range of the beam in blocks.
- <code>simple</code> [<strong> bool </strong>]: Whether the laser is fired in 'simple' mode or not. Defaults to false.
- <code>scale</code> [<strong> number </strong>]: The thickness scale of the laser. Only used when useSphereCast is true. Defaults to 1.
- <code>useSphereCast</code> [<strong> bool </strong>]: Whether the laser uses a spherecast or raycast. Defaults to raycast.

<strong>Returns:</strong> <br></br>

- [<strong> table/nil </strong>]: The table of laser hit data, or nil if fired in 'simple' mode.

---

### cl_fire

```lua
<Laser>:cl_fire( position, direction, range, color, scale, useSphereCast )
```
<code>Client-Only</code> <br></br>

Fires the laser on the client. <br></br>
The clientside laser beam is what handles the graphical part of the laser - mainly generating <br></br>
the actual, visible laser beam in the game world.

A <code>scale</code> value of 1 creates a laser with default size.

In ACM V2_0.8.0 and later, this function returns laser hit data. <br></br>
The data structure is the same as the one returned by [sv_fire](#sv_fire).

:::info note
You should make sure that you fire the clientside laser beam with the same <br></br>
position and direction parameters as the serverside laser beam, to ensure <br></br>
an accurate representation of where the actual (serverside) beam is going.

Calling this function will fire the laser <strong>once</strong>. <br></br>
To have a "constant" laser beam, you need to call this every tick.
:::

<strong>Arguments:</strong> <br></br>

- <code>Laser</code> [<strong> Laser </strong>]: The Laser object.
- <code>position</code> [<strong> Vec3 </strong>]: The laser beam's start position.
- <code>direction</code> [<strong> Vec3 </strong>]: The laser beam's direction.
- <code>range</code> [<strong> number </strong>]: The range of the beam in blocks.
- <code>color</code> [<strong> Color </strong>]: The laser color. Defaults to <code>sm.color.new( "#df7f01" )</code>.
- <code>scale</code> [<strong> number </strong>]: The thickness scale of the laser. Defaults to 1.
- <code>useSphereCast</code> [<strong> bool </strong>]: Whether the laser uses a spherecast or raycast. Defaults to raycast.

<strong>Returns:</strong> <br></br>

- [<strong> table </strong>]: The table of laser hit data.

---

### cl_stop

```lua
<Laser>:cl_stop()
```
<code>Client-Only</code> <br></br>

Stops the laser beam.

If you want your laser to stop firing (for example if its interactable receives no logic input), <br></br>
you need to call this function once to make the laser beam disappear from the world.

<strong>Arguments:</strong> <br></br>

- <code>Laser</code> [<strong> Laser </strong>]: The Laser object.

---

### cl_destroy

```lua
<Laser>:cl_destroy()
```
<code>Client-Only</code> <br></br>

Destroys the laser's beam effects. <br></br>
This should be called if the laser is no longer being used, for example in the <code>client_onDestroy</code> callback.

<strong>Arguments:</strong> <br></br>

- <code>Laser</code> [<strong> Laser </strong>]: The Laser object.

---
