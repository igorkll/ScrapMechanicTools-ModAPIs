---
sidebar_position: 6
title: NetworkClass
hide_title: true
sidebar-label: 'NetworkClass'
---

<br></br>

### getMaxPacketsCount()

Gets the maximun packets before overload.

<strong>Returns:</strong> <br></br>

- <code>maxpackets</code> [<strong> number </strong>]: The maximun packets.

---
### getPacketsCount()

Gets the total packets.

<strong>Returns:</strong> <br></br>

- <code>packets</code> [<strong> number </strong>]: The packet count.


---
### nextPacket()

Gets the next packet.

<strong>Returns:</strong> <br></br>

- <code>data</code> [<strong> string | json </strong>]: The packet

<blockquote><strong>SCI IMPROVEMENT: </strong>SCI has modified network ports to accept json data. if the packet is json, it will return as json data.</blockquote>

---
### send(str)

Sends data to the network port.

<strong>Returns:</strong> <br></br>

- <code>data</code> [<strong> string </strong>]: The path.

<blockquote><strong>SCI IMPROVEMENT: </strong>SCI has modified network ports to accept json data. you can send json data like the example below and it will return as lua json. since it uses sm.json.parseJsonString to convert it.</blockquote>

```json title="JSON data"
{"example": true}
```

---
### clear()

Clears all packets.

---