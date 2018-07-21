#!/bin/bash

##
# Get version number from package.json
#
# @returns {string} Version number set in package.json.
##
get_package_version_number() {
	go_to_root
	cat package.json | jq -r .version
}
