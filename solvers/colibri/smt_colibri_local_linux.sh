#!/bin/sh
FILE=$1
CONF=$2
GOAL="solve('smt_colibri.in')"
if [ "$FILE" != "" ]
then
	GOAL="smt_solve('$FILE')"
fi
COLDIR=$(realpath $(dirname $0))
# Repertoire ECLiPSe Prolog
ECLIPSEDIR=$COLDIR/ECLiPSe_5.10
# Architecture
# ARCH=i386_linux
ARCH="x86_64_linux"
LD_LIBRARY_PATH=${ECLIPSEDIR}/lib/${ARCH}:$LD_LIBRARY_PATH
export ECLIPSEDIR ARCH LD_LIBRARY_PATH 

if [ -z "$CONF" ]; then
    CONF="true"
fi

# Chargement/demarrage de test_colibri
exec ${ECLIPSEDIR}/lib/${ARCH}/eclipse.exe \
     -b ${COLDIR}/compile_flag -b ${COLDIR}/col_solve \
     -g 2000M -e "seed(0),${CONF}, ${GOAL}"
