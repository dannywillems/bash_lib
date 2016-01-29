#!/bin/bash
#===============================================================================
#
#          FILE: test_print.sh
#
#         USAGE: ./test_print.sh
#
#   DESCRIPTION: Test for the print.sh
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Danny Willems (contact@danny-willems.be)
#  ORGANIZATION:
#       CREATED: 01/29/2016 21:08
#      REVISION:  ---
#===============================================================================

source ../print.sh

echo_n_info "-" 80
echo_info "This is an info text printed in cyan."
echo_success "This is a success message printed in green."
echo_error "This is an error message printed in red."
echo_color "${BLIB_CLR_LIGHT_GREY}" "This is a message printed in grey."
echo_color "${BLIB_CLR_YELLOW}" "This is a message printed in yellow."
echo "This message is in the default color."
echo_n_info "-" 80

echo_n_endl_info "Test" 5
