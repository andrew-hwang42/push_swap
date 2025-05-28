/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_valid_input.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 04:52:15 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/28 03:04:09 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

int	is_smaller_than_min_int(char *str)
{
	int	i;

	i = 0;
	if (str[i] != '-')
		return (0);
	if (ft_strlen(str) < ft_strlen("-2147483648"))
		return (0);
	if (ft_strlen(str) == ft_strlen("-2147483648"))
	{
		if (str[1] <= '2' && str[2] <= '1' && str[3] <= '4'
			&& str[4] <= '7' && str[5] <= '4' && str[6] <= '8'
			&& str[7] <= '3' && str[8] <= '6' && str[9] <= '4'
			&& str[10] <= '8')
			return (0);
	}
	return (1);
}

int	is_bigger_than_max_int(char *str)
{
	int	i;

	i = 0;
	if (str[i] == '-')
		return (0);
	if (ft_strlen(str) < ft_strlen("2147483647"))
		return (0);
	if (ft_strlen(str) == ft_strlen("2147483647"))
	{
		if (str[0] <= '2' && str[1] <= '1' && str[2] <= '4'
			&& str[3] <= '7' && str[4] <= '4' && str[5] <= '8'
			&& str[6] <= '3' && str[7] <= '6' && str[8] <= '4'
			&& str[9] <= '7')
			return (0);
	}
	return (1);
}

int	is_int_str(char *str)
{
	int	i;

	i = 0;
	while (str[i])
	{
		if (str[i] == '-' && i != 0)
			std_err();
		if (!(ft_isdigit(str[i]) || str[i] == '-'))
			std_err();
		i++;
	}
	if (is_smaller_than_min_int(str)
		|| is_bigger_than_max_int(str))
		std_err();
	return (1);
}

int	check_duplicate_input(int size, char **argv)
{
	int	i;
	int	j;
	int	arr[size];

	i = 0;
	while (argv[i])
	{
		arr[i] = ft_atoi(argv[i]);
		i++;
	}
	i = 0;
	while (i < size)
	{
		j = i + 1;
		while (j < size)
		{
			if (arr[i] == arr[j])
				std_err();
			j++;
		}
		i++;
	}
	return (1);
}

int	check_valid_input(char **argv)
{
	int	i;

	i = 0;
	while (argv[i])
	{
		if (!is_int_str(argv[i]))
			std_err();
		i++;
	}
	if (!check_duplicate_input(i, argv))
		std_err();
	return (1);
}
