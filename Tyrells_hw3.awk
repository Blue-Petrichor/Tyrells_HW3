#!bin/awk

# create an awk file using substrings to extract a givin field
#		of specif years

BEGIN {FS = ","}
{
	print $4 " " $5
}


