## Moverse
```
 k
h l
 j
```

## texto

- `i`   insertar en el cursor
- `o`   insertar por debajo del cursor
- `O`   insertar por encima del cursor
- `a`   insertar delante del cursor

- `r`   remplazar letra
- `R`   remplazar varias letras
- `x`   borrar letra
- `p`   poner lo borrado
- `wd`  borrar palabra incluyendo espacio
- `we`  borrar palabra SIN incluir espacio
- `3wd` 3 words delete
- `d$`  borrar linea desde cursor
- `dd`  delete line
- `3dd` delete three lines
- `cw`  cambiar palabra
- `c$`  cambiar línea desde cursor
- `r pi.py`   insertar en cursor contenido de ese fichero

## deshacer

- `u` deshacer
- `U` desahacer cambio en linea
- `ctrl-r` deshacer lo deshecho

## buscar

- `/` buscar  --> `n`  next   --> `N`  previous
- `%`  ver paréntesis o llave correspondiente

## replace

- `:s/tiipo/typo/`    cambiar la primera aparicion en la linea
- `:s/tiipo/typo/g`    cambiar todas las apariciones en la linea
- `:33,50s/tiipo/typo/g   cambiar todas las apariciones entre líneas 33 y 50
- `:%s/viejo/nuevo/g`  cambiar ocurrentes en todo el fichero
- `:%s/viejo/nuevo/gc`  cambiar ocurrentes en todo el fichero pidiendo en cada caso confirmacion

## exec

- `!`   ejecutar

## save

- `w`  guardar con nombre actual
- `w nombre`  guardar con nombre "nombre"
- `20,30 w`  guardar de linea 20 a 30

## fichero

- `ctrl-g`  ver situación en fichero
- `mays-G`  ir al final -> poner numero de linea -> `mays-G` -> vuelve a ese número de línea
