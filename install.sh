#!/usr/bin/env sh


DIR="$(cd $(dirname $0) && pwd)"

# DELETING COMMAND TOOLS
if [ $1 = "-d" ]; then

	echo "DELETING COMMAND TOOLS"

	for ENTRY in $DIR/*
	do
		if [ $ENTRY = "${ENTRY}/install.sh" ]; then
#!/usr/bin/env sh



DIR="$(cd $(dirname $0) && pwd)"

# DELETING COMMAND TOOLS
if [ $1 = "-d" ]; then

	echo "DELETING COMMAND TOOLS"

	for ENTRY in $DIR/*
	do
		if [ $ENTRY = "${ENTRY}/install.sh" ]; then
			continue
		fi
		rm "/usr/local/bin/$(basename $ENTRY)"
		echo "REMOVING SYMLINK: $ENTRY"
	done
	exit
fi

# INSTALLING COMMAND TOOLS
echo "INSTALLING COMMAND TOOLS"

for ENTRY in $DIR/*
do
	if [ $ENTRY = "${ENTRY}/install.sh" ]; then
		continue
	fi
	chmod a+x $ENTRY
	ln -sf $ENTRY "/usr/local/bin/$(basename $ENTRY)"
	echo "ADDING SYMLINK: $ENTRY"
done
			continue
		fi
		rm "/usr/local/bin/$(basename $ENTRY)"
		echo "REMOVING SYMLINK: $ENTRY"
	done
	exit
fi

# INSTALLING COMMAND TOOLS
echo "INSTALLING COMMAND TOOLS"

for ENTRY in $DIR/*
do
	if [ $ENTRY = "${ENTRY}/install.sh" ]; then
		continue
	fi
	chmod a+x $ENTRY
	ln -sf $ENTRY "/usr/local/bin/$(basename $ENTRY)"
	echo "ADDING SYMLINK: $ENTRY"
done
