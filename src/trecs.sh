#!/bin/bash

#############################################################################################
# Argument parsing

docontinuum=false
dohi=false
doxmatch=false
while [ $# -gt 0 ]
do
    case $1 in
	-c|--continuum)
	    docontinuum=true
	    shift
	    ;;
	-i|--HI)
	    dohi=true
	    shift
	    ;;
	-x|--xmatch)
	    doxmatch=true
	    shift
	    ;;
	-p|--params)
	    params=$2
	    if [ ! -f "$params" ] ; then
		echo "Error: provided parameter file does not exist or is not a file"
		exit 666
	    fi
	    shift
	    ;;
	-h|--help)
	    cat <<EOF >&2
********************************************************************
********************************************************************
****      T-RECS, The Tiered Radio Extragalactic Continuum      ****
****              Welcome to the master script!                 ****
****                        RRRAWRRR!                           ****
********************************************************************
********************************************************************

Usage:
    $(basename $0) [OPTIONAL(s)] -p|--params [FILE]

Mandatory arguments:

    -p, --params /path/to/parameter_file
         provide the path to a T-RECS parameter file

Optional arguments:

    -c, --continuum
        whether to generate the continuum properties 
        (default=false)

    -i, --HI
        whether to generate the neutral hydrogen properties 
        (default=false)

    -x, --xmatch
        whether to cross-match continuum properties with
        HI properties in case both have been generated 
        (default=false)

    -h, --help
        display this help message and exit

EOF
	    exit 0
	    ;;
	*)
	    echo "Unknown option $1"
	    exit 1
	    ;;
    esac
    shift
done

#############################################################################################
# Continuum on-demand

if [ docontinuum = true ]; then

fi

#############################################################################################
# HI on-demand

if [ dohi = true ]; then

fi

#############################################################################################
# Cross-match on-demand

if [ doxmatch = true ]; then

fi

#############################################################################################
# here do wrapping



#############################################################################################