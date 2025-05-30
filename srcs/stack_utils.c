/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   stack_utils.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/28 00:48:51 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/30 03:30:22 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

void	init_stack(char **argv, t_stack **a, t_stack **b)
{
	int	i;

	*a = NULL;
	*b = NULL;
	i = 0;
	while (argv[i])
	{
		append_new_node(a, create_new_node(ft_atoi(argv[i])));
		i++;
	}
}

int	get_stack_size(t_stack *head)
{
	int	size;
	int	first_data;

	if (head == NULL)
		return (0);
	if (head->data == head->next->data)
		return (1);
	first_data = head->data;
	size = 1;
	while (1)
	{
		head = head->next;
		size++;
		if (head->next->data == first_data)
			break ;
	}
	return (size);
}

void	free_stack(t_stack **stack)
{
	int	size;

	if (*stack == NULL)
		return ;
	size = get_stack_size(*stack);
	while (size)
	{
		free(detach_first_node(stack));
		size--;
	}
}
