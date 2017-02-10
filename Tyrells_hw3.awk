#!user/bin/awk -f

# create an awk file using substrings to extract a givin field
#		of specif years 1900 - present day

BEGIN{
	FS=","
	}
	{	
	if(substr($4,length($4)-3)+0>1900)
	print $2 ", " $4 " - " $5;
	}
END {
	}

