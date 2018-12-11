# bash

mostrar todas las funciones
`declare -f`  

mostrar el nombre de las funciones
`declare -F`


# extracting version of datadog for m8s

  for i in `kp get pods | grep ata   | cut -d " " -f 1`; do echo "$i --> " && kp describe pod $i | grep Image:  ; done
