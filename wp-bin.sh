#!/bin/bash

source "$(dirname "$0")/wp-bin/bin/utils/command-exists.sh"
source "$(dirname "$0")/wp-bin/bin/utils/download.sh"
source "$(dirname "$0")/wp-bin/bin/utils/in-array.sh"
source "$(dirname "$0")/wp-bin/bin/utils/go-to-root.sh"
source "$(dirname "$0")/wp-bin/bin/utils/get-package-version-number.sh"
source "$(dirname "$0")/wp-bin/bin/utils/message.sh"
source "$(dirname "$0")/wp-bin/bin/utils/check-for-clean-cwd.sh"
source "$(dirname "$0")/wp-bin/bin/utils/reset-cwd.sh"
source "$(dirname "$0")/wp-bin/bin/utils/rezip-with-version.sh"
