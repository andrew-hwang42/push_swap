/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   set_pivot.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/29 04:22:39 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 22:04:23 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

int	*init_arr(t_stack *stack, int size)
{
	int	*arr;
	int	i;

	arr = (int *)malloc(sizeof(int) * size);
	if (!arr)
		return (0);
	i = 0;
	while (i < size)
	{
		arr[i] = stack->data;
		stack = stack->next;
		i++;
	}
	return (arr);
}

void	set_pivot_idx(t_data *data, int size)
{
	int	std;

	std = size / 3;
	if (size % 3 == 2)
		std++;
	data->small_pvt[IDX] = (size - 1) - (2 * std);
	data->large_pvt[IDX] = (size - 1) - std;
}

void	set_pivot_value(t_data *data, int size, int *arr)
{
	int	i;
	int	j;
	int	cnt;

	i = 0;
	while (i < size)
	{
		j = 0;
		cnt = 0;
		while (j < size)
		{
			if (arr[i] > arr[j])
				cnt++;
			j++;
		}
		if (cnt == data->small_pvt[IDX])
			data->small_pvt[VALUE] = arr[i];
		else if (cnt == data->large_pvt[IDX])
			data->large_pvt[VALUE] = arr[i];
		i++;
	}
}

int	set_pivot(t_stack *stack, t_data *data, int size)
{
	int	*arr;

	arr = init_arr(stack, size);
	set_pivot_idx(data, size);
	set_pivot_value(data, size, arr);
	free(arr);
	return (1);
}
