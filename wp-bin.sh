#!/bash

## Set mydir to the directory containing the script
## The ${var%pattern} format will remove the shortest match of
## pattern from the end of the string. Here, it will remove the
## script's name,. leaving only the directory.
mydir="${0%/*}"

source "$mydir"/utils/command-exists.sh
source "$mydir"/utils/download.sh
source "$mydir"/utils/in-array.sh
source "$mydir"/utils/go-to-root.sh
source "$mydir"/utils/get-package-version-number.sh
source "$mydir"/utils/message.sh
source "$mydir"/utils/check-for-clean-cwd.sh
source "$mydir"/utils/reset-cwd.sh
source "$mydir"/utils/rezip-with-version.sh
