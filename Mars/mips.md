## Assembly Language

### Print String Block
```
li $v0, 4
la $a0, str
syscall
```

### Addition Block
```
li $t0, 15
li $t1, 12
add $s2, $t1, $t0
```

### Multiplication Block
```
li $t0, 15
li $t1, 12
mul $s1, $t1, $t0
```

### Exit Block
```
la $v0, 10
syscall
```
