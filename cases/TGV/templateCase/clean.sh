#!/bin/bash
cd "${0%/*}" || exit                                # Run from this directory
. ${WM_PROJECT_DIR:?}/bin/tools/CleanFunctions      # Tutorial clean functions
#------------------------------------------------------------------------------

rm -rf postProcessing
rm -f  log.*
rm -rf 0

for f in $(find -name *.m4); do
    rm -f ${f::-3}
done

cleanTimeDirectories

#------------------------------------------------------------------------------
