---
sidebar_position: 5
title: Other Changes
hide_title: true
sidebar-label: 'Other Changes'
---

<br></br>

## Other Changes

Listed below are other, random/minor changes made by DLM that fit in no other category.

### Color Printing

```lua
local colors = {
	default = "\x1B[m",

	black = "\x1B[30m",
	red = "\x1B[31m",
	green = "\x1B[32m",
	yellow = "\x1B[33m",
	blue = "\x1B[34m",
	magenta = "\x1B[35m",
	cyan = "\x1B[36m",
	white = "\x1B[37m",

	brightBlack = "\x1B[90m",
	brightRed = "\x1B[91m",
	brightGreen = "\x1B[92m",
	brightYellow = "\x1B[93m",
	brightBlue = "\x1B[94m",
	brightMagenta = "\x1B[95m",
	brightCyan = "\x1B[96m",
	brightWhite = "\x1B[97m"
}

print( colors.brightRed, "Hello in red!" )
print( colors.brightGreen, "Hello in green!" )
print( colors.brightBlue, "Hello in blue!" )
```

DLM enables [ANSI Color Codes](https://en.wikipedia.org/wiki/ANSI_escape_code#3-bit_and_4-bit) for the debug console. <br></br>
This means that you can now print data to the console in multiple colors instead of just green!

Also works for [sm.log](https://scrapmechanictools.com/lua/Game-Script-Environment/Static-Functions/sm.log)!

The code above will print out this when ran in the game:

![Color Print](/img/colorPrint.png)

---
