/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_stack.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/28 00:25:01 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/30 03:28:30 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

void	sort_3(t_stack **a, t_stack **b)
{
	if ((*a)->data == find_min_data(*a, 3))
	{
		do_op("sa", a, b);
		do_op("ra", a, b);
	}
	else if ((*a)->data == find_max_data(*a, 3))
		do_op("ra", a, b);
	else
	{
		if ((*a)->next->data == find_min_data(*a, 3))
			do_op("sa", a, b);
		else
			do_op("rra", a, b);
	}
}

void	sort_4(t_stack **a, t_stack **b)
{
	int	min;
	int	max;

	min = find_min_data(*a, 4);
	max = find_max_data(*a, 4);
	while ((*a)->data != min && (*a)->data != max)
		do_op("ra", a, b);
	do_op("pb", a, b);
	if (stack_is_descending_order(*a, 3))
		reverse_stack_a(a, b, 3);
	else if (!stack_is_ascending_order(*a, 3))
		sort_3(a, b);
	do_op("pa", a, b);
	if ((*a)->data == max)
		do_op("ra", a, b);
}

void	sort_5(t_stack **a, t_stack **b)
{
	int	min;
	int	max;

	min = find_min_data(*a, 5);
	max = find_max_data(*a, 5);
	while (get_stack_size(*a) > 3)
	{
		if ((*a)->data == min || (*a)->data == max)
			do_op("pb", a, b);
		else
			do_op("ra", a, b);
	}
	if (stack_is_descending_order(*a, 3))
		reverse_stack_a(a, b, 3);
	if (!stack_is_ascending_order(*a, 3))
		sort_3(a, b);
	if ((*b)->data == max)
		do_op("rb", a, b);
	do_op("pa", a, b);
	do_op("pa", a, b);
	do_op("ra", a, b);
}

void	quick_sort(t_stack **a, t_stack **b)
{
	sort_a_to_b(a, b, get_stack_size(*a));
}

void	sort_stack(t_stack **a, t_stack **b)
{
	int	size;

	size = get_stack_size(*a);
	if (size == 1)
		return ;
	if (stack_is_descending_order(*a, size))
	{
		reverse_stack_a(a, b, size);
		return ;
	}
	if (!stack_is_ascending_order(*a, size))
	{
		if (size == 3)
			sort_3(a, b);
		else if (size == 4)
			sort_4(a, b);
		else if (size == 5)
			sort_5(a, b);
		else
			quick_sort(a, b);
	}
}
