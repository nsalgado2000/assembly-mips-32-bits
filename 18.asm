#int soma_tres(int a, int b, int c) { 
 #   int resultado; 
 #   resultado = a + b + c; 
 #   return resultado; 
#}


soma_tres:
    # --- 1. PRÓLOGO (Salva $s0 na Pilha) --- 
    addi $sp, $sp, -4       # Abre espaço de 4 bytes na pilha 
    sw   $s0, 0($sp)        # Salva o valor antigo de $s0 na pilha 

    # --- 2. CORPO DA FUNÇÃO --- 
    # Argumentos: a=$a0, b=$a1, c=$a2 
    add  $t0, $a0, $a1      # $t0 = a + b 
    add  $s0, $t0, $a2      # $s0 = (a + b) + c 
    add  $v0, $s0, $zero    # Coloca o resultado em $v0 para retornar 

    # --- 3. EPÍLOGO (Restaura $s0 e volta) --- 
    lw   $s0, 0($sp)        # Restaura o valor original de $s0 
    addi $sp, $sp, 4        # Devolve os 4 bytes para a pilha 
    jr   $ra                # Volta para quem chamou a função

    #int calcula (int a, int b) { int f; f = (a + b) - 10; return f; }


















    int calcula(int a, int b) {
    int f;
    f = (a + b) - 10;
    return f;
}
  a está em $a0
  b está em $a1
  O retorno deve ser entregue em $v0


calcula: 
        add $t1, $a0, $a1
        addi $v0, $t1, -10
        jr $ra
