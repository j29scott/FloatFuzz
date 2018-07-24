#!/bin/sh -eu

cd $(dirname $0)

PREFIX=starexec_run

rm -f $PREFIX*

FRONTEND_CONF="default1 default2 rte_only1 rte_only2 without_rte"
COLIBRI_CONF="no_prod_bv_congr no_prod_bv_ui no_prod_bvconstr no_bv_drill no_bv_simplif no_delta no_simplex"

for front in $FRONTEND_CONF; do
    ln -s generic_starexec.sh ${PREFIX}_${front}_
    for colibri in $COLIBRI_CONF; do
        ln -s generic_starexec.sh ${PREFIX}_${front}_${colibri}
    done
done
