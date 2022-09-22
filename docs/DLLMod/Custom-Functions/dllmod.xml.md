---
sidebar_position: 2
title: dllmod.xml
hide_title: true
sidebar-label: 'dllmod.xml'
---

<br></br>

## dllmod.xml

The XML library provides functions for working with XML data.

### parseXmlString

```lua
local data = dllmod.xml.parseXmlString( xml, handler )
```

Parses and converts an XML data string to a Lua table.

The <code>handler</code> parameter defines how the XML data is handled: <br></br>
	Handler 1 parses the XML data and returns it as a Lua table (default). <br></br>
	Handler 2 prints the data to the console and does NOT return anything (useful for debugging).

<strong>Arguments:</strong> <br></br>

- <code>xml</code> [<strong> string </strong>]: The XML string. <br></br>
- <code>handler</code> [<strong> number </strong>]: Which handler to use (1 or 2). Defaults to 1. <br></br>

<strong>Returns:</strong> <br></br>

- <code>data</code> [<strong> table </strong>]: The parsed and converted XML data. <br></br>

---

### writeXmlString

```lua
local xml = dllmod.xml.parseXmlString( data, rootName )
```

Loads and converts a Lua table to an XML data string.

For the table structure, check the result of [parseXmlString](#parsexmlstring).

<strong>Arguments:</strong> <br></br>

- <code>data</code> [<strong> table </strong>]: The Lua table containing XML data. <br></br>
- <code>rootName</code> [<strong> string </strong>]: The name of the XML root. Optional. <br></br>

<strong>Returns:</strong> <br></br>

- <code>xml</code> [<strong> string </strong>]: The generated XML string. <br></br>

---
