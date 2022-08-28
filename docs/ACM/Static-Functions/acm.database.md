---
sidebar_position: 5
title: ACM.database
hide_title: true
sidebar-label: 'ACM.database'
---

<br></br>

## ACM.database

The <code>database</code> library provides a way to interface with the ACM storage database. <br></br>
The ACM storage database is a custom global object that is used to store various kinds of data. <br></br>
This database is automatically saved to the save file every 2.5 seconds if the data in it has changed.

### getVersion

```lua
ACM.database.getVersion()
```

Returns the current version of the database library.

<strong>Returns:</strong> <br></br>

- [<strong> number </strong>]: The database version.

---

### getModData

```lua
ACM.database.getModData( key, category )
```

Returns mod data that was saved with the given database key. <br></br>
If a category name is provided, it returns the data in that category (or nil if there is no data). <br></br>
If no category name is provided, this returns all data at the given key.

Note that this <strong>will error out</strong> if the given key is not registered in the database.

<strong>Arguments:</strong> <br></br>

- <code>key</code> [<strong> Uuid </strong>]: The database key.
- <code>category</code> [<strong> string/nil </strong>]: The category, or nil to get all data.

<strong>Returns:</strong> <br></br>

- [<strong> table/nil </strong>]: The requested data, or nil if there is no data.

---

### setModData

```lua
ACM.database.setModData( key, category, data )
```

Saves mod data with the given database key, in the given category.

:::info note
The allowed data types for this are limited to: boolean, string, number, table. <br></br>
If the data being set is a table, the table content is limited to the same data types.

Data saved in the database using this function is <strong>global</strong> and other mods <br></br>
can access it using [getModData](#getmoddata), if they know the correct database key.
:::

:::caution warning
<strong>Recursive tables</strong> (e.g. a table containing a reference to itself) are not allowed. <br></br>
Trying to save such a table will result in unexpected behavior and/or the game freezing or crashing.
:::

Note that this <strong>will error out</strong> if the given key is not registered in the database.

<strong>Arguments:</strong> <br></br>

- <code>key</code> [<strong> Uuid </strong>]: The database key.
- <code>category</code> [<strong> string </strong>]: The category to save into.
- <code>data</code> [<strong> bool/string/number/table </strong>]: The data to save.

---

### setModKey

```lua
ACM.database.setModKey( key )
```

Registers a database key to be used for accessing the database. <br></br>
If a key is given, it will try to register that key. <br></br>
If no key is given, a random one will be generated.

Returns <code>false</code> if the given key is already registered.

:::info note
It is recommended to use your mod's content UUID (<code>localId</code> in <code>description.json</code>) as the key, <br></br>
though you should keep in mind that there is a small chance that another mod might use the same UUID.

If you generate a random key using this function, you need to store it somewhere, e.g. a JSON file in your mod.
:::

<strong>Arguments:</strong> <br></br>

- <code>key</code> [<strong> Uuid </strong>]: The key to register.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the key was registered successfully or not.
- [<strong> Uuid/nil </strong>]: The registered key, or nil if it already exists.

---

### isValidKey

```lua
ACM.database.isValidKey( key )
```

Checks if the given database key is registered in the database or not.

<strong>Arguments:</strong> <br></br>

- <code>key</code> [<strong> Uuid </strong>]: The key to check.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether the key is already registered or not.

---

### getGameData

```lua
ACM.database.getGameData( category )
```

Returns a table containing game settings and/or values in the given category. <br></br>
Returns <code>nil</code> if the given category is invalid.

Valid categories are:

- <code>"PhysicsSettings"</code> - Physics related settings, e.g. player gravity.
- <code>"GameSettings"</code> - Game related settings, e.g. fuel/ammo consumption, time of day, etc.
- <code>"HealthData"</code> - Settings related to the Health system itself, e.g. whether it's enabled or not, the max HP, etc.
- <code>"DamageData"</code> - Settings for how much damage each attack in the game does to the player.
- <code>"MultiplayerSettings"</code> - Multiplayer settings, e.g. maximum players, whether name tags are enabled, etc.
- <code>"SavePoints"</code> - Contains save states created with the Save Point interactable or ACM.map.save.
- <code>"ScriptSavePoints"</code> - Contains save states created with ACM.map.save.

:::info note
The returned table is a copy of the actual data - making any changes to the <br></br>
returned data will <strong>not</strong> change the actual setting(s).
:::

<strong>Arguments:</strong> <br></br>

- <code>category</code> [<strong> string </strong>]: The category of data to get.

<strong>Returns:</strong> <br></br>

- [<strong> table/nil </strong>]: The data in the given category.

---

### exportDatabase

```lua
ACM.database.exportDatabase()
```

Exports the whole database to a JSON string.

<strong>Returns:</strong> <br></br>

- [<strong> bool </strong>]: Whether exporting was successful.
- [<strong> string/nil </strong>]: The exported JSON string, or the error message if it failed.

---
