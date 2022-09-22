---
sidebar_position: 8
title: ACM.event
hide_title: true
sidebar-label: 'ACM.event'
---

<br></br>

## ACM.event

The <code>event</code> library contains functions related to game events.

### addEventListener

```lua
ACM.event.addEventListener( object )
```
<code>Server-Only</code> <br></br>

Registers an object as event listener. <br></br>
As the name says, this allows the given object's script to "listen" to game events when they trigger. <br></br>
To use this, you must define a <code>server_onGameEvent</code> callback in your object's Lua script. <br></br>
This callback will be called when various events trigger in the game (for example when a projectile is fired).

<strong>The callback receives:</strong>

- <code>self</code> [<strong> table </strong>]: The object instance.
- <code>eventData</code> [<strong> table </strong>]: A table containing event data.

```lua title="eventData table structure"
{
	name = "eventName",	--The name of the event
	data = any			--Any additional event data, for example onProjectile function parameters (see the list below)
}
```

Some of the available events are:

```
"sv_ev_onWorldEvent": This event fires when certain things happen in the game world.
	The event data and possible types for this event look like this:
		{
			type = "onProjectileFire",	Called when a projectile is fired in the world.
			params = {
				firePos,		The fire position
				fireVelocity,	The projectile velocity
				name,			The name of the projectile (deprecated)
				attacker,		The source of the projectile
				projectileUuid	The UUID of the projectile
			}
		}

		{
			type = "onProjectile",	Called when a projectile hits something in the world.
			params = {
				hitPos,				The projectile hit position
				hitTime,			The time the projectile spent flying
				hitVelocity,		The projectile velocity
				name,				The projectile name (deprecated)
				attacker,			The source of the projectile
				damage,				The damage that the projectile does
				userData,			Any custom projectile data
				hitNormal,			The hit normal vector of the hit direction
				target,				The object that was hit
				projectileUuid		The uuid of the projectile
			}
		}

		{
			type = "onMelee",	Called when a melee attack (e.g. hammer) hits something in the world.
			params = {
				position,		The attack hit position
				attacker,		The source of the attack
				target,			The object that was hit
				damage,			The damage that the attack does
				power,			The physical impact power of the hit
				direction,		The direction of the attack
				normal			The normal vector at the hit position
			}
		}

		{
			type = "onInteractableCreated",	Called when an interactable is created in the world
			params = {
				interactable		The created interactable
			}
		}

		{
			type = "onInteractableDestroyed",	Called when an interactable is destroyed in the world
			params = {
				interactable		The destroyed interactable
			}
		}


"sv_ev_onChatCommand": This event fires when a custom chat command is used.
	The event data for this event only contains normal chat command callback values.
	{
		"/commandName",		The name of the command
		"parameter1",		Any extra command parameter
		"parameter2",		second command parameter
		"parameter3"		...etc. etc.
	}
```

<strong>Arguments:</strong> <br></br>

- <code>object</code> [<strong> scriptedObject </strong>]: Any Lua scripted userdata object, e.g. Interactable, Tool, Unit, etc.

---

### removeEventListener

```lua
ACM.event.removeEventListener( object )
```
<code>Server-Only</code> <br></br>

Un-registers an event listener object. <br></br>
After calling this, the given object will no longer receive any game events in its <code>server_onGameEvent</code> callback. <br></br>
It is recommended to call this in the object's <code>server_onDestroy</code> callback, but it is not required.

<strong>Arguments:</strong> <br></br>

- <code>object</code> [<strong> scriptedObject </strong>]: Any Lua scripted userdata object, e.g. Interactable, Tool, Unit, etc.

---
