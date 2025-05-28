/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/28 02:10:20 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/28 06:52:55 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

int	stack_is_ascending_order(t_stack *head)
{
	int	size = get_stack_size(head);
	int	i;

	i = 0;
	while (i < size - 1)
	{
		if (head->data > head->next->data)
			return (0);
		head = head->next;
		i++;
	}
	return (1);
}

int	stack_is_descending_order(t_stack *head)
{
	int	size = get_stack_size(head);
	int	i;

	i = 0;
	while (i < size - 1)
	{
		if (head->data < head->next->data)
			return (0);
		head = head->next;
		i++;
	}
	return (1);
}

int	find_min_data(t_stack *head)
{
	int		size;
	int		min;
	t_stack	*curr;

	size = get_stack_size(head);
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

int	find_max_data(t_stack *head)
{
	int		size;
	int		max;
	t_stack	*curr;

	size = get_stack_size(head);
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
