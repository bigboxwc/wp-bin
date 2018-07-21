#!/bin/bash

##
# Unzip a previously created archive and rezip with version appended.
##
rezip_with_version() {
	go_to_root

	PACKAGE_NAME=$1
	PACKAGE_VERSION=$2

	unzip ${PACKAGE_NAME}.zip -d ${PACKAGE_NAME} && zip -r "$PACKAGE_NAME-$PACKAGE_VERSION.zip" ${PACKAGE_NAME}
	rm -rf ${PACKAGE_NAME} && rm -f ${PACKAGE_NAME}.zip
}
