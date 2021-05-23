#!/bin/sh

for entry in *
do
	if [ $entry = "install.sh" ]; then
		continue
	fi
	ln -sf $(pwd)/$entry "/usr/local/bin/$entry"
	echo $(pwd)/$entry
done

