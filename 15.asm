#Escreva a instrução MIPS que desloca o valor de $s0 em 4 bits para a esquerda** e guarda o resultado em $t2
  sll $t2, $s0, 4

#0000 0000 0000 1001
# vai pra:
#0000 0000 1001 0000
# que equivale a 16 + 128
# que é 144