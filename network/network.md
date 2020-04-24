# Network

Inicialmente para organizar los bloques de ips y las redes se crearon las clases.

Hay 5 tipos de clases.

## Clases A

Ocupan el espacio desde 0.0.0.0 hasta 127.0.0.0. Son un total de 128 redes cada una de las cuales tiene 6.777.216 ips para un total de 2.147.483.648 ips.

Se distinguen por su primer octeto. Así la clase A (3.x.x.x):

    3.0.0.1
    3.0.12.12

Otra clase A (5.x.x.x):

    5.0.1.1
    5.5.5.1

## Clases B

Ocupan el espacio desde 128.0.0.0 hasta 191.0.0.0. Son un total de 16.384 redes cada una de las cuales tiene 65.536 para un total de 1.073.741.824 ips.

Se distinguen por su primer y segundo octeto. 

    128.3.x.x
        128.3.1.1
        128.3.5.12

    128.2.x.x
        128.2.12.0
        128.2.2.2

## Clases C

Ocupan el espacio desde 192.0.0.0 hasta 223.0.0.0.  Son un total de 2.097.152 de redes cada una de las cuales tiene 256 ips para un total de 536.870.912 ips.

Se distinguen por sus tres primeros octetos.

    192.3.3.x
        192.3.3.22
        192.3.3.11
    
    192.3.13.x
        192.3.13.111
        192.3.13.88
