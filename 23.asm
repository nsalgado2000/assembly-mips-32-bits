int strlen(char s[]) { 
    int i = 0; 
    while (s[i] != '\0') { 
        i = i + 1; 
    } 
    return i; 
}

#O endereço base da string s é passado em $a0.
#O valor inteiro retornado pela função deve ficar em $v0.


strlen:
        add $t0, $zero, $zero #i = 0

while: 
        add $t1, $a0, $t0 # s[i] = s + i (end)
        lb $t2, 0($t1) #guarda s[i] em t2
        beq $t2, $zero, fim # se for igual a \0 (0 em ascii) pula pro final
        addi $t0, $t0, 1 # i = i + 1
        j while
fim: 
        add $v0, $t0, $zero
        jr $ra

