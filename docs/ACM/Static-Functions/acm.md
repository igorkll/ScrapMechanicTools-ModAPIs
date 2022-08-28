---
sidebar_position: 1
title: ACM
hide_title: true
sidebar-label: 'ACM'
---

<br></br>

## ACM

The <code>ACM</code> table contains all features of the ACM Mod API.

Load the table by adding this at the top of your script:

```lua
local ACM = sm["6adc7c70-de63-4f47-afbf-018220f548d4"]
```

Now the ACM Mod API can be accessed using the <code>ACM</code> table variable in this script. <br></br>
You can make the table global to make the API available in your whole mod instead of one script.

:::caution warning
The <code>ACM</code> table will be <code>nil</code> if your mod is loaded in any game mode other than ACM!
:::

:::info note
This documentation was written with the assumption that the API table was loaded into a <br></br>
variable called <code>ACM</code>, as written above. <br></br>
If you used a different variable name, you need to use that name to access the API functions.
:::













