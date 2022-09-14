---
sidebar_position: 12
title: ACM.settings
hide_title: true
sidebar-label: 'ACM.settings'
---

<br></br>

## ACM.settings

The <code>settings</code> table contains various smaller libraries that allow for changing various game settings.

## multiplayer

The <code>settings.multiplayer</code> library allows for interacting with multiplayer-related settings.

### getMaxPlayers

```lua
ACM.settings.multiplayer.getMaxPlayers()
```
<code>Server-Only</code> <br></br>

Returns the maximum amount of players allowed in the world. <br></br>
A value of 0 means that no limit is active.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The maximum player amount.

---

### setMaxPlayers

```lua
ACM.settings.multiplayer.setMaxPlayers( value )
```
<code>Server-Only</code> <br></br>

Sets the maximum amount of players allowed in the world. <br></br>
A value of 0 means that no limit is active.

<strong>Arguments:</strong> <br></br>

- <code>value</code> [<strong> number </strong>]: The maximum amount of players.

---

### getEnableNametags

```lua
ACM.settings.multiplayer.getEnableNametags()
```
<code>Server-Only</code> <br></br>

Checks if player nametags are enabled or disabled.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether name tags are enabled or not.

---

### setEnableNametags

```lua
ACM.settings.multiplayer.setEnableNametags( state )
```
<code>Server-Only</code> <br></br>

Enables or disables player nametags.

<strong>Arguments:</strong> <br></br>

- <code>state</code> [<strong> bool </strong>]: Whether nametags should be enabled or disabled.

---

## physics

The <code>settings.physics</code> library allows for interacting with physics-related settings.

### getPlayerGravity

```lua
ACM.settings.physics.getPlayerGravity()
```
<code>Server-Only</code> <br></br>

Returns the current player gravity setting. <br></br>
The default player gravity setting is 0.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The current player gravity setting.

---

### setPlayerGravity

```lua
ACM.settings.physics.setPlayerGravity( value )
```
<code>Server-Only</code> <br></br>

Sets the current player gravity value. <br></br>
The default value is 0.

<strong>Arguments:</strong> <br></br>

- <code>value</code> [<strong> number </strong>]: The player gravity value to set.

---

## health

The <code>settings.health</code> library allows for interacting with settings related to the health system.

### getEnableHealth

```lua
ACM.settings.health.getEnableHealth()
```
<code>Server-Only</code> <br></br>

Checks if the health system is enabled.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the health system is enabled or not.

---

### setEnableHealth

```lua
ACM.settings.health.setEnableHealth( state )
```
<code>Server-Only</code> <br></br>

Enables or disables the health system.

When the health system is disabled, players cannot take any form of damage, <br></br>
cannot be knocked out or otherwise be affected by any kind of attack. <br></br>
Also, the health bar will be hidden.

<strong>Arguments:</strong> <br></br>

- <code>state</code> [<strong> bool </strong>]: Whether the health system should be enabled or not.

---

### getEnableInstantRespawn

```lua
ACM.settings.health.getEnableInstantRespawn()
```
<code>Server-Only</code> <br></br>

Checks if instant respawn is enabled.

If instant respawn is enabled and a player dies, they are immediately respawned <br></br>
automatically without having to manually press a respawn button first.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether instant respawn is enabled or not.

---

### setEnableInstantRespawn

```lua
ACM.settings.health.setEnableInstantRespawn( state )
```
<code>Server-Only</code> <br></br>

Enables or disables instant respawn.

If instant respawn is enabled and a player dies, they are immediately respawned <br></br>
automatically without having to manually press a respawn button first.

<strong>Arguments:</strong> <br></br>

- <code>state</code> [<strong> bool </strong>]: Whether instant respawn should be enabled or not.

---

### getEnableKoDamage

```lua
ACM.settings.health.getEnableKoDamage()
```
<code>Server-Only</code> <br></br>

Checks if KO damage is enabled.

If KO damage is enabled, players can still take damage while knocked out.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether KO damage is enabled or not.

---

### setEnableKoDamage

```lua
ACM.settings.health.setEnableKoDamage( state )
```
<code>Server-Only</code> <br></br>

Enables or disables KO damage.

If KO damage is enabled, players can still take damage while knocked out.

<strong>Arguments:</strong> <br></br>

- <code>state</code> [<strong> bool </strong>]: Whether KO damage should be enabled or not.

---

### getMaxHealth

```lua
ACM.settings.health.getMaxHealth()
```
<code>Server-Only</code> <br></br>

Returns the maximum amount of health a player can have. <br></br>
The default is 100.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The maximum health amount.

---

### setMaxHealth

```lua
ACM.settings.health.setMaxHealth( value )
```
<code>Server-Only</code> <br></br>

Sets the maximum amount of health a player can have. <br></br>
The default is 100, the minimum is 1 and the maximum is 999.

<strong>Arguments:</strong> <br></br>

- <code>value</code> [<strong> number </strong>]: The maximum health amount.

---

### getMaxAir

```lua
ACM.settings.health.getMaxAir()
```
<code>Server-Only</code> <br></br>

Returns the maximum amount of air a player can have. <br></br>
The default is 100.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The maximum air amount.

---

### setMaxAir

```lua
ACM.settings.health.setMaxAir( value )
```
<code>Server-Only</code> <br></br>

Sets the maximum amount of air a player can have. <br></br>
The default is 100, the minimum is 1 and the maximum is 999.

<strong>Arguments:</strong> <br></br>

- <code>value</code> [<strong> number </strong>]: The maximum air amount.

---

### getAirLoss

```lua
ACM.settings.health.getAirLoss()
```
<code>Server-Only</code> <br></br>

Returns the amount of air that a player loses every "health update" while diving.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The air loss amount.

---

### setAirLoss

```lua
ACM.settings.health.setAirLoss( value )
```
<code>Server-Only</code> <br></br>

Sets the amount of air that a player loses every "health update" while diving.

<strong>Arguments:</strong> <br></br>

- <code>value</code> [<strong> number </strong>]: The air loss amount.

---

### getAirRecovery

```lua
ACM.settings.health.getAirRecovery()
```
<code>Server-Only</code> <br></br>

Returns the amount of air that a player recovers every "health update" after stopping diving.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The air recovery amount.

---

### setAirRecovery

```lua
ACM.settings.health.setAirRecovery( value )
```
<code>Server-Only</code> <br></br>

Sets the amount of air that a player recovers every "health update" while diving.

<strong>Arguments:</strong> <br></br>

- <code>value</code> [<strong> number </strong>]: The air recovery amount.

---





