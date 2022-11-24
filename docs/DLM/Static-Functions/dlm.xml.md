---
sidebar_position: 5
title: dlm.xml
hide_title: true
sidebar-label: 'dlm.xml'
---

<br></br>

## dlm.xml

The XML library provides functions for working with XML data.

### parseXmlString

```lua
local data = dlm.xml.parseXmlString( xml, handler )
```

Parses and converts an XML data string to a Lua table.

:::info note
The <code>handler</code> parameter is deprecated in DLM version 2.0 and will be fully removed in DLM version 3.0.
:::

<strong>Arguments:</strong> <br></br>

- <code>xml</code> [<strong> string </strong>]: The XML string. <br></br>
- <code>handler</code> [<strong> number </strong>]: Which handler to use (1 or 2). (deprecated) <br></br>

<strong>Returns:</strong> <br></br>

- <code>data</code> [<strong> table </strong>]: The parsed and converted XML data. <br></br>

---

### writeXmlString

```lua
local xml = dlm.xml.writeXmlString( data, rootName )
```

Loads and converts a Lua table to an XML data string.

For the table structure, check the result of [parseXmlString](#parsexmlstring).

<strong>Arguments:</strong> <br></br>

- <code>data</code> [<strong> table </strong>]: The Lua table containing XML data. <br></br>
- <code>rootName</code> [<strong> string </strong>]: The name of the XML root. Optional. <br></br>

<strong>Returns:</strong> <br></br>

- <code>xml</code> [<strong> string </strong>]: The generated XML string. <br></br>

---
