---
sidebar_position: 4
title: dlm.http
hide_title: true
sidebar-label: 'dlm.http'
---

<br></br>

## dlm.http

The HTTP library allows for communicating with outside services using the HTTP(S) protocol.

:::caution warning
Due to the Lua VM being single-threaded, using any function in this library will <br></br>
<strong>freeze the game</strong> until a response is received or until the request times out! <br></br>
You should keep this in mind while working with this library and attempt to send as <br></br>
little amount of requests as possible. <br></br>

<strong>There are plans to fix this in a future DLM update.</strong>
:::

### get

```lua
local code, data, headers = dlm.http.get( url, headers )
```

Sends a HTTP(S) GET request to the given URL with the given headers and returns response data.

Note that, depending on how the server is set up, the returned data may not be HTML.

The <code>headers</code> table contains HTTP headers in key-value pairs, e.g. <code>{ name = "value" }</code>.

<strong>Arguments:</strong> <br></br>

- <code>url</code> [<strong> string </strong>]: The URL to connect to. <br></br>
- <code>headers</code> [<strong> table </strong>]: The HTTP headers to send. <br></br>

<strong>Returns:</strong> <br></br>

- <code>code</code> [<strong> number </strong>]: The HTTP response code. <br></br>
- <code>data</code> [<strong> string </strong>]: The server response data. <br></br>
- <code>headers</code> [<strong> table </strong>]: The HTTP response headers. <br></br>

---

### post

```lua
local code, data, headers = dlm.http.post( url, data, headers )
```

Sends a HTTP(S) POST request to the given URL with the given headers and data and returns response data.

Note that, depending on how the server is set up, the returned data may not be HTML.

The <code>headers</code> table contains HTTP headers in key-value pairs, e.g. <code>{ name = "value" }</code>.

<strong>Arguments:</strong> <br></br>

- <code>url</code> [<strong> string </strong>]: The URL to connect to. <br></br>
- <code>data</code> [<strong> string </strong>]: The data to send to the server. <br></br>
- <code>headers</code> [<strong> table </strong>]: The HTTP headers to send. <br></br>

<strong>Returns:</strong> <br></br>

- <code>code</code> [<strong> number </strong>]: The HTTP response code. <br></br>
- <code>data</code> [<strong> string </strong>]: The server response data. <br></br>
- <code>headers</code> [<strong> table </strong>]: The HTTP response headers. <br></br>

---

