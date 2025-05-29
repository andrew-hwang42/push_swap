/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   quick_sort_a_to_b.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/29 02:40:21 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 21:59:02 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

void	rewind_stack(t_stack **a, int size_a, t_stack **b, int size_b)
{
	int	size;

	if (size_a >= size_b)
	{
		size = size_b;
		while (size--)
			do_op("rrr", a, b);
		if (a == b)
			return ;
		size = size_a - size_b;
		while (size--)
			do_op("rra", a, b);
	}
	else
	{
		size = size_a;
		while (size--)
			do_op("rrr", a, b);
		size = size_b - size_a;
		while (size--)
			do_op("rrb", a, b);
	}
}

void	sort_a_len_4(t_stack **a, t_stack **b)
{
	if ((*a)->data > (*a)->next->data)
		do_op("sa", a, b);
	do_op("pb", a, b);
	if ((*a)->data > (*a)->next->data)
		do_op("sa", a, b);
	do_op("pb", a, b);
	if ((*a)->data > (*a)->next->data && (*b)->data < (*b)->next->data)
		do_op("ss", a, b);
	else if ((*a)->data > (*a)->next->data)
		do_op("sa", a, b);
	else if ((*b)->data < (*b)->next->data)
		do_op("sb", a, b);
	do_op("pa", a, b);
	if ((*a)->data > (*a)->next->data)
		do_op("sa", a, b);
	do_op("pa", a, b);
	if ((*a)->data > (*a)->next->data)
		do_op("sa", a, b);
}

void	sort_a(t_stack **a, t_stack **b, int size)
{
	if (size == 2 && stack_is_descending_order(*a, size))
		do_op("sa", a, b);
	else if (size == 3 && stack_is_descending_order(*a, size))
	{
		do_op("ra", a, b);
		do_op("sa", a, b);
		do_op("rra", a, b);
	}
	else if (!stack_is_ascending_order(*a, size))
	{
		if (size == 3)
			sort_3(a, b);
		else if (size == 4)
			sort_a_len_4(a, b);
		else
			sort_5(a, b);
	}
}

void	classify_a_with_pivot(t_stack **a, t_stack **b, t_data *data, int size)
{
	while (size > 0)
	{
		if ((*a)->data <= data->small_pvt[VALUE])
		{
			do_op("pb", a, b);
			data->s++;
		}
		else if ((*a)->data > data->large_pvt[VALUE])
		{
			do_op("ra", a, b);
			data->l++;
		}
		else
		{
			do_op("pb", a, b);
			do_op("rb", a, b);
			data->m++;
		}
		size--;
	}
}

void	sort_a_to_b(t_stack **a, t_stack **b, int size)
{
	t_data	data;

	if (size <= 5)
	{
		sort_a(a, b, size);
		return ;
	}
	data.s = 0;
	data.m = 0;
	data.l = 0;
	if (!set_pivot(*a, &data, size))
		std_err_free_stack(a, b);
	classify_a_with_pivot(a, b, &data, size);
	rewind_stack(a, data.l, b, data.m);
	sort_a_to_b(a, b, data.l);
	sort_b_to_a(a, b, data.m);
	sort_b_to_a(a, b, data.s);
}
