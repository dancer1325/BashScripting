# BashScripting
Openwebinars course about bash scripting

## Structure
* Different scripts done through the course

## How to execute?
* `./ScriptName`
  * If you get "zsh: permission denid" -->
    * `chmod 750 NameOfTheScript` gives read / write/ execute rights to the owner's script
    * `chmod 111 NameOfTheScript` gives execute rights to the owner's script
* `AbsolutePath./ScriptName`
* `bash AbsoluteOrRelativePathToTheBashScript` / `sh AbsoluteOrRelativePathToTheBashScript`
* Place the script in special directories & `ScriptName` in any path
  * usr/local/bin
  * usr/bin 


## Note:
* Not mandatory to indicate the file extension ".sh", but it's a good practice.
* `#!/bin/bash`
    * Invoke bash interpreter