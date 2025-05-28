/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 03:49:16 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/28 03:31:40 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PUSH_SWAP_H
# define PUSH_SWAP_H

# include <stdlib.h>
# include "./struct.h"
# include "../libft/incs/libft.h"
# include "../libft/incs/ft_printf.h"

/* main.c */
void	print_stack(t_stack *stack);//
int		main(int argc, char **argv);

/* check_valid_input.c */
int		is_smaller_than_min_int(char *str);
int		is_bigger_than_max_int(char *str);
int		is_int_str(char *str);
int		check_duplicate_input(int size, char **argv);
int		check_valid_input(char **argv);

/* do_op.c */
int		do_op_s(t_stack *head);
int		do_op_p(t_stack **head, t_stack *new_first_node);
int		do_op_r(t_stack **head);
int		do_op_rr(t_stack **head);
void	do_op(char *str, t_stack **a, t_stack **b);

/* sort_stack.c */
void	sort_3(t_stack **a, t_stack **b);
void	sort_4(t_stack **a, t_stack **b);
void	sort_stack(t_stack **a, t_stack **b);

/* node_utils.c */
t_stack	*create_new_node(int data);
void	append_new_node(t_stack **head, t_stack *new_node);
t_stack	*detach_first_node(t_stack **head);

/* stack_utils.c */
void	init_stack(char **argv, t_stack **a, t_stack **b);
int		get_stack_size(t_stack *head);
void	free_stack(t_stack **stack);

/* sort_utils.c */
int		stack_is_ascending_order(t_stack *head);
int		stack_is_descending_order(t_stack *head);
void	reverse_stack_a(t_stack **a, t_stack **b, int size);
int		find_min_data(t_stack *head);
int		find_max_data(t_stack *head);

/* utils.c */
void	std_err(void);
int		are_identical(char *s1, char *s2);

#endif
