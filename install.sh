#!/usr/bin/env sh

DIR="$(cd $(dirname $0) && pwd)"

for ENTRY in $DIR/*
do
	if [ $ENTRY = "${ENTRY}/install.sh" ]; then
		continue
	fi
	chmod a+x $ENTRY
	ln -sf $ENTRY "/usr/local/bin/$(basename $ENTRY)"
	echo $ENTRY
done

