---@meta


---@class DLM
dlm = {}

---The current DLM version, as a string.\
---You can check this in your mod to make sure the user has the correct DLM version installed.
dlm.version = ""
---Sets up the content path ($CONTENT_uuid) for the content with the given name, localId and steamId.\
--->**This is required for some functions to work (e.g. audio.loadBank)!**
--->
---This needs to only be called once per mod.\
---You should call this in the root of a script that is always loaded (like a util.lua or similar file).
--->**NOTE**\
---The modName parameter should be the name of the mod's local folder, NOT the name in the description.json!\
---\
---If your mod is not uploaded to the steam workshop, you can use `0` as a placeholder for the `steamId` parameter.\
---**However, it is absolutely necessary to replace it with the mod's actual steam id after uploading!!** \
---**If you do not set the steamId correctly, your mod will not work when your subscribers try to use it!** \
---\
---This might get improved in a future update.
--->
---@param modName string The local folder name of the mod.
---@param localId Uuid The localId value in the mod's description.json.
---@param steamId number The steamId value in the mod's description.json, or 0 if not uploaded yet.
function dlm.setupContentPath(modName, localId, steamId) end

--------------------
--CONSTANTS
--------------------

---The `constants` table contains various constant values (e.g. error codes) related to certain libraries.
---@class DLMConstants
dlm.constants = {}

---The `audio` table constants contain various result codes for the [audio](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.audio/) library.
---@class DLMAudioConstants
dlm.constants.audio = {}

---@class DLMAPIResults
dlm.constants.audio.api_results = {
    [0] = "OK", --Everything should be OK
    [1] = "LIMIT_EXCEEDED", --A limit has been reached, e.g. too many event instances
    [2] = "FMOD_ISSUE", --No problem in the API, but an FMOD call failed. Check fmod_result for more information.
    [3] = "INVALID_ID" --An invalid ID was used. This is an internal problem and should be reported if it happens.
}


---This table contains FMOD playback state codes.\
---For more information on what each state means, see the [official FMOD documentation.](https://www.fmod.com/docs/2.01/api/studio-api-common.html#fmod_studio_playback_state)
---@class DLMFmodPlaybackStates
dlm.constants.audio.fmod_playback_states = {
    [-1] = "INVALID", --Not an official FMOD result - if this happens, check api_result for more information.
    [0] = "PLAYING", --The sound is playing.
    [1] = "SUSTAINING", --Paused on a sustain point (not relevant for DLM).
    [2] = "STOPPED", --The sound is stopped.
    [3] = "STARTING", --Preparing to start the sound.
    [4] = "STOPPING" --Preparing to stop the sound.
}

---This table contains FMOD bank loading state codes.\
---For more information on what each state means, see the [official FMOD documentation.](https://www.fmod.com/docs/2.01/api/studio-api-common.html#fmod_studio_loading_state)
---@class DLMFmodLoadingStates
dlm.constants.audio.fmod_loading_states = {
    [-1] = "INVALID", --Not an official FMOD result - if this happens, check api_result for more information.
    [0] = "UNLOADING", --The bank is being unloaded.
    [1] = "UNLOADED", --The bank is not loaded.
    [2] = "LOADING", --The bank is being loaded.
    [3] = "LOADED", --The bank is loaded.
    [4] = "ERROR" --Failed to load. Check fmod_result if this happens.
}

---@class DLMFmodResults
---This table contains FMOD bank loading state codes.
dlm.constants.audio.fmod_results = {
    [-1] = "INVALID", --Not an official FMOD result - if this happens, check api_result for more information.
    [0] = "OK", --Everything should be OK
	[1] = "ERR_BADCOMMAND",
	[2] = "ERR_CHANNEL_ALLOC",
	[3] = "ERR_CHANNEL_STOLEN",
	[4] = "ERR_DMA",
	[5] = "ERR_DSP_CONNECTION",
	[6] = "ERR_DSP_DONTPROCESS",
	[7] = "ERR_DSP_FORMAT",
	[8] = "ERR_DSP_INUSE",
	[9] = "ERR_DSP_NOTFOUND",
	[10] = "ERR_DSP_RESERVED",
	[11] = "ERR_DSP_SILENCE",
	[12] = "ERR_DSP_TYPE",
	[13] = "ERR_FILE_BAD",
	[14] = "ERR_FILE_COULDNOTSEEK",
	[15] = "ERR_FILE_DISKEJECTED",
	[16] = "ERR_FILE_EOF",
	[17] = "ERR_FILE_ENDOFDATA",
	[18] = "ERR_FILE_NOTFOUND",
	[19] = "ERR_FORMAT",
	[20] = "ERR_HEADER_MISMATCH",
	[21] = "ERR_HTTP",
	[22] = "ERR_HTTP_ACCESS",
	[23] = "ERR_HTTP_PROXY_AUTH",
	[24] = "ERR_HTTP_SERVER_ERROR",
	[25] = "ERR_HTTP_TIMEOUT",
	[26] = "ERR_INITIALIZATION",
	[27] = "ERR_INITIALIZED",
	[28] = "ERR_INTERNAL",
	[29] = "ERR_INVALID_FLOAT",
	[30] = "ERR_INVALID_HANDLE",
	[31] = "ERR_INVALID_PARAM",
	[32] = "ERR_INVALID_POSITION",
	[33] = "ERR_INVALID_SPEAKER",
	[34] = "ERR_INVALID_SYNCPOINT",
	[35] = "ERR_INVALID_THREAD",
	[36] = "ERR_INVALID_VECTOR",
	[37] = "ERR_MAXAUDIBLE",
	[38] = "ERR_MEMORY",
	[39] = "ERR_MEMORY_CANTPOINT",
	[40] = "ERR_NEEDS3D",
	[41] = "ERR_NEEDSHARDWARE",
	[42] = "ERR_NET_CONNECT",
	[43] = "ERR_NET_SOCKET_ERROR",
	[44] = "ERR_NET_URL",
	[45] = "ERR_NET_WOULD_BLOCK",
	[46] = "ERR_NOTREADY",
	[47] = "ERR_OUTPUT_ALLOCATED",
	[48] = "ERR_OUTPUT_CREATEBUFFER",
	[49] = "ERR_OUTPUT_DRIVERCALL",
	[50] = "ERR_OUTPUT_FORMAT",
	[51] = "ERR_OUTPUT_INIT",
	[52] = "ERR_OUTPUT_NODRIVERS",
	[53] = "ERR_PLUGIN",
	[54] = "ERR_PLUGIN_MISSING",
	[55] = "ERR_PLUGIN_RESOURCE",
	[56] = "ERR_PLUGIN_VERSION",
	[57] = "ERR_RECORD",
	[58] = "ERR_REVERB_CHANNELGROUP",
	[59] = "ERR_REVERB_INSTANCE",
	[60] = "ERR_SUBSOUNDS",
	[61] = "ERR_SUBSOUND_ALLOCATED",
	[62] = "ERR_SUBSOUND_CANTMOVE",
	[63] = "ERR_TAGNOTFOUND",
	[64] = "ERR_TOOMANYCHANNELS",
	[65] = "ERR_TRUNCATED",
	[66] = "ERR_UNIMPLEMENTED",
	[67] = "ERR_UNINITIALIZED",
	[68] = "ERR_UNSUPPORTED",
	[69] = "ERR_VERSION",
	[70] = "ERR_EVENT_ALREADY_LOADED",
	[71] = "ERR_EVENT_LIVEUPDATE_BUSY",
	[72] = "ERR_EVENT_LIVEUPDATE_MISMATCH",
	[73] = "ERR_EVENT_LIVEUPDATE_TIMEOUT",
	[74] = "ERR_EVENT_NOTFOUND",
	[75] = "ERR_STUDIO_UNINITIALIZED",
	[76] = "ERR_STUDIO_NOT_LOADED",
	[77] = "ERR_INVALID_STRING",
	[78] = "ERR_ALREADY_LOCKED",
	[79] = "ERR_NOT_LOCKED",
	[80] = "ERR_RECORD_DISCONNECTED",
	[81] = "ERR_TOOMANYSAMPLES"
}


---The `input` table constants contains key codes for the [inpu]t(https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm`.input/) library.\
---These constants can be used with said library to receive keyboard and mouse input in any Lua script.\
---\
---Note that the keys that can be received are NOT limited to the ones in this table - you can receive\
---key input from keys not in this list by simply manually passing those key's codes to the function.\
---\
---For a full list of codes for every key, see microsoft's [Virtual-Key Codes list.](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
---@class DLMInputConstants
dlm.constants.input = {
    lmb       = 0x01, --Left mouse button
    rmb       = 0x02, --Right mouse button
    mmb       = 0x04, --Middle mouse button (mouse wheel button)
    x1_mb     = 0x05, --X1 mouse button
    x2_mb     = 0x06, --X2 mouse button
    backspace = 0x08, --Backspace key
    tab       = 0x09, --Tab key
    enter     = 0x0D, --Enter key
    shift     = 0x10, --Shift key
    ctrl      = 0x11, --CTRL key
    alt       = 0x12, --ALT key
    capsLock  = 0x14, --CapsLock key
    esc       = 0x1B, --ESC key
    space     = 0x20, --Space bar
    arrow_l   = 0x25, --Left arrow key
    arrow_r   = 0x27, --Right arrow key
    arrow_u   = 0x26, --Up arrow key
    arrow_d   = 0x28, --Down arrow key
    zero      = 0x30, --The 0 key
    one       = 0x31, --The 1 key
    two       = 0x32, --The 2 key
    three     = 0x33, --The 3 key
    four      = 0x34, --The 4 key
    five      = 0x35, --The 5 key
    six       = 0x36, --The 6 key
    seven     = 0x37, --The 7 key
    eight     = 0x38, --The 8 key
    nine      = 0x39, --The 9 key
    a         = 0x41, --The A key
    b         = 0x42, --The B key
    c         = 0x43, --The C key
    d         = 0x44, --The D key
    e         = 0x45, --The E key
    f         = 0x46, --The F key
    g         = 0x47, --The G key
    h         = 0x48, --The H key
    i         = 0x49, --The I key
    j         = 0x4A, --The J key
    k         = 0x4B, --The K key
    l         = 0x4C, --The L key
    m         = 0x4D, --The M key
    n         = 0x4E, --The N key
    o         = 0x4F, --The O key
    p         = 0x50, --The P key
    q         = 0x51, --The Q key
    r         = 0x52, --The R key
    s         = 0x53, --The S key
    t         = 0x54, --The T key
    u         = 0x55, --The U key
    v         = 0x56, --The V key
    w         = 0x57, --The W key
    x         = 0x58, --The X key
    y         = 0x59, --The Y key
    z         = 0x5A, --The Z key
    win_l     = 0x5B, --The left windows key
    win_r     = 0x5C, --The right windows key
    num_0     = 0x60, --The numpad 0 key
    num_1     = 0x61, --The numpad 1 key
    num_2     = 0x62, --The numpad 2 key
    num_3     = 0x63, --The numpad 3 key
    num_4     = 0x64, --The numpad 4 key
    num_5     = 0x65, --The numpad 5 key
    num_6     = 0x66, --The numpad 6 key
    num_7     = 0x67, --The numpad 7 key
    num_8     = 0x68, --The numpad 8 key
    num_9     = 0x69, --The numpad 9 key
    f1        = 0x70, --The function key F1
    f2        = 0x71, --The function key F2
    f3        = 0x72, --The function key F3
    f4        = 0x73, --The function key F4
    f5        = 0x74, --The function key F5
    f6        = 0x75, --The function key F6
    f7        = 0x76, --The function key F7
    f8        = 0x77, --The function key F8
    f9        = 0x78, --The function key F9
    f10       = 0x79, --The function key F10
    f11       = 0x7A, --The function key F11
    f12       = 0x7B, --The function key F12
    f13       = 0x7C, --The function key F13
    f14       = 0x7D, --The function key F14
    f15       = 0x7E, --The function key F15
    f16       = 0x7F, --The function key F16
    f17       = 0x80, --The function key F17
    f18       = 0x81, --The function key F18
    f19       = 0x82, --The function key F19
    f20       = 0x83, --The function key F20
    f21       = 0x84, --The function key F21
    f22       = 0x85, --The function key F22
    f23       = 0x86, --The function key F23
    f24       = 0x87, --The function key F24
    shift_l   = 0xA0, --The left shift key
    shift_r   = 0xA1, --The right shift key
    ctrl_l    = 0xA2, --The left CTRL key
    ctrl_r    = 0xA3, --The right CTRL key
    alt_l     = 0xA4, --The left ALT key
    alt_r     = 0xA5 --The right ALT key
}

--------------------
--HTTP
--------------------

---The HTTP library allows for communicating with outside services using the HTTP(S) protocol.
--->**Warning**\
---Due to the Lua VM being single-threaded, using any function in this library will\
---**freeze the game** until a response is received or until the request times out!\
---You should keep this in mind while working with this library and attempt to send as\
---little amount of requests as possible.\
---**There are plans to fix this in a future DLM update.**
--->
---@class DLMHttp
dlm.http = {}

---Sends a HTTP(S) GET request to the given URL with the given headers and returns response data.\
---\
---Note that, depending on how the server is set up, the returned data may not be HTML.\
---\
---The `headers` table contains HTTP headers in key-value pairs, e.g. `{ name = "value" }`.
---@param url string The URL to connect to.
---@param headers table The HTTP headers to send.
---@return number code The HTTP response code.
---@return string data The server response data.
---@return table headers The HTTP response headers.
function dlm.http.get(url, headers) end

---Sends a HTTP(S) POST request to the given URL with the given headers and data and returns response data.\
---\
---Note that, depending on how the server is set up, the returned data may not be HTML.\
---\
---The `headers` table contains HTTP headers in key-value pairs, e.g. `{ name = "value" }`.\
---@param url string The URL to connect to.
---@param data string The URL to connect to.
---@param headers table The HTTP headers to send.
---@return number code The HTTP response code.
---@return string data The server response data.
---@return table headers The HTTP response headers.
function dlm.http.post(url, data, headers) end

--------------------
--xml
--------------------

--The XML library provides functions for working with XML data.
---@class DLMXml
dlm.xml = {}

---Parses and converts an XML data string to a Lua table.
---@param xml string The XML string.
---@return table data The parsed and converted XML data.
function dlm.xml.parseXmlString(xml) end

---Parses and converts an XML data string to a Lua table.
---@param xml string The XML string.
---@param handler 1 | 2 Which handler to use.
---@return table data The parsed and converted XML data.
---@deprecated
function dlm.xml.parseXmlString(xml, handler) end

---Loads and converts a Lua table to an XML data string.\
---\
---For the table structure, check the result of [parseXmlString](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.xml/#parsexmlstring).
---@param data table
---@param rootName string? The name of the XML root.
---@return string xml The generated XML string.
function dlm.xml.writeXmlString(data, rootName) end

--------------------
--GUI
--------------------
---@class DLMGui
dlm.gui = {}

---`Client-Only`\
---Loads an XML data string and tries to create a [GuiInterface](https://scrapmechanictools.com/lua/Game-Script-Environment/Userdata/GuiInterface/) from it.
---> **NOTE**\
---This function creates a temporary layout file on the hard drive.\
---You can manually clear this file using [clearTemporaryLayouts](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.gui/#cleartemporarylayouts).\
---Temporary layout files are also automatically cleared when the save file is closed.\
---The `settings` table structure is the same as the one for [sm.gui.createGuiFromLayout](https://scrapmechanictools.com/lua/Game-Script-Environment/Static-Functions/sm.gui/#createguifromlayout).\
---@param xml string
---@param destroyOnClose boolean
---@param settings GuiInterfaceSettings
---@return GuiInterface
function dlm.gui.createGuiFromXmlString(xml, destroyOnClose, settings) end

---`Client Only`\
---Clears temporary GUI layout files generated by [createGuiFromXmlString](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.gui/#createguifromxmlstring).\
---\
---Note that this also happens automatically when the game world/save is closed.
-->**NOTE**\
---You can call this function every tick, it is internally limited to every 5 ticks.\
---A temporary layout file will only be deleted a minimum of one tick after its creation.\
function dlm.gui.clearTemporaryLayouts() end

---This is a utility function. It generates a [hypertext](https://scrapmechanictools.com/lua/Game-Script-Environment/Static-Functions/sm.gui/#setinteractiontext) string using the given input.
---@param text string The text to format.
---@param textShadow boolean Whether the text should have a shadow or not. Defaults to false.
---@param background string The name of the text background. Defaults to "gui_keybinds_bg_orange".
---@param color Color The color of the text.
---@param spacing number The spacing between the text and the highlight box borders. Defaults to 9.
---@return string string The hypertext formatted string.
function dlm.gui.getHypertext(text, textShadow, background, color, spacing) end

---This is a utility function. It generates a [hypertext](https://scrapmechanictools.com/lua/Game-Script-Environment/Static-Functions/sm.gui/#setinteractiontext) image string using the given input.
---@param name string The name or path of the image, e.g. "$CONTENT_DATA/image.png".
---@param background string The name of the image background. Defaults to "gui_keybinds_bg".
---@param spacing number The spacing between the image and the highlight box borders. Defaults to 0.
---@return string string The hypertext image formatted string.
function dlm.gui.getHypertextImage(name, background, spacing) end

--------------------
--AUDIO
-------------------

---The DLM Audio library provides a way to load and play custom audio.\
---It does so using the FMOD Audio System (https://fmod.com).\
---See the [Custom Audio Tutorial](https://scrapmechanictools.com/modding_help/Tutorials/Custom_Audio/) and [DLM Code Examples](https://steamcommunity.com/sharedfiles/filedetails/?id=2888172201) mod for how to setup custom audio using this library.
--->**NOTE**\
---3D FMOD features are currently not implemented in the API - they will be added in a future DLM update.
---@class DLMAudio
dlm.audio = {}
--`Client-Only`\
--Updates the audio system.\
--You should call this every tick and make sure it is called after using any other audio-related function.\
--If this is not called correctly, unexpected behavior may occur.
---@return integer api_result The API result code. See dlm.constants.audio.api_results.
function dlm.audio.updateSystem() end

---`Client-Only`\
---Loads an FMOD audio bank file and, optionally, a GUIDs.txt file for said audio bank and creates an [AudioBank](https://scrapmechanictools.com/modapis/DLM/Objects/AudioBank/) object.\
---\
---Loading a GUIDs.txt file will allow you to use paths like `event:/xyz` for [createEvent](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.audio/#createevent).\
---This is the recommended method of implementing custom audio.\
---\
---Without a GUIDs.txt file, you have to create events using their GUID, e.g. `{4f84f5d2-5a6e-4bc7-89c7-8db8bec42f40}`.
---> **NOTE**\
---**This function requires the [content path to be setup](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm/#setupcontentpath) in order to work!**\
---\
---\
---When `asynchronous` is false, the game may freeze until the bank is loaded.\
---\
---\
---To avoid this, the bank can be loaded asynchronously by setting `asynchronous` to true.\
---Keep in mind that an asynchronously loaded bank **cannot** be used until it is fully loaded.\
---Use [getLoadingState](https://scrapmechanictools.com/modapis/DLM/Objects/AudioBank/#getloadingstate) to check if the bank has finished loading or not.
---@param filePath string The path ($CONTENT_uuid) to the audio bank file.
---@param asynchronous boolean Whether the bank should be loaded asynchronously or not. Defaults to false.
---@param guids_file string The path ($CONTENT_uuid) to the GUIDs.txt file for the bank.
---@return integer api_result The API result code. See dlm.constants.audio.api_results.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return AudioBank? bank The created AudioBank object.
function dlm.audio.loadBank(filePath, asynchronous, guids_file) end

---`Client-Only`\
---Creates an [AudioEvent](https://scrapmechanictools.com/modapis/DLM/Objects/AudioEvent/) object from a GUID or event path.
--->**NOTE**\
---In order to be able to use an **event path** (e.g. `event:/xyz`), you must pass in the [AudioBank](https://scrapmechanictools.com/modapis/DLM/Objects/AudioBank/)\
---object containing the event **and** the given bank **must** have been loaded with a GUIDs.txt file.\
---This is the recommended way of using custom audio.\
---If either of these conditions is not fulfilled, creating the event will fail.\
---\
---\
---If your bank was loaded without a GUIDs.txt file, you have to use the GUID of the sound (e.g. `{4f84f5d2-5a6e-4bc7-89c7-8db8bec42f40}`) to create the event.\
---If you are using a GUID to create an event, do **not** pass in a bank object, else the function will fail.
---@param name string The GUID or event path (if using a bank with GUIDs.txt) of the event.
---@param bank AudioBank The audio bank to load the event from. Only for event paths with GUIDs.txt!
---@return integer api_result The API result code. See dlm.constants.audio.api_results.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return AudioEvent event The created AudioEvent object. Can be nil if creating the event failed.
function dlm.audio.createEvent(name, bank) end

---The Input library provides a way to get keyboard and mouse input.
---An example of this function being used can be found in the [DLM Code Examples mod](https://steamcommunity.com/sharedfiles/filedetails/?id=2888172201).
---@class DLMInput
dlm.input = {}
---Gets the current state (pressed/not pressed) of a keyboard key or mouse button.\
---\
---See [dlm.constants.input](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.constants/#input) and the [Virtual-Key Codes list](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes) for a list of key codes.
---@param keyCode number The key code for the key to check, e.g. dlm.constants.input.enter.
---@return boolean state Whether the checked key is currently pressed or not.
function dlm.input.getKeyState(keyCode) end

--------------------
--OBJECTS
--------------------

---Associated namespace: [dlm.audio](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.audio/)\
---An object representing an FMOD Audio Bank loaded with [dlm.audio.loadBank](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.audio/#loadbank).
---@class AudioBank
AudioBank = {}

---`Client-Only`\
---Checks the loading state of the object's bank file.\
---This can be used to determine whether an asynchronously loaded bank has finished loading or not.
---@return integer api_result The API result code. See dlm.constants.audio.api_results.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return DLMFmodLoadingStates fmod_loading_state The bank loading state.
function AudioBank:getLoadingState() end

--`Client-Only`\
--Checks if the object's internal bank reference is valid or not.
---@return integer api_result The API result code. See dlm.constants.audio.api_results.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return boolean is_valid Whether the bank reference is valid or not.
function AudioBank:isValid() end

--`Client-Only`\
--Destroys the AudioBank object and unloads the bank file that belongs to it.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function AudioBank:destroy() end

---**Associated namespace:** [dlm.audio](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.audio/)\
---**Associated object type:** [EventInstance](https://scrapmechanictools.com/modapis/DLM/Objects/EventInstance/)\
---\
---An object representing an audio event created with [dlm.audio.createEvent](https://scrapmechanictools.com/modapis/DLM/Static-Functions/dlm.audio/#createevent).
---@class AudioEvent
AudioEvent = {}

--`Client-Only`\
--Gets the duration of the event in milliseconds.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return number | -1 length The duration of the event in milliseconds. May be -1 if the function failed.
function AudioEvent:getLength() end

---`Client-Only`\
---Creates an [EventInstance](https://scrapmechanictools.com/modapis/DLM/Objects/EventInstance/) object from this event.
---This EventInstance can be used to play the sound in the event.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return EventInstance EventInstance The created EventInstance object. May be nil if the function failed.
function AudioEvent:createInstance() end

---`Client-Only`\
---Checks whether the object's internal event reference is valid or not.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return boolean is_valid Whether the event reference is valid or not.
function AudioEvent:isValid() end

---`Client-Only`\
---Destroys the AudioEvent object and releases the internal event reference that belongs to it.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return EventInstance EventInstance The created EventInstance object. May be nil if the function failed.
function AudioEvent:destroy() end

---An object representing an instance of an [AudioEvent](https://scrapmechanictools.com/modapis/DLM/Objects/AudioEvent/), which can be used for audio playback.
---@class EventInstance
EventInstance = {}

---`Client-Only`\
---Starts playing the sound.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:start() end

---`Client-Only`\
---Stops playing the sound and resets its playback position back to the start.
---@param stopImmediate boolean Whether the sound should stop immediately or not. Defaults to false.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:stop(stopImmediate) end

---`Client-Only`\
---Gets the current playback state of the event instance.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return DLMFmodPlaybackStates fmod_playback_state The playback state
function EventInstance:getPlaybackState() end

---`Client-Only`\
---Sets whether the instance is paused or not.\
---A paused instance will not make any sound and its playback position will stay where it was at the time of pausing.\
---When un-pausing an instance, it will continue playing from its current playback position.
---@param paused boolean Whether the instance should be paused or not.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:setPaused(paused) end

---`Client-Only`\
---Gets whether the instance is currently paused or not.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return boolean paused Whether the instance is paused or not. May be false if the function failed.
function EventInstance:getPaused() end

---`Client-Only`\
---Sets the instance's pitch.\
---The default instance pitch is 1.
---@param pitch number The pitch
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:setPitch(pitch) end

---`Client-Only`\
---Gets the instance's pitch.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return number pitch The pitch. May be -1 if the function failed.
function EventInstance:getPitch() end

---`Client-Only`\
---Sets the instance's playback position in milliseconds.
---@param position integer The playback position
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:setPlaybackPosition(position) end

---`Client-Only`\
---Gets the instance's playback position in milliseconds.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return integer position The playback position. May be -1 if the function failed.
function EventInstance:getPlaybackPosition() end

---`Client-Only`\
---Sets the instance's volume level.\
---The default volume level is 1.\
---Values below this will lower the volume and values above will increase the volume.\
---Note that very high volume may lead to distortion.
---@param volume number The volume level
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:setVolume(volume) end

---Client-Only\
---Gets the instance's current volume level.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return number volume The volume level. May be -1 if the function failed.
function EventInstance:getVolume() end

---`Client-Only`\
---Sets a named parameter for the instance.
---@param name string The parameter name.
---@param value number The value.
---@param ignoreSeekSpeed boolean Whether the value should be set immediately or not. Defaults to false.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:setParameter(name, value, ignoreSeekSpeed) end

---`Client-Only`\
---Gets the value of a named parameter of the instance.
---@param name string The parameter name.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return number value The value.
function EventInstance:getParameter(name) end

---`Client-Only`\
---Checks if the object's internal instance reference is valid or not.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
---@return boolean is_valid Whether the instance reference is valid or not.
function EventInstance:isValid() end

---`Client-Only`\
---Destroys the EventInstance object and releases the internal event reference belonging to it.
---@return integer api_result The API result code. See `dlm.constants.audio.api_results`.
---@return integer fmod_result The FMOD result code. See `dlm.constants.audio.fmod_results`.
function EventInstance:destroy() end

--------------------
--Sm Stuff remove after better typings
--------------------

---@class GuiInterfaceSettings
---@field isHud boolean Whether the GUI is a HUD GUI or not.
---@field isInteractive boolean Whether the GUI can be interacted with or not.
---@field needsCursor boolean Whether the GUI "captures" the mouse or not.
---@field hidesHotbar boolean Whether the hotbar is hidden when the GUI is open or not.
---@field isOverlapped boolean ???
---@field backgroundAlpha number The transparency of the GUI background. 1 = opaque, 0 = transparent


---*Client only*
---Create a GUI from a layout file.
---@param layout string Path to the layout file
---@param destroyOnClose? boolean If true the gui is destroyed when closed, otherwise the gui can be reused.
---@param settings? GuiInterfaceSettings
---@return GuiInterface
function sm.gui.createGuiFromLayout(layout, destroyOnClose, settings) end
