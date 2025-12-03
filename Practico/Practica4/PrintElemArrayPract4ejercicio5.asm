%include "io.inc"
section.data
A db 1, 2
B dw 11, 12
C dd 111, 112
section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    mov eax, 0 ;Inicializo
    mov edx, A ;edx apunta a arreglo A
loop_A:
    cmp eax, 2; tengo dos elementos en el arreglo, uso eax como indice
    endA;si es 1, osea que llego al ultimo elem del arreglo entonces sale del ciclo
    PRINT_DEC 1, edx;Muestro elemento de arreglo
    mov edx, [A + edx*1];muevo edx a la siguiente posicion
    jmp loop_A ;ciclo
    add eax

endA:
    mov eax, 0;inicializo
    mov edx, B; edx tiene arreglo B

        
loop_B:
    cmp eax, 2;me fijo si se pasa del ultimo elemento del arreglo
    endB;si se pasa entonces termino el ciclo
    PRINT_DEC 2,edx;imprimo en pantalla elemento del arreglo
    mov edx, [B + edx*2];me muevo al sieguient elemento
    add eax
    jmp loop_B;ciclo
endB:
    mov eax, 0;inicializo eax en 0
    mov edx, C ;edx apunta a arreglo C

loop_C:
    cmp eax, 2;me fijo si eax se pasa de la cantidad de elementos en el arreglo
    endC;termino ciclo
    PRINT_DEC 4,edx;imprimo en pantalla elemento del arreglo
    mov edx, [C + edx*4];me muevo al siguiente elemento
    add eax;aumento contador
    jmp loop_C;ciclo
endC:
    
    ret