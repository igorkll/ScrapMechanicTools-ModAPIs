---
sidebar_position: 3
title: dlm.constants
hide_title: true
sidebar-label: 'dlm.constants'
---

<br></br>

## dlm.constants

The <code>constants</code> table contains various constant values (e.g. error codes) related to certain libraries.

## audio

The <code>audio</code> table constants contain various result codes for the [audio](/modapis/DLM/Static-Functions/dlm.audio) library.

### api_results

```lua
dlm.constants.audio.api_results = {
	[0] = "OK",					--Everything should be OK
	[1] = "LIMIT_EXCEEDED",		--A limit has been reached, e.g. too many event instances
	[2] = "FMOD_ISSUE",			--No problem in the API, but an FMOD call failed. Check fmod_result for more information.
	[3] = "INVALID_ID"			--An invalid ID was used. This is an internal problem and should be reported if it happens.
}
```

This table contains result codes for the custom Lua <-> FMOD interface (not FMOD itself).

---

### fmod_playback_states

```lua
dlm.constants.audio.fmod_playback_states = {
	[-1] = "INVALID",		--Not an official FMOD result - if this happens, check api_result for more information.
	[0] = "PLAYING",		--The sound is playing.
	[1] = "SUSTAINING",		--Paused on a sustain point (not relevant for DLM).
	[2] = "STOPPED",		--The sound is stopped.
	[3] = "STARTING",		--Preparing to start the sound.
	[4] = "STOPPING"		--Preparing to stop the sound.
}
```

This table contains FMOD playback state codes. <br></br>
For more information on what each state means, see the [official FMOD documentation](https://www.fmod.com/docs/2.01/api/studio-api-common.html#fmod_studio_playback_state).

---

### fmod_loading_states

```lua
dlm.constants.audio.fmod_loading_states = {
	[-1] = "INVALID",		--Not an official FMOD result - if this happens, check api_result for more information.
	[0] = "UNLOADING",		--The bank is being unloaded.
	[1] = "UNLOADED",		--The bank is not loaded.
	[2] = "LOADING",		--The bank is being loaded.
	[3] = "LOADED",			--The bank is loaded.
	[4] = "ERROR"			--Failed to load. Check fmod_result if this happens.
}
```

This table contains FMOD bank loading state codes. <br></br>
For more information on what each state means, see the [official FMOD documentation](https://www.fmod.com/docs/2.01/api/studio-api-common.html#fmod_studio_loading_state).

---

### fmod_results

```lua
dlm.constants.audio.fmod_results = {
	[-1] = "INVALID",		--Not an official FMOD result - if this happens, check api_result for more information.
	[0] = "OK",				--Everything should be OK
	...
	--Remaining states not listed as there are too many - check official FMOD docs.
}
```

This table contains FMOD error codes. <br></br>
For more information on what each code means, see the [official FMOD documentation](https://www.fmod.com/docs/2.01/api/core-api-common.html#fmod_result).

---

## input

The <code>input</code> table constants contains key codes for the [input](/modapis/DLM/Static-Functions/dlm.input) library. <br></br>
These constants can be used with said library to receive keyboard and mouse input in any Lua script. <br></br>

Note that the keys that can be received are NOT limited to the ones in this table - you can receive <br></br>
key input from keys not in this list by simply manually passing those key's codes to the function.

For a full list of codes for every key, see microsoft's [Virtual-Key Codes list](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes).

```lua
dlm.constants.input = {
	lmb 		= 0x01,	--Left mouse button
	rmb 		= 0x02,	--Right mouse button
	mmb 		= 0x04,	--Middle mouse button (mouse wheel button)
	x1_mb 		= 0x05,	--X1 mouse button
	x2_mb 		= 0x06,	--X2 mouse button
	backspace 	= 0x08,	--Backspace key
	tab 		= 0x09,	--Tab key
	enter 		= 0x0D,	--Enter key
	shift 		= 0x10,	--Shift key
	ctrl 		= 0x11,	--CTRL key
	alt 		= 0x12,	--ALT key
	capsLock 	= 0x14,	--CapsLock key
	esc 		= 0x1B,	--ESC key
	space 		= 0x20,	--Space bar
	arrow_l 	= 0x25,	--Left arrow key
	arrow_r 	= 0x27,	--Right arrow key
	arrow_u 	= 0x26,	--Up arrow key
	arrow_d 	= 0x28,	--Down arrow key
	zero 		= 0x30,	--The 0 key
	one 		= 0x31,	--The 1 key
	two 		= 0x32,	--The 2 key
	three 		= 0x33,	--The 3 key
	four 		= 0x34,	--The 4 key
	five 		= 0x35,	--The 5 key
	six 		= 0x36,	--The 6 key
	seven 		= 0x37,	--The 7 key
	eight 		= 0x38,	--The 8 key
	nine 		= 0x39,	--The 9 key
	a 			= 0x41,	--The A key
	b 			= 0x42,	--The B key
	c 			= 0x43,	--The C key
	d 			= 0x44,	--The D key
	e 			= 0x45,	--The E key
	f 			= 0x46,	--The F key
	g 			= 0x47,	--The G key
	h 			= 0x48,	--The H key
	i 			= 0x49,	--The I key
	j 			= 0x4A,	--The J key
	k 			= 0x4B,	--The K key
	l 			= 0x4C,	--The L key
	m 			= 0x4D,	--The M key
	n 			= 0x4E,	--The N key
	o 			= 0x4F,	--The O key
	p 			= 0x50,	--The P key
	q 			= 0x51,	--The Q key
	r 			= 0x52,	--The R key
	s 			= 0x53,	--The S key
	t 			= 0x54,	--The T key
	u 			= 0x55,	--The U key
	v 			= 0x56,	--The V key
	w 			= 0x57,	--The W key
	x 			= 0x58,	--The X key
	y 			= 0x59,	--The Y key
	z 			= 0x5A,	--The Z key
	win_l 		= 0x5B,	--The left windows key
	win_r 		= 0x5C,	--The right windows key
	num_0 		= 0x60,	--The numpad 0 key
	num_1 		= 0x61,	--The numpad 1 key
	num_2 		= 0x62,	--The numpad 2 key
	num_3 		= 0x63,	--The numpad 3 key
	num_4 		= 0x64,	--The numpad 4 key
	num_5 		= 0x65,	--The numpad 5 key
	num_6 		= 0x66,	--The numpad 6 key
	num_7 		= 0x67,	--The numpad 7 key
	num_8 		= 0x68,	--The numpad 8 key
	num_9 		= 0x69,	--The numpad 9 key
	f1 			= 0x70,	--The function key F1
	f2 			= 0x71,	--The function key F2
	f3 			= 0x72,	--The function key F3
	f4 			= 0x73,	--The function key F4
	f5 			= 0x74,	--The function key F5
	f6 			= 0x75,	--The function key F6
	f7 			= 0x76,	--The function key F7
	f8 			= 0x77,	--The function key F8
	f9 			= 0x78,	--The function key F9
	f10 		= 0x79,	--The function key F10
	f11 		= 0x7A,	--The function key F11
	f12 		= 0x7B,	--The function key F12
	f13 		= 0x7C,	--The function key F13
	f14 		= 0x7D,	--The function key F14
	f15 		= 0x7E,	--The function key F15
	f16 		= 0x7F,	--The function key F16
	f17 		= 0x80,	--The function key F17
	f18 		= 0x81,	--The function key F18
	f19 		= 0x82,	--The function key F19
	f20 		= 0x83,	--The function key F20
	f21 		= 0x84,	--The function key F21
	f22 		= 0x85,	--The function key F22
	f23 		= 0x86,	--The function key F23
	f24 		= 0x87,	--The function key F24
	shift_l 	= 0xA0,	--The left shift key
	shift_r 	= 0xA1,	--The right shift key
	ctrl_l 		= 0xA2,	--The left CTRL key
	ctrl_r 		= 0xA3,	--The right CTRL key
	alt_l 		= 0xA4,	--The left ALT key
	alt_r 		= 0xA5	--The right ALT key
}
```


