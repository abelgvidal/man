# VIM

## Moverse

```bash
 k
h l
 j
```

## texto

- `gg`  principio de fichero
- `G`   final de fichero
- `0`   move to first column of line
- `^`   move to the first non blank of line
- `$`   final de linea

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

## buscar en fichero

- `/` buscar  --> `n`  next   --> `N`  previous

## buscar en linea / bloque

- `fd` buscar siguiente d en la línea 
- `%`  ver paréntesis o llave correspondiente

## indent

- `=`  indent region
- `==` indent line

## replace

- `:s/tiipo/typo/`    cambiar la primera aparicion en la linea
- `:s/tiipo/typo/g`    cambiar todas las apariciones en la linea
- `:33,50s/tiipo/typo/g   cambiar todas las apariciones entre líneas 33 y 50
- `:%s/viejo/nuevo/g`  cambiar ocurrentes en todo el fichero
- `:%s/viejo/nuevo/gc`  cambiar ocurrentes en todo el fichero pidiendo en cada caso confirmacion

## buffers

- `bd`  cerrar el buffer actual
- `ctrl w w` moverse entre las ventanas

## exec

- `!`   ejecutar

## save

- `w`  guardar con nombre actual
- `w nombre`  guardar con nombre "nombre"
- `20,30 w`  guardar de linea 20 a 30

## fichero

- `ctrl-g`  ver situación en fichero
- `mays-G`  ir al final -> poner numero de linea -> `mays-G` -> vuelve a ese número de línea

## windows

- `:e filename`      - edit another file
- `:split filename`  - split window and load another file
- `ctrl-w up arrow`  - move cursor up a window
- `ctrl-w ctrl-w`    - move cursor to another window (cycle)
- `ctrl-w_`          - maximize current window
- `ctrl-w=`          - make all equal size
- `10 ctrl-w+`       - increase window size by 10 lines
- `:vsplit file`     - vertical split
- `:sview file`      - same as split, but readonly
- `:hide`            - close current window
- `:only`            - keep only this window open
- `:ls`              - show current buffers
- `:b 2`             - open buffer #2 in this window
