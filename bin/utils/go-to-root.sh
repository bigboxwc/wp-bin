#!/bin/bash

##
# Change to the expected directory.
##
go_to_root() {
	cd $(git rev-parse --show-toplevel)
}
