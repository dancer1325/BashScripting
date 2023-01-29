#!/bin/bash
# Previous line is to call to bash interpreter

# Display first input

echo "firstInput.sh"
echo "$0"

# Execute this script with all the diferent script's command executors

# 1. Get ScriptName  -- Execute it via --
# 1.1 `./ScriptName`
# 1.2 `AbsolutePath./ScriptName`
# 1.3 `bash AbsoluteOrRelativePathToTheBashScript` / `sh AbsoluteOrRelativePathToTheBashScript`
# 1.4 place the script in special directories & `ScriptName`

# 2. Get bash
# 2.1 `source AbsoluteOrRelativePathToTheBashScript`