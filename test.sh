#!/bin/bash

#3: 2 or 3
./push_swap 1 2 3 | wc -l
./push_swap 1 3 2 | wc -l
./push_swap 2 1 3 | wc -l
./push_swap 2 3 1 | wc -l
./push_swap 3 1 2 | wc -l
./push_swap 3 2 1 | wc -l

#4
./push_swap 1 2 3 4 | wc -l
./push_swap 1 2 4 3 | wc -l
./push_swap 1 3 2 4 | wc -l
./push_swap 1 3 4 2 | wc -l
./push_swap 1 4 2 3 | wc -l
./push_swap 1 4 3 2 | wc -l
./push_swap 2 1 3 4 | wc -l
./push_swap 2 1 4 3 | wc -l
./push_swap 2 3 1 4 | wc -l
./push_swap 2 3 4 1 | wc -l
./push_swap 2 4 1 3 | wc -l
./push_swap 2 4 3 1 | wc -l
./push_swap 3 1 2 4 | wc -l
./push_swap 3 1 4 2 | wc -l
./push_swap 3 2 1 4 | wc -l
./push_swap 3 2 4 1 | wc -l
./push_swap 3 4 1 2 | wc -l
./push_swap 3 4 2 1 | wc -l
./push_swap 4 1 2 3 | wc -l
./push_swap 4 1 3 2 | wc -l
./push_swap 4 2 1 3 | wc -l
./push_swap 4 2 3 1 | wc -l
./push_swap 4 3 1 2 | wc -l
./push_swap 4 3 2 1 | wc -l

#5: less than 12
./push_swap 1 2 3 4 5 | wc -l
./push_swap 1 2 3 5 4 | wc -l
./push_swap 1 2 4 3 5 | wc -l
./push_swap 1 2 4 5 3 | wc -l
./push_swap 1 2 5 3 4 | wc -l
./push_swap 1 2 5 4 3 | wc -l
./push_swap 1 3 2 4 5 | wc -l
./push_swap 1 3 2 5 4 | wc -l
./push_swap 1 3 4 2 5 | wc -l
./push_swap 1 3 4 5 2 | wc -l
./push_swap 1 3 5 2 4 | wc -l
./push_swap 1 3 5 4 2 | wc -l
./push_swap 1 4 2 3 5 | wc -l
./push_swap 1 4 2 5 3 | wc -l
./push_swap 1 4 3 2 5 | wc -l
./push_swap 1 4 3 5 2 | wc -l
./push_swap 1 4 5 2 3 | wc -l
./push_swap 1 4 5 3 2 | wc -l
./push_swap 1 5 2 3 4 | wc -l
./push_swap 1 5 2 4 3 | wc -l
./push_swap 1 5 3 2 4 | wc -l
./push_swap 1 5 3 4 2 | wc -l
./push_swap 1 5 4 2 3 | wc -l
./push_swap 1 5 4 3 2 | wc -l
./push_swap 2 1 3 4 5 | wc -l
./push_swap 2 1 3 5 4 | wc -l
./push_swap 2 1 4 3 5 | wc -l
./push_swap 2 1 4 5 3 | wc -l
./push_swap 2 1 5 3 4 | wc -l
./push_swap 2 1 5 4 3 | wc -l
./push_swap 2 3 1 4 5 | wc -l
./push_swap 2 3 1 5 4 | wc -l
./push_swap 2 3 4 1 5 | wc -l
./push_swap 2 3 4 5 1 | wc -l
./push_swap 2 3 5 1 4 | wc -l
./push_swap 2 3 5 4 1 | wc -l
./push_swap 2 4 1 3 5 | wc -l
./push_swap 2 4 1 5 3 | wc -l
./push_swap 2 4 3 1 5 | wc -l
./push_swap 2 4 3 5 1 | wc -l
./push_swap 2 4 5 1 3 | wc -l
./push_swap 2 4 5 3 1 | wc -l
./push_swap 2 5 1 3 4 | wc -l
./push_swap 2 5 1 4 3 | wc -l
./push_swap 2 5 3 1 4 | wc -l
./push_swap 2 5 3 4 1 | wc -l
./push_swap 2 5 4 1 3 | wc -l
./push_swap 2 5 4 3 1 | wc -l
./push_swap 3 1 2 4 5 | wc -l
./push_swap 3 1 2 5 4 | wc -l
./push_swap 3 1 4 2 5 | wc -l
./push_swap 3 1 4 5 2 | wc -l
./push_swap 3 1 5 2 4 | wc -l
./push_swap 3 1 5 4 2 | wc -l
./push_swap 3 2 1 4 5 | wc -l
./push_swap 3 2 1 5 4 | wc -l
./push_swap 3 2 4 1 5 | wc -l
./push_swap 3 2 4 5 1 | wc -l
./push_swap 3 2 5 1 4 | wc -l
./push_swap 3 2 5 4 1 | wc -l
./push_swap 3 4 1 2 5 | wc -l
./push_swap 3 4 1 5 2 | wc -l
./push_swap 3 4 2 1 5 | wc -l
./push_swap 3 4 2 5 1 | wc -l
./push_swap 3 4 5 1 2 | wc -l
./push_swap 3 4 5 2 1 | wc -l
./push_swap 3 5 1 2 4 | wc -l
./push_swap 3 5 1 4 2 | wc -l
./push_swap 3 5 2 1 4 | wc -l
./push_swap 3 5 2 4 1 | wc -l
./push_swap 3 5 4 1 2 | wc -l
./push_swap 3 5 4 2 1 | wc -l
./push_swap 4 1 2 3 5 | wc -l
./push_swap 4 1 2 5 3 | wc -l
./push_swap 4 1 3 2 5 | wc -l
./push_swap 4 1 3 5 2 | wc -l
./push_swap 4 1 5 2 3 | wc -l
./push_swap 4 1 5 3 2 | wc -l
./push_swap 4 2 1 3 5 | wc -l
./push_swap 4 2 1 5 3 | wc -l
./push_swap 4 2 3 1 5 | wc -l
./push_swap 4 2 3 5 1 | wc -l
./push_swap 4 2 5 1 3 | wc -l
./push_swap 4 2 5 3 1 | wc -l
./push_swap 4 3 1 2 5 | wc -l
./push_swap 4 3 1 5 2 | wc -l
./push_swap 4 3 2 1 5 | wc -l
./push_swap 4 3 2 5 1 | wc -l
./push_swap 4 3 5 1 2 | wc -l
./push_swap 4 3 5 2 1 | wc -l
./push_swap 4 5 1 2 3 | wc -l
./push_swap 4 5 1 3 2 | wc -l
./push_swap 4 5 2 1 3 | wc -l
./push_swap 4 5 2 3 1 | wc -l
./push_swap 4 5 3 1 2 | wc -l
./push_swap 4 5 3 2 1 | wc -l
./push_swap 5 1 2 3 4 | wc -l
./push_swap 5 1 2 4 3 | wc -l
./push_swap 5 1 3 2 4 | wc -l
./push_swap 5 1 3 4 2 | wc -l
./push_swap 5 1 4 2 3 | wc -l
./push_swap 5 1 4 3 2 | wc -l
./push_swap 5 2 1 3 4 | wc -l
./push_swap 5 2 1 4 3 | wc -l
./push_swap 5 2 3 1 4 | wc -l
./push_swap 5 2 3 4 1 | wc -l
./push_swap 5 2 4 1 3 | wc -l
./push_swap 5 2 4 3 1 | wc -l
./push_swap 5 3 1 2 4 | wc -l
./push_swap 5 3 1 4 2 | wc -l
./push_swap 5 3 2 1 4 | wc -l
./push_swap 5 3 2 4 1 | wc -l
./push_swap 5 3 4 1 2 | wc -l
./push_swap 5 3 4 2 1 | wc -l
./push_swap 5 4 1 2 3 | wc -l
./push_swap 5 4 1 3 2 | wc -l
./push_swap 5 4 2 1 3 | wc -l
./push_swap 5 4 2 3 1 | wc -l
./push_swap 5 4 3 1 2 | wc -l
./push_swap 5 4 3 2 1 | wc -l

./push_swap 1 3 2 | ./checker_linux 1 3 2
./push_swap 2 1 3 | ./checker_linux 2 1 3
./push_swap 2 3 1 | ./checker_linux 2 3 1
./push_swap 3 1 2 | ./checker_linux 3 1 2
./push_swap 3 2 1 | ./checker_linux 3 2 1
./push_swap 1 2 3 4 | ./checker_linux 1 2 3 4
./push_swap 1 2 4 3 | ./checker_linux 1 2 4 3
./push_swap 1 3 2 4 | ./checker_linux 1 3 2 4
./push_swap 1 3 4 2 | ./checker_linux 1 3 4 2
./push_swap 1 4 2 3 | ./checker_linux 1 4 2 3
./push_swap 1 4 3 2 | ./checker_linux 1 4 3 2
./push_swap 2 1 3 4 | ./checker_linux 2 1 3 4
./push_swap 2 1 4 3 | ./checker_linux 2 1 4 3
./push_swap 2 3 1 4 | ./checker_linux 2 3 1 4
./push_swap 2 3 4 1 | ./checker_linux 2 3 4 1
./push_swap 2 4 1 3 | ./checker_linux 2 4 1 3
./push_swap 2 4 3 1 | ./checker_linux 2 4 3 1
./push_swap 3 1 2 4 | ./checker_linux 3 1 2 4
./push_swap 3 1 4 2 | ./checker_linux 3 1 4 2
./push_swap 3 2 1 4 | ./checker_linux 3 2 1 4
./push_swap 3 2 4 1 | ./checker_linux 3 2 4 1
./push_swap 3 4 1 2 | ./checker_linux 3 4 1 2
./push_swap 3 4 2 1 | ./checker_linux 3 4 2 1
./push_swap 4 1 2 3 | ./checker_linux 4 1 2 3
./push_swap 4 1 3 2 | ./checker_linux 4 1 3 2
./push_swap 4 2 1 3 | ./checker_linux 4 2 1 3
./push_swap 4 2 3 1 | ./checker_linux 4 2 3 1
./push_swap 4 3 1 2 | ./checker_linux 4 3 1 2
./push_swap 4 3 2 1 | ./checker_linux 4 3 2 1
./push_swap 1 2 3 4 5 | ./checker_linux 1 2 3 4 5
./push_swap 1 2 3 5 4 | ./checker_linux 1 2 3 5 4
./push_swap 1 2 4 3 5 | ./checker_linux 1 2 4 3 5
./push_swap 1 2 4 5 3 | ./checker_linux 1 2 4 5 3
./push_swap 1 2 5 3 4 | ./checker_linux 1 2 5 3 4
./push_swap 1 2 5 4 3 | ./checker_linux 1 2 5 4 3
./push_swap 1 3 2 4 5 | ./checker_linux 1 3 2 4 5
./push_swap 1 3 2 5 4 | ./checker_linux 1 3 2 5 4
./push_swap 1 3 4 2 5 | ./checker_linux 1 3 4 2 5
./push_swap 1 3 4 5 2 | ./checker_linux 1 3 4 5 2
./push_swap 1 3 5 2 4 | ./checker_linux 1 3 5 2 4
./push_swap 1 3 5 4 2 | ./checker_linux 1 3 5 4 2
./push_swap 1 4 2 3 5 | ./checker_linux 1 4 2 3 5
./push_swap 1 4 2 5 3 | ./checker_linux 1 4 2 5 3
./push_swap 1 4 3 2 5 | ./checker_linux 1 4 3 2 5
./push_swap 1 4 3 5 2 | ./checker_linux 1 4 3 5 2
./push_swap 1 4 5 2 3 | ./checker_linux 1 4 5 2 3
./push_swap 1 4 5 3 2 | ./checker_linux 1 4 5 3 2
./push_swap 1 5 2 3 4 | ./checker_linux 1 5 2 3 4
./push_swap 1 5 2 4 3 | ./checker_linux 1 5 2 4 3
./push_swap 1 5 3 2 4 | ./checker_linux 1 5 3 2 4
./push_swap 1 5 3 4 2 | ./checker_linux 1 5 3 4 2
./push_swap 1 5 4 2 3 | ./checker_linux 1 5 4 2 3
./push_swap 1 5 4 3 2 | ./checker_linux 1 5 4 3 2
./push_swap 2 1 3 4 5 | ./checker_linux 2 1 3 4 5
./push_swap 2 1 3 5 4 | ./checker_linux 2 1 3 5 4
./push_swap 2 1 4 3 5 | ./checker_linux 2 1 4 3 5
./push_swap 2 1 4 5 3 | ./checker_linux 2 1 4 5 3
./push_swap 2 1 5 3 4 | ./checker_linux 2 1 5 3 4
./push_swap 2 1 5 4 3 | ./checker_linux 2 1 5 4 3
./push_swap 2 3 1 4 5 | ./checker_linux 2 3 1 4 5
./push_swap 2 3 1 5 4 | ./checker_linux 2 3 1 5 4
./push_swap 2 3 4 1 5 | ./checker_linux 2 3 4 1 5
./push_swap 2 3 4 5 1 | ./checker_linux 2 3 4 5 1
./push_swap 2 3 5 1 4 | ./checker_linux 2 3 5 1 4
./push_swap 2 3 5 4 1 | ./checker_linux 2 3 5 4 1
./push_swap 2 4 1 3 5 | ./checker_linux 2 4 1 3 5
./push_swap 2 4 1 5 3 | ./checker_linux 2 4 1 5 3
./push_swap 2 4 3 1 5 | ./checker_linux 2 4 3 1 5
./push_swap 2 4 3 5 1 | ./checker_linux 2 4 3 5 1
./push_swap 2 4 5 1 3 | ./checker_linux 2 4 5 1 3
./push_swap 2 4 5 3 1 | ./checker_linux 2 4 5 3 1
./push_swap 2 5 1 3 4 | ./checker_linux 2 5 1 3 4
./push_swap 2 5 1 4 3 | ./checker_linux 2 5 1 4 3
./push_swap 2 5 3 1 4 | ./checker_linux 2 5 3 1 4
./push_swap 2 5 3 4 1 | ./checker_linux 2 5 3 4 1
./push_swap 2 5 4 1 3 | ./checker_linux 2 5 4 1 3
./push_swap 2 5 4 3 1 | ./checker_linux 2 5 4 3 1
./push_swap 3 1 2 4 5 | ./checker_linux 3 1 2 4 5
./push_swap 3 1 2 5 4 | ./checker_linux 3 1 2 5 4
./push_swap 3 1 4 2 5 | ./checker_linux 3 1 4 2 5
./push_swap 3 1 4 5 2 | ./checker_linux 3 1 4 5 2
./push_swap 3 1 5 2 4 | ./checker_linux 3 1 5 2 4
./push_swap 3 1 5 4 2 | ./checker_linux 3 1 5 4 2
./push_swap 3 2 1 4 5 | ./checker_linux 3 2 1 4 5
./push_swap 3 2 1 5 4 | ./checker_linux 3 2 1 5 4
./push_swap 3 2 4 1 5 | ./checker_linux 3 2 4 1 5
./push_swap 3 2 4 5 1 | ./checker_linux 3 2 4 5 1
./push_swap 3 2 5 1 4 | ./checker_linux 3 2 5 1 4
./push_swap 3 2 5 4 1 | ./checker_linux 3 2 5 4 1
./push_swap 3 4 1 2 5 | ./checker_linux 3 4 1 2 5
./push_swap 3 4 1 5 2 | ./checker_linux 3 4 1 5 2
./push_swap 3 4 2 1 5 | ./checker_linux 3 4 2 1 5
./push_swap 3 4 2 5 1 | ./checker_linux 3 4 2 5 1
./push_swap 3 4 5 1 2 | ./checker_linux 3 4 5 1 2
./push_swap 3 4 5 2 1 | ./checker_linux 3 4 5 2 1
./push_swap 3 5 1 2 4 | ./checker_linux 3 5 1 2 4
./push_swap 3 5 1 4 2 | ./checker_linux 3 5 1 4 2
./push_swap 3 5 2 1 4 | ./checker_linux 3 5 2 1 4
./push_swap 3 5 2 4 1 | ./checker_linux 3 5 2 4 1
./push_swap 3 5 4 1 2 | ./checker_linux 3 5 4 1 2
./push_swap 3 5 4 2 1 | ./checker_linux 3 5 4 2 1
./push_swap 4 1 2 3 5 | ./checker_linux 4 1 2 3 5
./push_swap 4 1 2 5 3 | ./checker_linux 4 1 2 5 3
./push_swap 4 1 3 2 5 | ./checker_linux 4 1 3 2 5
./push_swap 4 1 3 5 2 | ./checker_linux 4 1 3 5 2
./push_swap 4 1 5 2 3 | ./checker_linux 4 1 5 2 3
./push_swap 4 1 5 3 2 | ./checker_linux 4 1 5 3 2
./push_swap 4 2 1 3 5 | ./checker_linux 4 2 1 3 5
./push_swap 4 2 1 5 3 | ./checker_linux 4 2 1 5 3
./push_swap 4 2 3 1 5 | ./checker_linux 4 2 3 1 5
./push_swap 4 2 3 5 1 | ./checker_linux 4 2 3 5 1
./push_swap 4 2 5 1 3 | ./checker_linux 4 2 5 1 3
./push_swap 4 2 5 3 1 | ./checker_linux 4 2 5 3 1
./push_swap 4 3 1 2 5 | ./checker_linux 4 3 1 2 5
./push_swap 4 3 1 5 2 | ./checker_linux 4 3 1 5 2
./push_swap 4 3 2 1 5 | ./checker_linux 4 3 2 1 5
./push_swap 4 3 2 5 1 | ./checker_linux 4 3 2 5 1
./push_swap 4 3 5 1 2 | ./checker_linux 4 3 5 1 2
./push_swap 4 3 5 2 1 | ./checker_linux 4 3 5 2 1
./push_swap 4 5 1 2 3 | ./checker_linux 4 5 1 2 3
./push_swap 4 5 1 3 2 | ./checker_linux 4 5 1 3 2
./push_swap 4 5 2 1 3 | ./checker_linux 4 5 2 1 3
./push_swap 4 5 2 3 1 | ./checker_linux 4 5 2 3 1
./push_swap 4 5 3 1 2 | ./checker_linux 4 5 3 1 2
./push_swap 4 5 3 2 1 | ./checker_linux 4 5 3 2 1
./push_swap 5 1 2 3 4 | ./checker_linux 5 1 2 3 4
./push_swap 5 1 2 4 3 | ./checker_linux 5 1 2 4 3
./push_swap 5 1 3 2 4 | ./checker_linux 5 1 3 2 4
./push_swap 5 1 3 4 2 | ./checker_linux 5 1 3 4 2
./push_swap 5 1 4 2 3 | ./checker_linux 5 1 4 2 3
./push_swap 5 1 4 3 2 | ./checker_linux 5 1 4 3 2
./push_swap 5 2 1 3 4 | ./checker_linux 5 2 1 3 4
./push_swap 5 2 1 4 3 | ./checker_linux 5 2 1 4 3
./push_swap 5 2 3 1 4 | ./checker_linux 5 2 3 1 4
./push_swap 5 2 3 4 1 | ./checker_linux 5 2 3 4 1
./push_swap 5 2 4 1 3 | ./checker_linux 5 2 4 1 3
./push_swap 5 2 4 3 1 | ./checker_linux 5 2 4 3 1
./push_swap 5 3 1 2 4 | ./checker_linux 5 3 1 2 4
./push_swap 5 3 1 4 2 | ./checker_linux 5 3 1 4 2
./push_swap 5 3 2 1 4 | ./checker_linux 5 3 2 1 4
./push_swap 5 3 2 4 1 | ./checker_linux 5 3 2 4 1
./push_swap 5 3 4 1 2 | ./checker_linux 5 3 4 1 2
./push_swap 5 3 4 2 1 | ./checker_linux 5 3 4 2 1
./push_swap 5 4 1 2 3 | ./checker_linux 5 4 1 2 3
./push_swap 5 4 1 3 2 | ./checker_linux 5 4 1 3 2
./push_swap 5 4 2 1 3 | ./checker_linux 5 4 2 1 3
./push_swap 5 4 2 3 1 | ./checker_linux 5 4 2 3 1
./push_swap 5 4 3 1 2 | ./checker_linux 5 4 3 1 2
./push_swap 5 4 3 2 1 | ./checker_linux 5 4 3 2 1

./push_swap -1 -3 -2 | ./checker_linux -1 -3 -2
./push_swap -2 -1 -3 | ./checker_linux -2 -1 -3
./push_swap -2 -3 -1 | ./checker_linux -2 -3 -1
./push_swap -3 -1 -2 | ./checker_linux -3 -1 -2
./push_swap -3 -2 -1 | ./checker_linux -3 -2 -1
./push_swap -1 -2 -3 -4 | ./checker_linux -1 -2 -3 -4
./push_swap -1 -2 -4 -3 | ./checker_linux -1 -2 -4 -3
./push_swap -1 -3 -2 -4 | ./checker_linux -1 -3 -2 -4
./push_swap -1 -3 -4 -2 | ./checker_linux -1 -3 -4 -2
./push_swap -1 -4 -2 -3 | ./checker_linux -1 -4 -2 -3
./push_swap -1 -4 -3 -2 | ./checker_linux -1 -4 -3 -2
./push_swap -2 -1 -3 -4 | ./checker_linux -2 -1 -3 -4
./push_swap -2 -1 -4 -3 | ./checker_linux -2 -1 -4 -3
./push_swap -2 -3 -1 -4 | ./checker_linux -2 -3 -1 -4
./push_swap -2 -3 -4 -1 | ./checker_linux -2 -3 -4 -1
./push_swap -2 -4 -1 -3 | ./checker_linux -2 -4 -1 -3
./push_swap -2 -4 -3 -1 | ./checker_linux -2 -4 -3 -1
./push_swap -3 -1 -2 -4 | ./checker_linux -3 -1 -2 -4
./push_swap -3 -1 -4 -2 | ./checker_linux -3 -1 -4 -2
./push_swap -3 -2 -1 -4 | ./checker_linux -3 -2 -1 -4
./push_swap -3 -2 -4 -1 | ./checker_linux -3 -2 -4 -1
./push_swap -3 -4 -1 -2 | ./checker_linux -3 -4 -1 -2
./push_swap -3 -4 -2 -1 | ./checker_linux -3 -4 -2 -1
./push_swap -4 -1 -2 -3 | ./checker_linux -4 -1 -2 -3
./push_swap -4 -1 -3 -2 | ./checker_linux -4 -1 -3 -2
./push_swap -4 -2 -1 -3 | ./checker_linux -4 -2 -1 -3
./push_swap -4 -2 -3 -1 | ./checker_linux -4 -2 -3 -1
./push_swap -4 -3 -1 -2 | ./checker_linux -4 -3 -1 -2
./push_swap -4 -3 -2 -1 | ./checker_linux -4 -3 -2 -1
./push_swap -1 -2 -3 -4 -5 | ./checker_linux -1 -2 -3 -4 -5
./push_swap -1 -2 -3 -5 -4 | ./checker_linux -1 -2 -3 -5 -4
./push_swap -1 -2 -4 -3 -5 | ./checker_linux -1 -2 -4 -3 -5
./push_swap -1 -2 -4 -5 -3 | ./checker_linux -1 -2 -4 -5 -3
./push_swap -1 -2 -5 -3 -4 | ./checker_linux -1 -2 -5 -3 -4
./push_swap -1 -2 -5 -4 -3 | ./checker_linux -1 -2 -5 -4 -3
./push_swap -1 -3 -2 -4 -5 | ./checker_linux -1 -3 -2 -4 -5
./push_swap -1 -3 -2 -5 -4 | ./checker_linux -1 -3 -2 -5 -4
./push_swap -1 -3 -4 -2 -5 | ./checker_linux -1 -3 -4 -2 -5
./push_swap -1 -3 -4 -5 -2 | ./checker_linux -1 -3 -4 -5 -2
./push_swap -1 -3 -5 -2 -4 | ./checker_linux -1 -3 -5 -2 -4
./push_swap -1 -3 -5 -4 -2 | ./checker_linux -1 -3 -5 -4 -2
./push_swap -1 -4 -2 -3 -5 | ./checker_linux -1 -4 -2 -3 -5
./push_swap -1 -4 -2 -5 -3 | ./checker_linux -1 -4 -2 -5 -3
./push_swap -1 -4 -3 -2 -5 | ./checker_linux -1 -4 -3 -2 -5
./push_swap -1 -4 -3 -5 -2 | ./checker_linux -1 -4 -3 -5 -2
./push_swap -1 -4 -5 -2 -3 | ./checker_linux -1 -4 -5 -2 -3
./push_swap -1 -4 -5 -3 -2 | ./checker_linux -1 -4 -5 -3 -2
./push_swap -1 -5 -2 -3 -4 | ./checker_linux -1 -5 -2 -3 -4
./push_swap -1 -5 -2 -4 -3 | ./checker_linux -1 -5 -2 -4 -3
./push_swap -1 -5 -3 -2 -4 | ./checker_linux -1 -5 -3 -2 -4
./push_swap -1 -5 -3 -4 -2 | ./checker_linux -1 -5 -3 -4 -2
./push_swap -1 -5 -4 -2 -3 | ./checker_linux -1 -5 -4 -2 -3
./push_swap -1 -5 -4 -3 -2 | ./checker_linux -1 -5 -4 -3 -2
./push_swap -2 -1 -3 -4 -5 | ./checker_linux -2 -1 -3 -4 -5
./push_swap -2 -1 -3 -5 -4 | ./checker_linux -2 -1 -3 -5 -4
./push_swap -2 -1 -4 -3 -5 | ./checker_linux -2 -1 -4 -3 -5
./push_swap -2 -1 -4 -5 -3 | ./checker_linux -2 -1 -4 -5 -3
./push_swap -2 -1 -5 -3 -4 | ./checker_linux -2 -1 -5 -3 -4
./push_swap -2 -1 -5 -4 -3 | ./checker_linux -2 -1 -5 -4 -3
./push_swap -2 -3 -1 -4 -5 | ./checker_linux -2 -3 -1 -4 -5
./push_swap -2 -3 -1 -5 -4 | ./checker_linux -2 -3 -1 -5 -4
./push_swap -2 -3 -4 -1 -5 | ./checker_linux -2 -3 -4 -1 -5
./push_swap -2 -3 -4 -5 -1 | ./checker_linux -2 -3 -4 -5 -1
./push_swap -2 -3 -5 -1 -4 | ./checker_linux -2 -3 -5 -1 -4
./push_swap -2 -3 -5 -4 -1 | ./checker_linux -2 -3 -5 -4 -1
./push_swap -2 -4 -1 -3 -5 | ./checker_linux -2 -4 -1 -3 -5
./push_swap -2 -4 -1 -5 -3 | ./checker_linux -2 -4 -1 -5 -3
./push_swap -2 -4 -3 -1 -5 | ./checker_linux -2 -4 -3 -1 -5
./push_swap -2 -4 -3 -5 -1 | ./checker_linux -2 -4 -3 -5 -1
./push_swap -2 -4 -5 -1 -3 | ./checker_linux -2 -4 -5 -1 -3
./push_swap -2 -4 -5 -3 -1 | ./checker_linux -2 -4 -5 -3 -1
./push_swap -2 -5 -1 -3 -4 | ./checker_linux -2 -5 -1 -3 -4
./push_swap -2 -5 -1 -4 -3 | ./checker_linux -2 -5 -1 -4 -3
./push_swap -2 -5 -3 -1 -4 | ./checker_linux -2 -5 -3 -1 -4
./push_swap -2 -5 -3 -4 -1 | ./checker_linux -2 -5 -3 -4 -1
./push_swap -2 -5 -4 -1 -3 | ./checker_linux -2 -5 -4 -1 -3
./push_swap -2 -5 -4 -3 -1 | ./checker_linux -2 -5 -4 -3 -1
./push_swap -3 -1 -2 -4 -5 | ./checker_linux -3 -1 -2 -4 -5
./push_swap -3 -1 -2 -5 -4 | ./checker_linux -3 -1 -2 -5 -4
./push_swap -3 -1 -4 -2 -5 | ./checker_linux -3 -1 -4 -2 -5
./push_swap -3 -1 -4 -5 -2 | ./checker_linux -3 -1 -4 -5 -2
./push_swap -3 -1 -5 -2 -4 | ./checker_linux -3 -1 -5 -2 -4
./push_swap -3 -1 -5 -4 -2 | ./checker_linux -3 -1 -5 -4 -2
./push_swap -3 -2 -1 -4 -5 | ./checker_linux -3 -2 -1 -4 -5
./push_swap -3 -2 -1 -5 -4 | ./checker_linux -3 -2 -1 -5 -4
./push_swap -3 -2 -4 -1 -5 | ./checker_linux -3 -2 -4 -1 -5
./push_swap -3 -2 -4 -5 -1 | ./checker_linux -3 -2 -4 -5 -1
./push_swap -3 -2 -5 -1 -4 | ./checker_linux -3 -2 -5 -1 -4
./push_swap -3 -2 -5 -4 -1 | ./checker_linux -3 -2 -5 -4 -1
./push_swap -3 -4 -1 -2 -5 | ./checker_linux -3 -4 -1 -2 -5
./push_swap -3 -4 -1 -5 -2 | ./checker_linux -3 -4 -1 -5 -2
./push_swap -3 -4 -2 -1 -5 | ./checker_linux -3 -4 -2 -1 -5
./push_swap -3 -4 -2 -5 -1 | ./checker_linux -3 -4 -2 -5 -1
./push_swap -3 -4 -5 -1 -2 | ./checker_linux -3 -4 -5 -1 -2
./push_swap -3 -4 -5 -2 -1 | ./checker_linux -3 -4 -5 -2 -1
./push_swap -3 -5 -1 -2 -4 | ./checker_linux -3 -5 -1 -2 -4
./push_swap -3 -5 -1 -4 -2 | ./checker_linux -3 -5 -1 -4 -2
./push_swap -3 -5 -2 -1 -4 | ./checker_linux -3 -5 -2 -1 -4
./push_swap -3 -5 -2 -4 -1 | ./checker_linux -3 -5 -2 -4 -1
./push_swap -3 -5 -4 -1 -2 | ./checker_linux -3 -5 -4 -1 -2
./push_swap -3 -5 -4 -2 -1 | ./checker_linux -3 -5 -4 -2 -1
./push_swap -4 -1 -2 -3 -5 | ./checker_linux -4 -1 -2 -3 -5
./push_swap -4 -1 -2 -5 -3 | ./checker_linux -4 -1 -2 -5 -3
./push_swap -4 -1 -3 -2 -5 | ./checker_linux -4 -1 -3 -2 -5
./push_swap -4 -1 -3 -5 -2 | ./checker_linux -4 -1 -3 -5 -2
./push_swap -4 -1 -5 -2 -3 | ./checker_linux -4 -1 -5 -2 -3
./push_swap -4 -1 -5 -3 -2 | ./checker_linux -4 -1 -5 -3 -2
./push_swap -4 -2 -1 -3 -5 | ./checker_linux -4 -2 -1 -3 -5
./push_swap -4 -2 -1 -5 -3 | ./checker_linux -4 -2 -1 -5 -3
./push_swap -4 -2 -3 -1 -5 | ./checker_linux -4 -2 -3 -1 -5
./push_swap -4 -2 -3 -5 -1 | ./checker_linux -4 -2 -3 -5 -1
./push_swap -4 -2 -5 -1 -3 | ./checker_linux -4 -2 -5 -1 -3
./push_swap -4 -2 -5 -3 -1 | ./checker_linux -4 -2 -5 -3 -1
./push_swap -4 -3 -1 -2 -5 | ./checker_linux -4 -3 -1 -2 -5
./push_swap -4 -3 -1 -5 -2 | ./checker_linux -4 -3 -1 -5 -2
./push_swap -4 -3 -2 -1 -5 | ./checker_linux -4 -3 -2 -1 -5
./push_swap -4 -3 -2 -5 -1 | ./checker_linux -4 -3 -2 -5 -1
./push_swap -4 -3 -5 -1 -2 | ./checker_linux -4 -3 -5 -1 -2
./push_swap -4 -3 -5 -2 -1 | ./checker_linux -4 -3 -5 -2 -1
./push_swap -4 -5 -1 -2 -3 | ./checker_linux -4 -5 -1 -2 -3
./push_swap -4 -5 -1 -3 -2 | ./checker_linux -4 -5 -1 -3 -2
./push_swap -4 -5 -2 -1 -3 | ./checker_linux -4 -5 -2 -1 -3
./push_swap -4 -5 -2 -3 -1 | ./checker_linux -4 -5 -2 -3 -1
./push_swap -4 -5 -3 -1 -2 | ./checker_linux -4 -5 -3 -1 -2
./push_swap -4 -5 -3 -2 -1 | ./checker_linux -4 -5 -3 -2 -1
./push_swap -5 -1 -2 -3 -4 | ./checker_linux -5 -1 -2 -3 -4
./push_swap -5 -1 -2 -4 -3 | ./checker_linux -5 -1 -2 -4 -3
./push_swap -5 -1 -3 -2 -4 | ./checker_linux -5 -1 -3 -2 -4
./push_swap -5 -1 -3 -4 -2 | ./checker_linux -5 -1 -3 -4 -2
./push_swap -5 -1 -4 -2 -3 | ./checker_linux -5 -1 -4 -2 -3
./push_swap -5 -1 -4 -3 -2 | ./checker_linux -5 -1 -4 -3 -2
./push_swap -5 -2 -1 -3 -4 | ./checker_linux -5 -2 -1 -3 -4
./push_swap -5 -2 -1 -4 -3 | ./checker_linux -5 -2 -1 -4 -3
./push_swap -5 -2 -3 -1 -4 | ./checker_linux -5 -2 -3 -1 -4
./push_swap -5 -2 -3 -4 -1 | ./checker_linux -5 -2 -3 -4 -1
./push_swap -5 -2 -4 -1 -3 | ./checker_linux -5 -2 -4 -1 -3
./push_swap -5 -2 -4 -3 -1 | ./checker_linux -5 -2 -4 -3 -1
./push_swap -5 -3 -1 -2 -4 | ./checker_linux -5 -3 -1 -2 -4
./push_swap -5 -3 -1 -4 -2 | ./checker_linux -5 -3 -1 -4 -2
./push_swap -5 -3 -2 -1 -4 | ./checker_linux -5 -3 -2 -1 -4
./push_swap -5 -3 -2 -4 -1 | ./checker_linux -5 -3 -2 -4 -1
./push_swap -5 -3 -4 -1 -2 | ./checker_linux -5 -3 -4 -1 -2
./push_swap -5 -3 -4 -2 -1 | ./checker_linux -5 -3 -4 -2 -1
./push_swap -5 -4 -1 -2 -3 | ./checker_linux -5 -4 -1 -2 -3
./push_swap -5 -4 -1 -3 -2 | ./checker_linux -5 -4 -1 -3 -2
./push_swap -5 -4 -2 -1 -3 | ./checker_linux -5 -4 -2 -1 -3
./push_swap -5 -4 -2 -3 -1 | ./checker_linux -5 -4 -2 -3 -1
./push_swap -5 -4 -3 -1 -2 | ./checker_linux -5 -4 -3 -1 -2
./push_swap -5 -4 -3 -2 -1 | ./checker_linux -5 -4 -3 -2 -1

./push_swap 1 3 -2 | ./checker_linux 1 3 -2
./push_swap -2 1 3 | ./checker_linux -2 1 3
./push_swap -2 3 1 | ./checker_linux -2 3 1
./push_swap 3 1 -2 | ./checker_linux 3 1 -2
./push_swap 3 -2 1 | ./checker_linux 3 -2 1
./push_swap 1 -2 3 -4 | ./checker_linux 1 -2 3 -4
./push_swap 1 -2 -4 3 | ./checker_linux 1 -2 -4 3
./push_swap 1 3 -2 -4 | ./checker_linux 1 3 -2 -4
./push_swap 1 3 -4 -2 | ./checker_linux 1 3 -4 -2
./push_swap 1 -4 -2 3 | ./checker_linux 1 -4 -2 3
./push_swap 1 -4 3 -2 | ./checker_linux 1 -4 3 -2
./push_swap -2 1 3 -4 | ./checker_linux -2 1 3 -4
./push_swap -2 1 -4 3 | ./checker_linux -2 1 -4 3
./push_swap -2 3 1 -4 | ./checker_linux -2 3 1 -4
./push_swap -2 3 -4 1 | ./checker_linux -2 3 -4 1
./push_swap -2 -4 1 3 | ./checker_linux -2 -4 1 3
./push_swap -2 -4 3 1 | ./checker_linux -2 -4 3 1
./push_swap 3 1 -2 -4 | ./checker_linux 3 1 -2 -4
./push_swap 3 1 -4 -2 | ./checker_linux 3 1 -4 -2
./push_swap 3 -2 1 -4 | ./checker_linux 3 -2 1 -4
./push_swap 3 -2 -4 1 | ./checker_linux 3 -2 -4 1
./push_swap 3 -4 1 -2 | ./checker_linux 3 -4 1 -2
./push_swap 3 -4 -2 1 | ./checker_linux 3 -4 -2 1
./push_swap -4 1 -2 3 | ./checker_linux -4 1 -2 3
./push_swap -4 1 3 -2 | ./checker_linux -4 1 3 -2
./push_swap -4 -2 1 3 | ./checker_linux -4 -2 1 3
./push_swap -4 -2 3 1 | ./checker_linux -4 -2 3 1
./push_swap -4 3 1 -2 | ./checker_linux -4 3 1 -2
./push_swap -4 3 -2 1 | ./checker_linux -4 3 -2 1
./push_swap 1 -2 3 -4 5 | ./checker_linux 1 -2 3 -4 5
./push_swap 1 -2 3 5 -4 | ./checker_linux 1 -2 3 5 -4
./push_swap 1 -2 -4 3 5 | ./checker_linux 1 -2 -4 3 5
./push_swap 1 -2 -4 5 3 | ./checker_linux 1 -2 -4 5 3
./push_swap 1 -2 5 3 -4 | ./checker_linux 1 -2 5 3 -4
./push_swap 1 -2 5 -4 3 | ./checker_linux 1 -2 5 -4 3
./push_swap 1 3 -2 -4 5 | ./checker_linux 1 3 -2 -4 5
./push_swap 1 3 -2 5 -4 | ./checker_linux 1 3 -2 5 -4
./push_swap 1 3 -4 -2 5 | ./checker_linux 1 3 -4 -2 5
./push_swap 1 3 -4 5 -2 | ./checker_linux 1 3 -4 5 -2
./push_swap 1 3 5 -2 -4 | ./checker_linux 1 3 5 -2 -4
./push_swap 1 3 5 -4 -2 | ./checker_linux 1 3 5 -4 -2
./push_swap 1 -4 -2 3 5 | ./checker_linux 1 -4 -2 3 5
./push_swap 1 -4 -2 5 3 | ./checker_linux 1 -4 -2 5 3
./push_swap 1 -4 3 -2 5 | ./checker_linux 1 -4 3 -2 5
./push_swap 1 -4 3 5 -2 | ./checker_linux 1 -4 3 5 -2
./push_swap 1 -4 5 -2 3 | ./checker_linux 1 -4 5 -2 3
./push_swap 1 -4 5 3 -2 | ./checker_linux 1 -4 5 3 -2
./push_swap 1 5 -2 3 -4 | ./checker_linux 1 5 -2 3 -4
./push_swap 1 5 -2 -4 3 | ./checker_linux 1 5 -2 -4 3
./push_swap 1 5 3 -2 -4 | ./checker_linux 1 5 3 -2 -4
./push_swap 1 5 3 -4 -2 | ./checker_linux 1 5 3 -4 -2
./push_swap 1 5 -4 -2 3 | ./checker_linux 1 5 -4 -2 3
./push_swap 1 5 -4 3 -2 | ./checker_linux 1 5 -4 3 -2
./push_swap -2 1 3 -4 5 | ./checker_linux -2 1 3 -4 5
./push_swap -2 1 3 5 -4 | ./checker_linux -2 1 3 5 -4
./push_swap -2 1 -4 3 5 | ./checker_linux -2 1 -4 3 5
./push_swap -2 1 -4 5 3 | ./checker_linux -2 1 -4 5 3
./push_swap -2 1 5 3 -4 | ./checker_linux -2 1 5 3 -4
./push_swap -2 1 5 -4 3 | ./checker_linux -2 1 5 -4 3
./push_swap -2 3 1 -4 5 | ./checker_linux -2 3 1 -4 5
./push_swap -2 3 1 5 -4 | ./checker_linux -2 3 1 5 -4
./push_swap -2 3 -4 1 5 | ./checker_linux -2 3 -4 1 5
./push_swap -2 3 -4 5 1 | ./checker_linux -2 3 -4 5 1
./push_swap -2 3 5 1 -4 | ./checker_linux -2 3 5 1 -4
./push_swap -2 3 5 -4 1 | ./checker_linux -2 3 5 -4 1
./push_swap -2 -4 1 3 5 | ./checker_linux -2 -4 1 3 5
./push_swap -2 -4 1 5 3 | ./checker_linux -2 -4 1 5 3
./push_swap -2 -4 3 1 5 | ./checker_linux -2 -4 3 1 5
./push_swap -2 -4 3 5 1 | ./checker_linux -2 -4 3 5 1
./push_swap -2 -4 5 1 3 | ./checker_linux -2 -4 5 1 3
./push_swap -2 -4 5 3 1 | ./checker_linux -2 -4 5 3 1
./push_swap -2 5 1 3 -4 | ./checker_linux -2 5 1 3 -4
./push_swap -2 5 1 -4 3 | ./checker_linux -2 5 1 -4 3
./push_swap -2 5 3 1 -4 | ./checker_linux -2 5 3 1 -4
./push_swap -2 5 3 -4 1 | ./checker_linux -2 5 3 -4 1
./push_swap -2 5 -4 1 3 | ./checker_linux -2 5 -4 1 3
./push_swap -2 5 -4 3 1 | ./checker_linux -2 5 -4 3 1
./push_swap 3 1 -2 -4 5 | ./checker_linux 3 1 -2 -4 5
./push_swap 3 1 -2 5 -4 | ./checker_linux 3 1 -2 5 -4
./push_swap 3 1 -4 -2 5 | ./checker_linux 3 1 -4 -2 5
./push_swap 3 1 -4 5 -2 | ./checker_linux 3 1 -4 5 -2
./push_swap 3 1 5 -2 -4 | ./checker_linux 3 1 5 -2 -4
./push_swap 3 1 5 -4 -2 | ./checker_linux 3 1 5 -4 -2
./push_swap 3 -2 1 -4 5 | ./checker_linux 3 -2 1 -4 5
./push_swap 3 -2 1 5 -4 | ./checker_linux 3 -2 1 5 -4
./push_swap 3 -2 -4 1 5 | ./checker_linux 3 -2 -4 1 5
./push_swap 3 -2 -4 5 1 | ./checker_linux 3 -2 -4 5 1
./push_swap 3 -2 5 1 -4 | ./checker_linux 3 -2 5 1 -4
./push_swap 3 -2 5 -4 1 | ./checker_linux 3 -2 5 -4 1
./push_swap 3 -4 1 -2 5 | ./checker_linux 3 -4 1 -2 5
./push_swap 3 -4 1 5 -2 | ./checker_linux 3 -4 1 5 -2
./push_swap 3 -4 -2 1 5 | ./checker_linux 3 -4 -2 1 5
./push_swap 3 -4 -2 5 1 | ./checker_linux 3 -4 -2 5 1
./push_swap 3 -4 5 1 -2 | ./checker_linux 3 -4 5 1 -2
./push_swap 3 -4 5 -2 1 | ./checker_linux 3 -4 5 -2 1
./push_swap 3 5 1 -2 -4 | ./checker_linux 3 5 1 -2 -4
./push_swap 3 5 1 -4 -2 | ./checker_linux 3 5 1 -4 -2
./push_swap 3 5 -2 1 -4 | ./checker_linux 3 5 -2 1 -4
./push_swap 3 5 -2 -4 1 | ./checker_linux 3 5 -2 -4 1
./push_swap 3 5 -4 1 -2 | ./checker_linux 3 5 -4 1 -2
./push_swap 3 5 -4 -2 1 | ./checker_linux 3 5 -4 -2 1
./push_swap -4 1 -2 3 5 | ./checker_linux -4 1 -2 3 5
./push_swap -4 1 -2 5 3 | ./checker_linux -4 1 -2 5 3
./push_swap -4 1 3 -2 5 | ./checker_linux -4 1 3 -2 5
./push_swap -4 1 3 5 -2 | ./checker_linux -4 1 3 5 -2
./push_swap -4 1 5 -2 3 | ./checker_linux -4 1 5 -2 3
./push_swap -4 1 5 3 -2 | ./checker_linux -4 1 5 3 -2
./push_swap -4 -2 1 3 5 | ./checker_linux -4 -2 1 3 5
./push_swap -4 -2 1 5 3 | ./checker_linux -4 -2 1 5 3
./push_swap -4 -2 3 1 5 | ./checker_linux -4 -2 3 1 5
./push_swap -4 -2 3 5 1 | ./checker_linux -4 -2 3 5 1
./push_swap -4 -2 5 1 3 | ./checker_linux -4 -2 5 1 3
./push_swap -4 -2 5 3 1 | ./checker_linux -4 -2 5 3 1
./push_swap -4 3 1 -2 5 | ./checker_linux -4 3 1 -2 5
./push_swap -4 3 1 5 -2 | ./checker_linux -4 3 1 5 -2
./push_swap -4 3 -2 1 5 | ./checker_linux -4 3 -2 1 5
./push_swap -4 3 -2 5 1 | ./checker_linux -4 3 -2 5 1
./push_swap -4 3 5 1 -2 | ./checker_linux -4 3 5 1 -2
./push_swap -4 3 5 -2 1 | ./checker_linux -4 3 5 -2 1
./push_swap -4 5 1 -2 3 | ./checker_linux -4 5 1 -2 3
./push_swap -4 5 1 3 -2 | ./checker_linux -4 5 1 3 -2
./push_swap -4 5 -2 1 3 | ./checker_linux -4 5 -2 1 3
./push_swap -4 5 -2 3 1 | ./checker_linux -4 5 -2 3 1
./push_swap -4 5 3 1 -2 | ./checker_linux -4 5 3 1 -2
./push_swap -4 5 3 -2 1 | ./checker_linux -4 5 3 -2 1
./push_swap 5 1 -2 3 -4 | ./checker_linux 5 1 -2 3 -4
./push_swap 5 1 -2 -4 3 | ./checker_linux 5 1 -2 -4 3
./push_swap 5 1 3 -2 -4 | ./checker_linux 5 1 3 -2 -4
./push_swap 5 1 3 -4 -2 | ./checker_linux 5 1 3 -4 -2
./push_swap 5 1 -4 -2 3 | ./checker_linux 5 1 -4 -2 3
./push_swap 5 1 -4 3 -2 | ./checker_linux 5 1 -4 3 -2
./push_swap 5 -2 1 3 -4 | ./checker_linux 5 -2 1 3 -4
./push_swap 5 -2 1 -4 3 | ./checker_linux 5 -2 1 -4 3
./push_swap 5 -2 3 1 -4 | ./checker_linux 5 -2 3 1 -4
./push_swap 5 -2 3 -4 1 | ./checker_linux 5 -2 3 -4 1
./push_swap 5 -2 -4 1 3 | ./checker_linux 5 -2 -4 1 3
./push_swap 5 -2 -4 3 1 | ./checker_linux 5 -2 -4 3 1
./push_swap 5 3 1 -2 -4 | ./checker_linux 5 3 1 -2 -4
./push_swap 5 3 1 -4 -2 | ./checker_linux 5 3 1 -4 -2
./push_swap 5 3 -2 1 -4 | ./checker_linux 5 3 -2 1 -4
./push_swap 5 3 -2 -4 1 | ./checker_linux 5 3 -2 -4 1
./push_swap 5 3 -4 1 -2 | ./checker_linux 5 3 -4 1 -2
./push_swap 5 3 -4 -2 1 | ./checker_linux 5 3 -4 -2 1
./push_swap 5 -4 1 -2 3 | ./checker_linux 5 -4 1 -2 3
./push_swap 5 -4 1 3 -2 | ./checker_linux 5 -4 1 3 -2
./push_swap 5 -4 -2 1 3 | ./checker_linux 5 -4 -2 1 3
./push_swap 5 -4 -2 3 1 | ./checker_linux 5 -4 -2 3 1
./push_swap 5 -4 3 1 -2 | ./checker_linux 5 -4 3 1 -2
./push_swap 5 -4 3 -2 1 | ./checker_linux 5 -4 3 -2 1
