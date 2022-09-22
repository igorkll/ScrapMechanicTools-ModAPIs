---
sidebar_position: 11
title: ACM.game
hide_title: true
sidebar-label: 'ACM.game'
---

<br></br>

## ACM.game

The <code>game</code> library contains functions related to generic game-related things.

### registerChatCommand

```lua
ACM.game.registerChatCommand( name, params, helpText )
```
<code>Server-Only</code> <br></br>

Registers a custom chat command.

The command can be received by any registered [Event Listeners](/ACM/Static-Functions/acm.event#addeventlistener) by listening for the <code>"sv_ev_onChatCommand"</code> game event.

:::info note
A chat command with a given name can only be registered once.

The following commands are <strong>blacklisted</strong> and cannot be registered: <br></br>
"/settings" <br></br>
"/test" <br></br>
"/ignore" <br></br>
"/reset" <br></br>
"/restart"
:::

<strong>Arguments:</strong> <br></br>

- <code>name</code> [<strong> string </strong>]: The command name, e.g. "/customCommand".
- <code>params</code> [<strong> table </strong>]: Extra command parameters. Pass an empty table for no parameters.
- <code>helpText</code> [<strong> Color </strong>]: The text that is displayed when using <code>/help</code> on the command.

---

### queueChatMessage

```lua
ACM.game.queueChatMessage( message, priority )
```
<code>Client-Only</code> <br></br>

Queues a chat message to be displayed <strong>after</strong> the ACM "welcome" text.

The <code>priority</code> parameter controls the order in which the messages are sent - it ranges <br></br>
from <code>1 - 5</code>, where a lower number means the message is sent earlier and a higher number <br></br>
means the message is sent later. <br></br>
Messages with a priority outside of the <code>1 - 5</code> range will never be sent.

<strong>Arguments:</strong> <br></br>

- <code>message</code> [<strong> string </strong>]: The message to be queued.
- <code>priority</code> [<strong> number </strong>]: The message priority. Defaults to 1.

---
