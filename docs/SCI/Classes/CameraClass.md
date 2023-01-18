---
sidebar_position: 1
title: CameraClass
hide_title: true
sidebar-label: 'CameraClass'
---

<br></br>

### drawColor(display)

Draws the display with color only.

<strong>Arguments:</strong> <br></br>

- <code>display</code> [<strong> DisplayClass </strong>]: The display to draw.

---

### drawDepth(display, baseColor)

Draws the display with Depth only.

<strong>Arguments:</strong> <br></br>

- <code>display</code> [<strong> DisplayClass </strong>]: The display to draw.
- <code>baseColor</code> [<strong> string </strong>]: The baseColor.

---

### drawColorWithDepth(display)

Draws the display with color AND depth.

<strong>Arguments:</strong> <br></br>

- <code>display</code> [<strong> DisplayClass </strong>]: The display to draw.

### setStep(int)
Sets the step.

<strong>Arguments:</strong> <br></br>

- <code>step</code> [<strong> number </strong>]: The new step.

### getStep()
Get's the step.

<strong>Returns:</strong> <br></br>

- <code>step</code> [<strong> number </strong>]: The current step.

### setDistance(num)
Sets the Distance.

<strong>Arguments:</strong> <br></br>

- <code>distance</code> [<strong> number </strong>]: The new distance.

### getDistance(num)
Get's the Distance.

<strong>Returns:</strong> <br></br>

- <code>distance</code> [<strong> number </strong>]: The current distance.

### setFov(num)
Sets's the Fov.

<strong>Arguments:</strong> <br></br>

- <code>fov</code> [<strong> number </strong>]: The new fov.

### getFov()
Get's the Fov.

<strong>Returns:</strong> <br></br>

- <code>fov</code> [<strong> number </strong>]: The current distance.

### getNextPixel()
Get's the next pixel.

<strong>Returns:</strong> <br></br>

- <code>pixel</code> [<strong> number </strong>]: The next pixel.

### resetCounter()
Resets the pixel count to 0