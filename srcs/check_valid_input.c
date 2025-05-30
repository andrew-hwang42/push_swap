/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_valid_input.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 04:52:15 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/30 03:27:22 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

int	is_int_range(char *str)
{
	int		sign;
	long	nbr;

	sign = 1;
	if (*str == '-')
	{
		sign = -1;
		str++;
	}
	nbr = 0;
	while (*str)
	{
		if ('0' <= *str && *str <= '9')
			nbr = nbr * 10 + (*str - '0');
		else
			std_err();
		str++;
	}
	if (sign * nbr < -2147483648 || sign * nbr > 2147483647)
		std_err();
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
	if (!is_int_range(str))
		std_err();
	return (1);
}

int	check_duplicate_input(int size, char **argv)
{
	int	i;
	int	j;
	int	arr[9999];

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
