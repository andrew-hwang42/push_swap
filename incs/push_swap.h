/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 03:49:16 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 15:31:26 by ahwang           ###   ########.fr       */
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
int		is_int_range(char *str);
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
void	reverse_stack_a(t_stack **a, t_stack **b, int size);
void	sort_3(t_stack **a, t_stack **b);
void	sort_4(t_stack **a, t_stack **b);
void	sort_5(t_stack **a, t_stack **b);
void	sort_stack(t_stack **a, t_stack **b);

/* set_pivot.c */
void	set_pivot_idx(t_data *data, int size);
void	set_pivot_value(t_data *data, int size, int *arr);
int	set_pivot(t_stack *stack, t_data *data, int size);

/* quick_sort.c */
void	rewind_a(t_stack **a, t_stack **b, int size);
void	rewind_b(t_stack **a, t_stack **b, int size);
void	classify_b_with_pivot(t_stack **a, t_stack **b, t_data *data, int size);
void	sort_b_to_a(t_stack **a, t_stack **b, int size);
void	classify_a_with_pivot(t_stack **a, t_stack **b, t_data *data, int size);
void	sort_a_to_b(t_stack **a, t_stack **b, int size);
void	quick_sort(t_stack **a, t_stack **b);

/* node_utils.c */
t_stack	*create_new_node(int data);
void	append_new_node(t_stack **head, t_stack *new_node);
t_stack	*detach_first_node(t_stack **head);

/* stack_utils.c */
void	init_stack(char **argv, t_stack **a, t_stack **b);
int		get_stack_size(t_stack *head);
void	free_stack(t_stack **stack);

/* sort_utils.c */
int		stack_is_ascending_order(t_stack *head, int size);
int		stack_is_descending_order(t_stack *head, int size);
int		find_min_data(t_stack *head, int size);
int		find_max_data(t_stack *head, int size);

/* utils.c */
void	std_err(void);
void	std_err_free_stack(t_stack **a, t_stack **b);
int		are_identical(char *s1, char *s2);

#endif
