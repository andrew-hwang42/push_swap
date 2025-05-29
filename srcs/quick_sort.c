/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   quick_sort.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/29 02:40:21 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 16:40:59 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

void	rewind_a(t_stack **a, t_stack **b, int size)
{
	while (size > 0)
	{
		do_op("rra", a, b);
		size--;
	}
}

void	rewind_b(t_stack **a, t_stack **b, int size)
{
	while (size > 0)
	{
		do_op("rrb", a, b);
		size--;
	}
}

void	rewind_a_b(t_stack **a, t_stack **b, int size)
{
	while (size > 0)
	{
		do_op("rrr", a, b);
		size--;
	}
}

void	classify_b_with_pivot(t_stack **a, t_stack **b, t_data *data, int size)
{
	while (size > 0)
	{
		if ((*b)->data <= data->small_pvt[VALUE])
		{
			do_op("rb", a, b);
			data->s++;
		}
		else if (((*b)->data > data->large_pvt[VALUE]))
		{
			do_op("pa", a, b);
			data->l++;
		}
		else
		{
			do_op("pa", a, b);
			do_op("ra", a, b);
			data->m++;
		}
		size--;
	}
}

void	sort_b_to_a(t_stack **a, t_stack **b, int size)
{
	t_data	data;

	if (size <= 3)
	{
		if (size == 2 || size == 3)
		{
			if ((*b)->data < (*b)->next->data)
				do_op("sb", a, b);
			if (size == 3)
			{
				if (!stack_is_descending_order(*b, size))
				{
					do_op("rb", a, b);
					do_op("sb", a, b);
					do_op("rrb", a, b);
					if ((*b)->data < (*b)->next->data)
						do_op("sb", a, b);
				}
				do_op("pa", a, b);
			}
			do_op("pa", a, b);
		}
		do_op("pa", a, b);
		return ;
	}
	data.s = 0;
	data.m = 0;
	data.l = 0;
	if (!set_pivot(*b, &data, size))
		std_err_free_stack(a, b);
	classify_b_with_pivot(a, b, &data, size);
	sort_a_to_b(a, b, data.l);

	if (data.m >= data.s)
	{
		rewind_a_b(a, b, data.s);
		if (data.m != data.s)
			rewind_a(a, b, data.m - data.s);
	}
	else
	{
		rewind_a_b(a, b, data.m);
		rewind_b(a, b, data.s - data.m);
	}
	sort_a_to_b(a, b, data.m);
	sort_b_to_a(a, b, data.s);
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

void	sort_len_4(t_stack **a, t_stack **b)
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

void	sort_a_to_b(t_stack **a, t_stack **b, int size)
{
	t_data	data;

	if (size <= 5)
	{
		if (!stack_is_ascending_order(*a, size))
		{
			if (size == 2 || size == 3)
			{
				if ((*a)->data > (*a)->next->data)
					do_op("sa", a, b);
				if (size == 3 && !stack_is_ascending_order(*a, size))
				{
					do_op("ra", a, b);
					do_op("sa", a, b);
					do_op("rra", a, b);
					if ((*a)->data > (*a)->next->data)
						do_op("sa", a, b);
				}
				return ;
			}
			if (size == 4)
				sort_len_4(a, b);
			else if (size == 5)
				sort_5(a, b);
		}
		return ;
	}
	data.s = 0;
	data.m = 0;
	data.l = 0;
	if (!set_pivot(*a, &data, size))
		std_err_free_stack(a, b);
	classify_a_with_pivot(a, b, &data, size);

	if (data.l >= data.m)
	{
		rewind_a_b(a, b, data.m);
		if (data.l != data.m)
			rewind_a(a, b, data.l - data.m);
	}
	else
	{
		rewind_a_b(a, b, data.l);
		rewind_b(a, b, data.m - data.l);
	}
	sort_a_to_b(a, b, data.l);
	sort_b_to_a(a, b, data.m);
	sort_b_to_a(a, b, data.s);
}

void	quick_sort(t_stack **a, t_stack **b)
{
	sort_a_to_b(a, b, get_stack_size(*a));
}
