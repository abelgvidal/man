# bash

## safe flags

`set -e`  stop if error
`set -u`  stop if variable unset
`set -o  pipefail` stop if command fails

`set -euo`


mostrar todas las funciones
`declare -f`  

mostrar el nombre de las funciones
`declare -F`

# debug

`set -x && do_whatever && set +x` or `bash -x'  traces

`set -v` Prints shell input lines as they are read  

# extracting version of datadog for m8s

  for i in `kp get pods | grep ata   | cut -d " " -f 1`; do echo "$i --> " && kp describe pod $i | grep Image:  ; done
