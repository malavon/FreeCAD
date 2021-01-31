#!/bin/sh

patch_dir="$(pwd)/patch"
patches=$(ls ${patch_dir})

# patches are committed wit the same line-endings as the files they patch
# if a patch has changed after rebasing etc, the file's line-endings have changed as well
for file in ${patches}
do
	echo Applying ${file}
	patch < ${patch_dir}/${file}
done

