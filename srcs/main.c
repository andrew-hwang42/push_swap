/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 03:55:34 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/28 03:11:46 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

void	print_stack(t_stack *stack)//
{
	int	head_data;

	if (stack == NULL)
	{
		ft_printf("stack is empty\n");
		return ;
	}
	head_data = stack->data;
	while (1)
	{
		ft_printf("data: %d\n", stack->data);
		stack = stack->next;
		if (stack->data == head_data)
			break ;
	}
}

int	main(int argc, char **argv)
{
	t_stack	*a;
	t_stack	*b;

	if (argc < 2)
		std_err();
	argv++;
	if (!check_valid_input(argv))
		std_err();
	init_stack(argv, &a, &b);
	
	// ft_printf("stack a:\n");//
	// print_stack(a);//
	// ft_printf("\n");//
	// ft_printf("stack b:\n");//
	// print_stack(b);//
	// ft_printf("\n");//

	sort_stack(&a, &b);

	// ft_printf("-------------\n");//
	// ft_printf("stack a:\n");//
	// print_stack(a);//
	// ft_printf("\n");//
	// ft_printf("stack b:\n");//
	// print_stack(b);//
	// ft_printf("\n");//

	free_stack(&a);
	free_stack(&b);
	return (0);
}
