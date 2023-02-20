---
sidebar_position: 4
title: DisplayClass
hide_title: true
sidebar-label: 'DisplayClass'
---

<br></br>

### getWidth()

Gets the display width.

<strong>Returns:</strong> <br></br>

- <code>width</code> [<strong> number </strong>]: The display width


---

### getHeight()

Gets the display height.

<strong>Returns:</strong> <br></br>

- <code>height</code> [<strong> number </strong>]: The display height.


---

### clear(color)

Clears the entire display with a new color

<strong>Arguments:</strong> <br></br>

- <code>color</code> [<strong> string </strong>]: The new color.


---

### drawPixel(x, y, color)

Draws a single pixel.

<strong>Arguments:</strong> <br></br>

- <code>x-pos</code> [<strong> number </strong>]: The X position.
- <code>y-pos</code> [<strong> number </strong>]: The Y position.
- <code>color</code> [<strong> string </strong>]: The color of the pixel.

---

### drawRect(x, y, w, h, color)

Draws a rectangle.

<strong>Arguments:</strong> <br></br>

- <code>x-pos</code> [<strong> number </strong>]: The X position.
- <code>y-pos</code> [<strong> number </strong>]: The Y position.
- <code>width</code> [<strong> number </strong>]: The width of the rectangle.
- <code>height</code> [<strong> number </strong>]: The height of the rectangle.
- <code>color</code> [<strong> string </strong>]: The color of the rectangle.


---

### fillRect(x, y, w, h, color)

Draws a fiiled rectangle.

<strong>Arguments:</strong> <br></br>

- <code>x-pos</code> [<strong> number </strong>]: The X position.
- <code>y-pos</code> [<strong> number </strong>]: The Y position.
- <code>width</code> [<strong> number </strong>]: The width of the rectangle.
- <code>height</code> [<strong> number </strong>]: The height of the rectangle.
- <code>color</code> [<strong> string </strong>]: The color of the rectangle.


---

### drawCircle(x, y, r, color)

Draws a circle.

<strong>Arguments:</strong> <br></br>

- <code>x-pos</code> [<strong> number </strong>]: The X position.
- <code>y-pos</code> [<strong> number </strong>]: The Y position.
- <code>size</code> [<strong> number </strong>]: The size of the circle.
- <code>color</code> [<strong> string </strong>]: The color of the circle.

---

### fillCircle(x, y, r, color)

Draws a filled circle.

<strong>Arguments:</strong> <br></br>

- <code>x-pos</code> [<strong> number </strong>]: The X position.
- <code>y-pos</code> [<strong> number </strong>]: The Y position.
- <code>size</code> [<strong> number </strong>]: The size of the circle.
- <code>color</code> [<strong> string </strong>]: The color of the circle.


---

### drawLine(x, y, x2, y2, color)

Description sus.

<strong>Arguments:</strong> <br></br>

- <code>x-pos</code> [<strong> number </strong>]: The X position.
- <code>y-pos</code> [<strong> number </strong>]: The Y position.
- <code>x2-pos</code> [<strong> number </strong>]: The seccond X position.
- <code>y2-pos</code> [<strong> number </strong>]: The seccond Y position.
- <code>color</code> [<strong> string </strong>]: The color of the line.

---

### drawText(x, y, text, color)

Draws text on the screen.

<strong>Arguments:</strong> <br></br>

- <code>x-pos</code> [<strong> number </strong>]: The X position.
- <code>y-pos</code> [<strong> number </strong>]: The Y position.
- <code>text</code> [<strong> string </strong>]: The text displayed on the screen.
- <code>color</code> [<strong> string </strong>]: The color of the text.

<blockquote><strong>SCI IMPROVEMENT: </strong>The character list is expanded. you can print more characters than before.</blockquote>

---

### optimize()

Optimizes the display. 

<blockquote><strong>NOTE: </strong>Only use this function if the display is not getting cleared a ton.</blockquote>

---

### update()

Updates the display.

---

### setClicksAllowed(bool)

Sets the screen to be clickable or not.

<strong>Arguments:</strong> <br></br>

- <code>touchscreen</code> [<strong> boolean </strong>]: Turn the the screen clickable or not.


---

### getClicksAllowed()

Gets if the screen is clickable
<strong>Returns:</strong> <br></br>

- <code>touchscreen</code> [<strong> boolean </strong>]: If it is clickable.


---

### getClick() -> { 1: x, 2: y, 3: "pressed"|"drag"|"released", 4: 1|2 }

Gets the click.

<strong>Returns:</strong> <br></br>

- <code>clicktable</code> [<strong> table </strong>]: The click data.


---

### setMaxClicks(n: int [1; 16]), -- sets the buffer siz

Sets the maximun clicks allowed.

<strong>Arguments:</strong> <br></br>

- <code>number</code> [<strong> number </strong>]: The new maximun clicks.


---

### getMaxClicks()

Gets the maximun clicks allowed.

<strong>Returns:</strong> <br></br>

- <code>number</code> [<strong> number </strong>]: The maximun clicks allowed.


---

### clearClicks()

Clears all clicks.

---

### setRenderAtDistance(bool)

Sets if it sould always render or be at a range. (A performance increase when enabled.)
<strong>Arguments:</strong> <br></br>

- <code>renderatdistance</code> [<strong> boolean </strong>]: The new value


---

### getRenderAtDistance()

Gets if it sould be rendered at range or always rendered.

<strong>Returns:</strong> <br></br>

- <code>isrenderatdistance</code> [<strong> boolean </strong>]: The current value.


---
