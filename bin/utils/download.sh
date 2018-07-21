#!/bin/bash

##
# Download from a remote source.
#
# Checks for the existence of curl and wget, then downloads the remote file using the first available option.
#
# @param {string} remote  The remote file to download.
# @param {string} [local] Optional. The local filename to use. If it isn't passed, STDOUT is used.
#
# @return {bool} Whether the download succeeded or not.
##
download() {
    if command_exists "curl"; then
			curl -s -o "${2:--}" "$1"
    elif command_exists "wget"; then
			wget -nv -O "${2:--}" "$1"
    fi
}
