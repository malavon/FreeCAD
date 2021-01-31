#!/bin/sh

patch_dir="/usr/local/poudriere/ports/default/cad/freecad/files/"
patches=$(ls ${patch_dir})

for file in ${patches}
do
	patch < ${patch_dir}${file}
done

