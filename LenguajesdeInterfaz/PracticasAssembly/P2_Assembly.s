@ Practicas Capitulo 2
@ Archivo p2.s
@ Nombre: Grecia Cortes Valenciano
@ Fecha: 6 diciembre 2021

.data
var1 : .asciz " La suma es %d \n"
var2 : .word 128, 32, 100, - 30, 124

.text
.global main
main : push { r4, lr }
mov r0, # 5
mov r1, # 0
ldr r2, = var2

bucle : ldr r3, [ r2 ] , # 4
add r1, r1, r3
subs r0, r0, #1
bne bucle

ldr r0, = var1
bl printf
