#!/bin/bash - 
#===============================================================================
#
#          FILE: Tyrells._hw3.sh
# 
#         USAGE: ./Tyrells._hw3.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Michael Shaw (), Michaelshaw3@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/10/2017 20:38
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


exit 0

#function for the help option
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
	a) Tyrells_hw3.sed=$OPTARG
		;;
	s) Tyrells_hw3.awk=$OPTARG
		;;
	i) presidents.csv=$OPTARG	
		;;
	*) #Checks for illegal options like empty or -X
		usage
		;;
	esac
done

files='-a Tyrells_hw3.sed | -s Tyrells_hw3.awk | -i president.csv'

if [[ -a == Tyrells_hw3.sed -s == Tyrells_hw3.awk   -i == Tyrells_hw3.sh ]]
then
	echo "Piping the file"
	$files
