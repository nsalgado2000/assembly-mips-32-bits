int positive(int a, int b) {
    if (addit(a, b) > 0)
        return 1;
    else
        return 0;
}

int addit(int a, int b) {
    return a + b;
}

Os parâmetros a e b chegam nos registradores $a0 e $a1.

O valor de retorno de qualquer função DEVE ser entregue em $v0.

Se uma função chama outra via jal, o $ra precisa ser salvo na pilha ($sp).

addit: 
      add $v0, $a0, $a1
      jr $ra

positive:
        addi $sp, $sp, -4
        sw $ra, 0($sp)
        jal addit   # retorno do addit está, atualmente, em $v0, entao usarei ele para a comparação
        add $t2, $zero, $zero
        slt $t0, $t2, $v0 #está testando se 0 é menor que addi(a,b), que é o que queremos (inverti)
        bne $t0, $zero, else #se 0 nao for menor que addit(a,b)
        addi $v0, $zero, 1
else:
        addi $v0, $zero, $zero
        lw $ra, 0($sp)
        addi $sp, sp, 4
        jr $ra


        # TA ERRADO!
        # O CORRETO É ESSE:
  
addit: 
    add  $v0, $a0, $a1
    jr   $ra 

positive: 
    # --- 1. Prólogo (Salva $ra na pilha) ---
    addi $sp, $sp, -4
    sw   $ra, 0($sp) 

    # --- 2. Chamada de função ---
    jal  addit              # $v0 recebe o resultado de addit(a,b) 

    # --- 3. Teste do if (addit > 0 --> 0 < $v0) ---
    slt  $t0, $zero, $v0    # $t0 = 1 se verdadeiro, 0 se falso 
    beq  $t0, $zero, else   # Se $t0 == 0 (falso), vai para o else 

    # --- Bloco THEN (Retorna 1) --- 
    addi $v0, $zero, 1 
    j    fim                # Pula o else para não atropelar a resposta! 

    # --- Bloco ELSE (Retorna 0) --- 
else: 
    addi $v0, $zero, 0 

    # --- 4. Epílogo (Restaura $ra e fecha pilha) ---
fim: 
    lw   $ra, 0($sp) 
    addi $sp, $sp, 4 
    jr   $ra

