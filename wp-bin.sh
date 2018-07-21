#!/bash

# Set mydir to the directory containing the script
mydir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"

source "$mydir"/bin/utils/command-exists.sh
source "$mydir"/bin/utils/download.sh
source "$mydir"/bin/utils/in-array.sh
source "$mydir"/bin/utils/go-to-root.sh
source "$mydir"/bin/utils/get-package-version-number.sh
source "$mydir"/bin/utils/message.sh
source "$mydir"/bin/utils/check-for-clean-cwd.sh
source "$mydir"/bin/utils/reset-cwd.sh
source "$mydir"/bin/utils/rezip-with-version.sh
