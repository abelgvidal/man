# bash

## safe flags

`set -e`  stop if error
`set -u`  stop if variable unset
`set -o  pipefail` stop if command fails

`set -euo`



# bash

## debug

mostrar todas las funciones
`declare -f`  

`set -x && do_whatever && set +x` or `bash -x'  traces

`set -v` Prints shell input lines as they are read  

