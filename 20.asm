#int processa(int a, int b) {
 #   int x;
 #   int y;

  #  x = a + 5;
 #   y = b - 10;

  #  return x + y;
#}
#Regras / Mapeamento do Enunciado:

  #  O parâmetro a está em $a0 e o parâmetro b em $a1.

  #  A variável local x DEVE ficar obrigatoriamente no registrador $s0.

 #   A variável local y DEVE ficar obrigatoriamente no registrador $s1.

   # O resultado retornado DEVE ser entregue em $v0.

processa: 
          addi $sp, $sp, -8
          sw $s0, 0($sp) #x
          sw $s1, 4($sp) #y
          addi $s0, $a0, 5
          addi $s1, $a1, -10
          add $v0, $s0, $s1


          lw $s1, 4($sp)
          lw $s0, 0($sp)
          addi $sp, $sp, 8
          jr $ra