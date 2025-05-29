/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   quick_sort_2.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/29 19:56:55 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 19:57:21 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

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
	rewind_stack(a, data.m, b, data.s);
	sort_a_to_b(a, b, data.m);
	sort_b_to_a(a, b, data.s);
}
