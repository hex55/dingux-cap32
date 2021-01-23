# Dingux-Cap32

Dingux-Cap32 is an Amstrad CPC emulator for the Miyoo console, Bittboy, Pocketgo, Powkiddy V90 y Powkiddy Q90.

[Port from](https://github.com/retrofw/dingux-cap32)

[For more information](https://github.com/salvacam/dingux-cap32/blob/master/dingux-cap32/dingux-cap32.man.txt)

## Compiling for RG350

The [GCW Zero Toolchain](http://www.gcw-zero.com/develop) must be installed.

```bash
$ git clone https://github.com/salvacam/dingux-cap32.git
$ cd dingux-cap32/src/libcpccat
$ make
$ cd ../..
$ make -f Makefile.gcw0
$ ./make_rg350_opk.sh
```
