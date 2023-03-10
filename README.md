# BashScripting
Openwebinars course about bash scripting

## Structure
* Different scripts done through the course
  * Section1
    * script1.sh
  * Section 2
    * lists.sh
    * stringandnumber.sh
    * syntax.sh
    * challenge1.sh
  * Section3
    * firstInput.sh  
    * inputsPassedAsArguments.sh
    * read.sh
    * allKindOfInputs.sh
    * challenge2.sh
  * Section4  
    * while.sh
    * for.sh
    * case.sh
    * challenge3.sh
  * Section5
    * readfile1.sh  
    * readfile2.sh  
    * challenge4.sh
  * Exam
    * question1.sh
    * question2.sh
    * question3.sh 
    * question4.sh
    * question5.sh 
    * question6.sh
    * question7.sh 




## How to execute?
* Without inputs
  * `./ScriptName`
    * If you get "zsh: permission denid" -->
      * `chmod 750 NameOfTheScript` gives read / write/ execute rights to the owner's script
      * `chmod 111 NameOfTheScript` gives execute rights to the owner's script
  * `AbsolutePath./ScriptName`
  * `bash AbsoluteOrRelativePathToTheBashScript` / `sh AbsoluteOrRelativePathToTheBashScript` / `source AbsoluteOrRelativePathToTheBashScript`
  * Place the script in special directories & `ScriptName` in any path
    * usr/local/bin
    * usr/bin 
* With inputs
  * `SomeOfThePreviousOptions Input1 Input2 ....`
    * Input0
      * For all script's command executors, except to `source` 
        * ScriptName
      * For `source` 
        * bash



## Note:
* Not mandatory to indicate the file extension ".sh", but it's a good practice.
* `#!/bin/bash`
    * Invoke bash interpreter
* `sh -x ScriptName`  / `bash -x ScriptName`
  * Launch a script with traces about all the process
    * "+ ..." === code line which it's executing
* `sh -n ScriptName`  / `bash -n ScriptName`
  * Check script's syntax
    * If no output is got === no syntax errors
* Reference links
  * https://tldp.org/
    * Main documentation
  * https://www.shellcheck.net/
    * Online tool to check your scripts
  * https://ss64.com/osx/
    * Key MacOS terminal commands
