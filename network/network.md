# Network

* [Classed Networks](#clases)
* [Private ranges](#private)
* [CIDR](#cidr)

## <a name="clases">Classed networks</a>
Inicialmente para organizar los bloques de ips y las redes se crearon las clases.

Hay 5 tipos de clases. Las dos últimas son reservadas.

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

## <a name="private">Private ranges</a>

Algunos de estas redes han sido reservadas para ips internas. 

* La clase A 10.x.x.x 
* Las 16 clases B desde 172.16.x.x hasta 172.31.0.0.
* Las 256 clases C desde 193.168.0.x hasta 192.168.255.x.

## CIDR <a name="cidr">Classless inter-domain routing</a>

CIDR está basado en `variable-length subnet masking` (VLSM). CIDR addresses are composed by prefix (an ip) + suffix (a length). El sufijo indica la cantidad de bits desde el principio de la dirección que se usan para definir la red, el resto definen la dirección dentro de esa red.

    10.x.x.x/8
    10.1.x.x/16
    10.1.2.x/24

## What addresses in a VPC subnet are reserved in AWS

What does AWS reserve for the network 10.4.4.x (5 in total):

* 10.4.4.0 first address is reserved to refer to the network.
* 10.4.4.1 vpc router
* 10.4.4.2 dns 
* 10.4.4.3 for some future requirement
* 10.4.4.255 broadcast (although VPC does not support broadcast)
