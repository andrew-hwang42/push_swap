/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 04:29:29 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 05:05:20 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

void	std_err(void)
{
	ft_printf("Error\n");
	exit(1);
}

void	std_err_free_stack(t_stack **a, t_stack **b)
{
	free_stack(a);
	free_stack(b);
	ft_printf("Error\n");
	exit(1);
}

int	are_identical(char *s1, char *s2)
{
	if (ft_strlen(s1) != ft_strlen(s2))
		return (0);
	if (ft_strncmp(s1, s2, ft_strlen(s1)))
		return (0);
	return (1);
}
