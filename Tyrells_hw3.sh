#!/bin/bash - 
#===============================================================================
#
#          FILE: Tyrells.hw3.sh
# 
#         USAGE: ./Tyrells.hw3.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tyrells group
#  ORGANIZATION: 
#       CREATED: 02/10/2017 20:27
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
#needs to add files
usage()
{
	echo "Invalid option or missing params:"
	echo "Usage: Tyrells_hw3.sh  ./$0 [-a Tyrells_hw3.sed ] [-s Tyrells_hw3.awk ]  [ -i presidents.csv]"
    echo " [filename.sed][filename.awk][filename.csv]"
	echo "Three arguments are required!"
exit 1
}

# Validate the user
validate_user="$UID"

if [[ ! $validate_user == 0 ]]
then
	echo
	echo -e  "You are not the root user!\nYour id_number is $UID.\n"
	else
		echo
		echo -e  "You are the root user!\nYour id_number is $UID.\n"
fi

# Check for help
if [[ $1 == "--help" ]]
then
	usage
fi

#expecting options -a <>, -s <>, -i <>
#Can be in any order

while getopts ":a:s:i:" opt
do
case $opt in
	a)  file1=$OPTARG
		;;
	s)  file2=$OPTARG
		;;
	i)  file3=$OPTARG.
		;;
	*) #Checks for illegal options like empty or -X
		usage
		;;
	esac
done
files='file1 | file2 | file3'

echo "Piping the file"
$files > out_put_file.sh


exit 0

