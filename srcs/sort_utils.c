/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/28 02:10:20 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 21:57:15 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

int	stack_is_ascending_order(t_stack *head, int size)
{
	while (size > 1)
	{
		if (head->data > head->next->data)
			return (0);
		head = head->next;
		size--;
	}
	return (1);
}

int	stack_is_descending_order(t_stack *head, int size)
{
	while (size > 1)
	{
		if (head->data < head->next->data)
			return (0);
		head = head->next;
		size--;
	}
	return (1);
}

int	find_min_data(t_stack *head, int size)
{
	int		min;
	t_stack	*curr;

	curr = head;
	min = head->data;
	while (size)
	{
		if (min > curr->data)
			min = curr->data;
		curr = curr->next;
		size--;
	}
	return (min);
}

int	find_max_data(t_stack *head, int size)
{
	int		max;
	t_stack	*curr;

	curr = head;
	max = head->data;
	while (size)
	{
		if (max < curr->data)
			max = curr->data;
		curr = curr->next;
		size--;
	}
	return (max);
}

void	reverse_stack_a(t_stack **a, t_stack **b, int size)
{
	int	i;

	if (size == 2)
		do_op("sa", a, b);
	else if (size == 3)
	{
		do_op("sa", a, b);
		do_op("rra", a, b);
	}
	else
	{
		i = 0;
		while (i < size - 1)
		{
			do_op("pb", a, b);
			i++;
		}
		while (i > 0)
		{
			do_op("pa", a, b);
			do_op("ra", a, b);
			i--;
		}
	}
}
