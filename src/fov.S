.globl _repl_setTransform
.text

#define PRINT_MAT(addr) push %ecx; \
                        movl addr, %ecx; \
                        call _printMat16; \
                        pop %ecx;

_repl_setTransform:
    push %eax;

    PRINT_MAT($0x72c360)
    // PRINT_MAT($0x743cf4)
    // PRINT_MAT($0x743d34)
    // PRINT_MAT($0x743c34)

    // movl _projH, %eax;
    // movl %eax, %ds:(0x72c360);

    // movl _projV, %eax;
    // movl %eax, %ds:(0x72c360 + 20);

    pop %eax;
    call *%ds:0x94(%ecx);
    jmpl *(ret_setTransform)

ret_setTransform: .long 0x67bbad
