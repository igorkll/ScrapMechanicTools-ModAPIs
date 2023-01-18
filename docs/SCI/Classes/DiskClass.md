---
sidebar_position: 3
title: DiskClass
hide_title: true
sidebar-label: 'DiskClass'
---

<br></br>

### createFile(path)

Creates a file with the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.


---

### readFile(path)

Reads a file with the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

<strong>Returns:</strong> <br></br>

- <code>data</code> [<strong> string </strong>]: The path.

---

### writeFile(path, data)

Writes the file from the provided path and replaces the data inside of it with the provided data.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.
- <code>data</code> [<strong> string </strong>]: The data to write.

---

### deleteFile(path)

Deletes a file with the provided path

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

---

### hasFile(path)

If the file exist's of the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

<strong>Returns:</strong> <br></br>

- <code>hasFile</code> [<strong> boolean </strong>]: If it has it, return true, else false.

---

### getFileSize(path)

Gets the file size of the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

<strong>Returns:</strong> <br></br>

- <code>filesize</code> [<strong> string </strong>]: The size of the file.


---

### createFolder(path)

Creates a folder of the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.


---

### deleteFolder(path)

Deletes a folder with the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.


---

### hasFolder(path)

If it has the folder of the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

<strong>Returns:</strong> <br></br>

- <code>hasFolder</code> [<strong> boolean </strong>]: If it has it, return true, else false.
---

### getUsedSize()

Gets the used size of the entire harddrive.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

<strong>Returns:</strong> <br></br>

- <code>size</code> [<strong> string </strong>]: The used size of the harddrive.

---

### getFileList(path)

Gets all files in a folder of the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

<strong>Returns:</strong> <br></br>

- <code>files</code> [<strong> DiskClass </strong>]: All files in the folder.

---

### getFolderList(path)

gets all folders in a folder of the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

<strong>Returns:</strong> <br></br>

- <code>folders</code> [<strong> DiskClass </strong>]: All folders in the folder.


---

### openFolder(path)

Opens a folder of the provided path.

<strong>Arguments:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The path.

---

### getCurrentPath()

Gets the current path.

<strong>Returns:</strong> <br></br>

- <code>path</code> [<strong> string </strong>]: The current path.


---
