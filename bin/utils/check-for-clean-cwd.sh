#!/bin/bash

##
# Make sure there are no changes in the working tree.  Release builds should be
# traceable to a particular commit and reliably reproducible.
##
check_for_clean_cwd() {
	go_to_root

	changed=
	if ! git diff --exit-code > /dev/null; then
		changed="file(s) modified"
	elif ! git diff --cached --exit-code > /dev/null; then
		changed="file(s) staged"
	fi
	if [ ! -z "$changed" ]; then
		git status
		error_message "ERROR: Cannot build theme zip with dirty working tree. Commit your changes and try again."
		exit 0
	fi
}
