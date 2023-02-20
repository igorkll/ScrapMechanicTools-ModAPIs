---
sidebar_position: 19
title: sm
hide_title: true
sidebar-label: 'sm'
---

<br></br>

### sm

```lua
local newUuid = sm.uuid.new()
```

Allows a computer to access the sm global

> If you are wondering why this page exist's. Theres someting you have to know.

<strong>Returns:</strong> <br></br>

> If Unsafe env is enabled

- <code>SM</code> [<strong> SM Global </strong>]: The entire SM Global.

> If Unsafe env is disabled

- <code>SM</code> [<strong> SM Global (With limitations) </strong>]: The entire SM Global but limited by the following list

1. sm.vec3
2. sm.util
3. sm.quat
4. sm.noise
5. sm.json
    1. parseJsonString
    2. writeJsonString
6. sm.color