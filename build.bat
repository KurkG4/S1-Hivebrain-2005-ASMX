@echo off

REM ::: automatic recompression of data - disabled by default because it's slow
REM ::: remove "REM" from the lines below to re-enable it
REM derecmp.exe nc artnem_u artnem
REM derecmp.exe kc artkos_u artkos
REM derecmp.exe ec mapeni_u mapeni
REM derecmp.exe ec map16_u map16
REM derecmp.exe kc map256_u map256
REM derecmp.exe ec sslay_u sslayout

asmx -C 68000 -b 0 -o s1built.bin -b -e  sonic1.asm
rompad.exe s1built.bin 255 0
fixheadr.exe s1built.bin
pause