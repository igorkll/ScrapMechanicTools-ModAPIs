---
sidebar_position: 4
title: ACM.laser
hide_title: true
sidebar-label: 'ACM.laser'
---

<br></br>

## ACM.laser

The <code>laser</code> library contains functions related to lasers.

### createLaser

```lua
ACM.laser.createLaser()
```

Creates and returns a [Laser](/ACM/Objects/laser) object. <br></br>
This object is used for firing a laser beam in the world.

:::info note
The default Lua <code>type</code> function will identify the returned <code>Laser</code> object as <code>table</code>. <br></br>
ACM provides a modified <code>type</code> function that recognizes these custom types properly. See [ACM.util.type](/ACM/Static-Functions/acm.util#type). <br></br>
It is recommended to use this function instead of the default <code>type</code> function when working with ACM objects.
:::

<strong>Returns:</strong> <br></br>

- [<strong> table/Laser </strong>]: The created Laser object.

---

### addActiveObject

```lua
ACM.laser.addActiveObject( object )
```
<code>Server-Only</code> <br></br>

Sets an interactable to be activated by the laser manager.

:::info note
If you set this once, the interactable will be de-activated after one tick. <br></br>
To keep an interactable active longer, you will need to set it every tick.

The interactable must be a [registered laser receiver](#addreceiver), other interactables cannot be activated.

Note that the laser manager already checks if the object is already active or not, to prevent unnecessary networking. <br></br>
This means that, for this function, you should <strong>not</strong> implement such a check yourself, as that may interfere with the <br></br>
laser manager and cause unexpected behavior.
:::

<strong>Arguments:</strong> <br></br>

- <code>object</code> [<strong> Interactable </strong>]: The interactable to activate.

---

### addReceiver

```lua
ACM.laser.addReceiver( object )
```
<code>Server-Only</code> <br></br>

Registers an interactable as a Laser Receiver. <br></br>
A registered Laser Receiver can be activated using [addActiveObject](#addactiveobject) <br></br>
Also registers the part's UUID so it can be recognized by [getShapeType](#getshapetype).

<strong>Arguments:</strong> <br></br>

- <code>object</code> [<strong> Interactable </strong>]: The interactable to register. <br></br>
	Must be of 'scripted' type, e.g. 'hardcoded' objects like normal logic will not work.

---

### removeReceiver

```lua
ACM.laser.removeReceiver( object )
```
<code>Server-Only</code> <br></br>

Un-registers a Laser Receiver interactable from the laser manager. <br></br>
This should be done in the script's <code>server_onDestroy</code> callback. <br></br>
Note that, while it is recommended to use this, it is not required - a laser receiver <br></br>
that does not exist will automatically be removed in the next game tick.

<strong>Arguments:</strong> <br></br>

- <code>object</code> [<strong> Interactable </strong>]: The interactable to un-register. <br></br>

---

### getShapeType

```lua
ACM.laser.getShapeType( object )
```
<code>Server-Only</code> <br></br>

Returns the laser-related type of the given shape.

Returned types can be:

- <code>"source"</code> - A laser source, for example the ACM Laser interactable.
- <code>"receiver"</code> - A laser receiver, which should be activated when hit by a laser.
- <code>"reflector"</code> - An object that reflects the laser like a mirror, for example a glass block.
- <code>"unknown"</code> - None of the above, object has nothing to do with the lasers in any way.

<strong>Arguments:</strong> <br></br>

- <code>object</code> [<strong> Shape </strong>]: The shape to check. <br></br>

<strong>Returns:</strong> <br></br>

- [<strong> string </strong>]: The laser-related shape type.

---
