#/bin/bash

search_libs()
{
	path=/usr/local/lib
	link_files=""
	for lf in `ls $path | grep .*[.]a`;
	do
		length=`expr length $lf`
		newlength=$((length-4))
		name=`expr substr $lf 3 $newlength`
		link_file="-l$name"
		link_files="$link_files $link_file"
	done

	echo $link_files
}

search_libs
