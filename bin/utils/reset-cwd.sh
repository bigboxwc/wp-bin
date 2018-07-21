#!/bin/bash

##
# Reset current working directory to clean.
#
# Do a dry run of the repository reset. Prompting the user for a list of all
# files that will be removed should prevent them from losing important files!
##
reset_cwd() {
	go_to_root

	status_message "Resetting the repository to pristine condition."

	git clean -xdf --dry-run

	echo '' # Blank line.

	if ask "$(error_message "About to delete everything above! Is this okay?")" Y; then
		# Remove ignored files to reset repository to pristine condition. Previous
		# test ensures that changed files abort the plugin build.
		status_message "Cleaning working directory..."
		git clean -xdf
	else
		error_message "Aborting."
		exit 0
	fi
}
