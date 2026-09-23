#Transforme o seguinte código em C para **MIPS Assembly**:


#void strcpy (char x[], char y[]) { 
#    int i = 0; 
#    while ((x[i] = y[i]) != '\0') {
#        i += 1; 
#    }
#}


#### Mapeamento e Regras:

# O endereço base de x chega em $a0 e o endereço base de y em $a1.

# A variável i DEVE ficar no registrador $s0.
# Lembre-se: x e y são vetores de caracteres (char), ou seja, elementos de 1 byte!

strcpy: 
        addi $sp, $sp, -4
        sw $s0, 0($sp)

        addi $s0, $zero, 0

while:
        add $t1, $a1, $s0 ##y[i] = y + i
        lb $t2, 0($t1)
        add $t3, $a0, $s0 ## x[i] = x + i
        sb $t2, 0($t3) ## x[i] = y + i
        beq $t2, $zero, fim
        addi $s0, $s0, 1

      j while

fim: 
        lw $s0, 0($sp)
        addi $sp, $sp, 4
        jr $ra