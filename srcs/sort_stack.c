/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_stack.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/28 00:25:01 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/28 06:53:09 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

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

void	sort_3(t_stack **a, t_stack **b)
{
	int	min;
	int	max;

	min = find_min_data(*a);
	max = find_max_data(*a);
	if ((*a)->data != min && (*a)->data != max)
		do_op("ra", a, b);
	do_op("pb", a, b);
	if (stack_is_descending_order(*a))
		do_op("sa", a, b);
	do_op("pa", a, b);
	if ((*a)->data == max)
		do_op("ra", a, b);
}

void	sort_4(t_stack **a, t_stack **b)
{
	int	min;
	int	max;

	min = find_min_data(*a);
	max = find_max_data(*a);
	while ((*a)->data != min && (*a)->data != max)
		do_op("ra", a, b);
	do_op("pb", a, b);
	sort_3(a, b);
	do_op("pa", a, b);
	if ((*a)->data == max)
		do_op("ra", a, b);
}

void	sort_5(t_stack **a, t_stack **b)
{
	int	min;
	int	max;

	min = find_min_data(*a);
	max = find_max_data(*a);
	while (get_stack_size(*a) > 3)
	{
		if ((*a)->data == min || (*a)->data == max)
			do_op("pb", a, b);
		else
			do_op("ra", a, b);
	}
	sort_3(a, b);
	if ((*b)->data == max)
		do_op("rb", a, b);
	do_op("pa", a, b);
	do_op("pa", a, b);
	do_op("ra", a, b);
}

void	sort_stack(t_stack **a, t_stack **b)
{
	int	size;

	size = get_stack_size(*a);
	if (size > 1 && stack_is_descending_order(*a))
		reverse_stack_a(a, b, size);
	else
	{
		if (size == 3)
			sort_3(a, b);
		else if (size == 4)
			sort_4(a, b);
		else if (size == 5)
			sort_5(a, b);
		// else
		// 	quick_sort();
	}
}
