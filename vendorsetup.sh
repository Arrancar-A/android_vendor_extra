#!/usr/bin/env bash

VENDOR_EXTRA_PATH="$(gettop)/vendor/extra"
VENDOR_PATCHES_PATH="${VENDOR_EXTRA_PATH}/patches"

if [[ "${APPLY_PATCHES}" == true ]]; then
	for project_name in $(
		cd "${VENDOR_PATCHES_PATH}" 
		echo */
		); do
		project_path="$(echo $project_name | tr '_' '/')"
		cd "$(gettop)/${project_path}" 
		git am "${VENDOR_PATCHES_PATH}/${project_name}"/*.patch --no-gpg-sign 
		git am --abort &> /dev/null
	done

	croot
fi

