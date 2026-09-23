  int calcula(int a, int b) {
    int f;
    f = (a + b) - 10;
    return f;
}
  a está em $a0
  b está em $a1
  O retorno deve ser entregue em $v0


calcula:
        addi $sp, $sp, -4
        sw $s0, 0($sp)
        add $s0, $a0, $a1
        addi  $s0, $s0, -10
        lw $s0, 0($sp)
        addi $sp, $sp, 4
        jr $ra