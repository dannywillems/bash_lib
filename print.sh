#!/bin/bash
#===============================================================================
#
#          FILE: print.sh
#
#         USAGE: ./print.sh
#
#   DESCRIPTION: set of functions to print
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Danny Willems (contact@danny-willems.be)
#  ORGANIZATION:
#       CREATED: 01/29/2016 19:41
#      REVISION:  ---
#===============================================================================

################################################################################
# Print in color

BLIB_CLR_BLACK="\033[0;30m"
BLIB_CLR_RED="\033[0;31m"
BLIB_CLR_GREEN="\033[0;32m"
BLIB_CLR_ORANGE="\033[0;33m"
BLIB_CLR_BLUE="\033[0;34m"
BLIB_CLR_PURPLE="\033[0;35m"
BLIB_CLR_CYAN='\033[0;36m'
BLIB_CLR_LIGHT_GREY="\033[0;37m"
BLIB_CLR_DARK_GREY="\033[1;30m"
BLIB_CLR_LIGHT_RED="\033[1;31m"
BLIB_CLR_LIGHT_GREEN="\033[1;32m"
BLIB_CLR_YELLOW="\033[1;33m"
BLIB_CLR_LIGHT_BLUE="\033[1;34m"
BLIB_CLR_LIGHT_PURPLE="\033[1;35m"
BLIB_CLR_LIGHT_CYAN="\033[1;36m"
BLIB_CLR_LIGHT_WHITE="\033[1;37m"
BLIB_CLR_NO="\033[0m"

echo_color ()
{
	COLOR=$1
	TEXT=$2
	echo -e "${COLOR}${TEXT}${BLIB_CLR_NO}"
}

echo_info ()
{
	TEXT=$1
	echo_color "${BLIB_CLR_CYAN}" "${TEXT}"
}

echo_error ()
{
	TEXT=$1
	echo_color "${BLIB_CLR_RED}" "${TEXT}"
}

echo_success ()
{
	TEXT=$1
	echo_color "${BLIB_CLR_GREEN}" "${TEXT}"
}
################################################################################

################################################################################
# Print n times a string
echo_n ()
{
	TEXT=$1
	TIMES=$2
	for i in `seq 1 ${TIMES}`
	do
		echo -e -n ${TEXT}
	done
	echo ""
}

echo_n_color ()
{
	COLOR=$1
	TEXT=$2
	TIMES=$3
	echo -n -e ${COLOR}
	echo_n ${TEXT} ${TIMES}
	echo -e -n ${BLIB_CLR_NO}
}

echo_n_info ()
{
	TEXT=$1
	TIMES=$2
	echo_n_color ${BLIB_CLR_CYAN} ${TEXT} ${TIMES}
}

echo_n_error ()
{
	TEXT=$1
	TIMES=$2
	echo_n_color ${BLIB_CLR_RED} ${TEXT} ${TIMES}
}

echo_n_success ()
{
	TEXT=$1
	TIMES=$2
	echo_n_color ${BLIB_CLR_GREEN} ${TEXT} ${TIMES}
}
################################################################################

################################################################################
echo_n_endl ()
{
	TEXT=$1
	TIMES=$2
	for i in `seq 0 ${TIMES}`
	do
		echo -e ${TEXT}
	done
}

echo_n_endl_color ()
{
	COLOR=$1
	TEXT=$2
	TIMES=$3
	echo -e -n ${COLOR}
	echo_n_endl ${TEXT} ${TIMES}
	echo -e -n ${BLIB_CLR_NO}
}

echo_n_endl_info ()
{
	TEXT=$1
	TIMES=$2
	echo_n_endl_color ${BLIB_CLR_CYAN} ${TEXT} ${TIMES}
}

echo_n_endl_error ()
{
	TEXT=$1
	TIMES=$2
	echo_n_endl_color ${BLIB_CLR_RED} ${TEXT} ${TIMES}
}

echo_n_endl_success ()
{
	TEXT=$1
	TIMES=$2
	echo_n_endl_color ${BLIB_CLR_GREEN} ${TEXT} ${TIMES}
}
################################################################################
