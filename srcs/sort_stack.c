/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_stack.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/28 00:25:01 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/28 03:46:08 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

void	sort_3(t_stack **a, t_stack **b)
{
	if ((*a)->data == find_min_data(*a))
	{
		do_op("sa", a, b);
		do_op("ra", a, b);
	}
	else if ((*a)->data == find_max_data(*a))
		do_op("ra", a, b);
	else
	{
		if ((*a)->next->data == find_min_data(*a))
			do_op("sa", a, b);
		else
			do_op("rra", a, b);
	}
}

void	sort_4(t_stack **a, t_stack **b)
{
	int	pb;
	int	pa;

	pb = 2;
	while (pb)
	{
		if ((*a)->data > (*a)->next->data)
			do_op("sa", a, b);
		do_op("pb", a, b);
		pb--;
	}
	if ((*a)->data > (*a)->next->data && (*b)->data < (*b)->next->data)
		do_op("ss", a, b);
	else if ((*a)->data > (*a)->next->data)
		do_op("sa", a, b);
	else if ((*b)->data < (*b)->next->data)
		do_op("sb", a, b);
	pa = 2;
	while (pa)
	{
		do_op("pa", a, b);
		if ((*a)->data > (*a)->next->data)
			do_op("sa", a, b);
		pa--;
	}
}

void	sort_5(t_stack **a, t_stack **b)
{
	int	min;
	int	max;
	t_stack	*tmp;

	min = find_min_data(*a);
	max = find_max_data(*a);
	while (get_stack_size(*a) > 3)
	{
		if ((*a)->data == min || (*a)->data == max)
			do_op("pb", a, b);
		else
			do_op("ra", a, b);
	}
	tmp = NULL;
	if (stack_is_descending_order(*a))
		reverse_stack_a(a, &tmp, 3);
	sort_3(a, &tmp);
	if (!stack_is_ascending_order(*b))
		do_op("sb", a, b);
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
	else if (size > 1 && !stack_is_ascending_order(*a))
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
