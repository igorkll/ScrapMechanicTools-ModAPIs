---
sidebar_position: 1
title: Info
hide_title: true
sidebar-label: 'Info'
---

<br></br>

## Advanced Challenge/Creative Mode API

This is the documentation for the ACM Mod API provided by the [Advanced Challenge/Creative Mode](https://steamcommunity.com/sharedfiles/filedetails/?id=2803050088) game mode.

This mod API provides ways for Blocks & Parts mods to interact with the game in various ways, for example <br></br>
creating lasers, interfacing with a custom database, changing the challenge/map state, creating/loading save points, etc.

A mod with example scripts showing how to use various parts of the API was made available as well:

[Steam Workshop (Browser)](https://steamcommunity.com/sharedfiles/filedetails/?id=2855617052) <br></br>
[Steam Workshop (Steam Client)](steam://openurl/https://steamcommunity.com/sharedfiles/filedetails/?id=2855617052) <br></br>
[ZIP Download](/files/ACM_Mod_API_Examples.zip)

This documentation is currently for ACM version <code>0.8.0</code>.

## API Change Log

### Version 0.8.0

#### New Libraries

- New Library: [ACM.event](/ACM/Static-Functions/acm.event)
- New Library: [ACM.world](/ACM/Static-Functions/acm.world)
- New Library: [ACM.portal](/ACM/Static-Functions/acm.portal)
- New Library: [ACM.game](/ACM/Static-Functions/acm.game)
- New Library: [ACM.settings](/ACM/Static-Functions/acm.settings)

#### New Objects

- New Object: [Portal](/ACM/Objects/portal)

#### New Functions

- New Function: [ACM.database.getGlobal](/ACM/Static-Functions/acm.database#getglobal)
- New Function: [ACM.database.setGlobal](/ACM/Static-Functions/acm.database#setglobal)
- New Function: [ACM.util.getAtFromQuat](/ACM/Static-Functions/acm.util#getatfromquat)
- New Function: [ACM.util.getUpFromQuat](/ACM/Static-Functions/acm.util#getupfromquat)
- New Function: [ACM.util.getLeftFromQuat](/ACM/Static-Functions/acm.util#getleftfromquat)

#### New Parameters

- New Parameter <code>scale</code> for [Laser:sv_fire](/ACM/Objects/laser#sv_fire)
- New Parameter <code>scale</code> for [Laser:cl_fire](/ACM/Objects/laser#cl_fire)
- New Parameter <code>useSphereCast</code> for [Laser:sv_fire](/ACM/Objects/laser#sv_fire)
- New Parameter <code>useSphereCast</code> for [Laser:cl_fire](/ACM/Objects/laser#cl_fire)

#### New Return Values

- New Return Value <code>hitData</code> for [Laser:cl_fire](/ACM/Objects/laser#cl_fire)

#### Bug/Error Fixes

- Fixed the API not existing for a couple ticks when launching the game

#### Other Changes

- Improved some error messages


- Added Change Log






