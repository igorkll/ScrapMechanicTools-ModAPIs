---
sidebar_position: 1
title: Info
hide_title: true
sidebar-label: 'Info'
---

<br></br>

![SComputers Image](/img/SComputers.jpg)

## this documentation describes only the methods added by SComputers, see the official documentation for the basic methods added by Scriptable Computers: [Scriptable Computers]: https://steamcommunity.com/sharedfiles/filedetails/?id=2831560152

SComputers, this is a fork of the Scriptable Computers mod
this fork is compatible with the code of the original Scriptable Computers and with the SCI code
however, programs written for this mod will not work on the original Scriptable Computers


### this mod contains new components such as:
* sound synthesizer
* address led
* non-square displays
* holographic projector
* keyboard
* tablet


### load implementation
* lua-in-lua   (there are bugs)
* scrapVM      (the best option)
* full lua env (dangerous)


### Permission Tool
* Script Mode: Safe/Unsafe (creative tool only)
* LuaVM: luaInLua/scrapVM/fullLuaEnv
* allow chat/alert/debug messages: false/true (creative tool only)


### Internal Libs
### to get the internal libraries, use the require method
* image
* base64

### sandbox features
[*] if you declare the function "callback_error(str)" then it will be called in cases of an error in the computer
, please note that the error in it can only be viewed in the debug console / game log
[*] if you declare the "callback_loop" function, it will be called on the next tick instead of calling the entire program
[*] there is a SCI api for compatibility (env.SCI =env)
[*] added the load method, which allows you to set the name of a piece of code and works as in a normal lua, but does not allow you to load bytecode
[*] the crashstate table has been added to the public api of the computer (getChildComputers and getParentComputers and getCurrentComputer)
there are two values hasException and exceptionMsg
you can write your values there
* the _endtick flag that is automatically raised if the computer's tick is the last one

### font features
* added small english letters
* added large Russian letters
* added small Russian letters


### new methods of old components
* disk.clear - clear the disk
* display.setSkipAtLags/display.getSkipAtLags
should I skip the rendering if the fps is lower than the one set by the user,
you should turn it on if the picture is constantly updated and skipping one flush will not lead to problems
, or turn it off if each rendering is important
* display.getFontWidth - returns the width of the current font
* display.getFontHeight - returns the height of the current font
* display.setFont - sets a custom font
to set a standard font, pass nil
the font is a lua format table:
```lua
{
    chars = {
        ["a"] = {
            "1111",
            "...1",
            "1111",
            "1..1",
            "1111"
        },
        ["error"] = {
            "1111",
            "1111",
            "1111",
            "1111",
            "1111"
        }
    },
    width = 4,
    height = 5
}
```
* motor.getAvailableBatteries - the number of batteries available to the motor will be reduced, the creative motor will return math.huge
* motor.getCharge - returns the charge of the motor, if it reaches 0, the motor will try to take the battery and add 50-000 to the charge
the creative motor always has a math.huge charge, the
motor loses charge depending on the load, if the bearings are blocked, the engine will quickly drain all the batteries
* motor.getChargeDelta - it will return how much charge the motor loses in 1 tick (the creative motor has 0)
* motor.getBearingsCount:number - returns the number of bearings connected to the motor
* motor.isWorkAvailable:boolean -
returns true if the engine can start working at the moment (if there is a charge or something to replenish it with)
the creative engine method will always return true
* motor.maxStrength - will return the maximum power for this engine (creative 10-000, survival 1000)
* motor.maxVelocity - will return the maximum speed for this engine (creative 10-000, survival 500)


### how to use the importer
* to generate an image, use the importer utility, it is located in $CONTENT_DATA/USER/importer
* to import an image, use the disk menu, to do this, press the E button on it
* to open this menu on a PC with a built-in disk, use the button in its gui
* when importing, old files are not erased, in order to erase them, click clear
* you can import your generated image($CONTENT_DATA/USER/importer/disk.json), or a ready-made OS (scraps)


:::info note
the print/alert/debug functions will not work by default, for them to work, you need to configure this in the creative Permission Tool
:::

:::info note
disk sizes are GREATLY reduced in order to avoid non-spawning buildings and saving bugs,
the game cannot save even megabytes of data
now small and embedded disks have a volume of 64kb
a larger 128kb.
creative hard drive has a volume of 16 MB, but does not save data after re-entry and when saving
:::

:::info note
after adding always on, it is incorrect to use "not input()" to track the shutdown,
use the check "if _endtick then" there is a _endtick flag raised, this means the last tick
::::

:::caution warning
when using scrapVM/fullLuaEnv, the number of iterations is unlimited
:::