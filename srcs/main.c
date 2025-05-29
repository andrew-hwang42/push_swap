/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 03:55:34 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 22:01:31 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

int	main(int argc, char **argv)
{
	t_stack	*a;
	t_stack	*b;

	if (argc < 2)
		std_err();
	argv++;
	if (!check_valid_input(argv))
		std_err();
	init_stack(argv, &a, &b);
	sort_stack(&a, &b);
	free_stack(&a);
	free_stack(&b);
	return (0);
}
