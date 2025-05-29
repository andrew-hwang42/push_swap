/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   do_op.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/28 01:04:00 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 06:44:40 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

int	do_op_s(t_stack *head)
{
	int	tmp;

	tmp = head->data;
	head->data = head->next->data;
	head->next->data = tmp;
	return (1);
}

int	do_op_p(t_stack **head, t_stack *new_first_node)
{
	if (*head != NULL)
	{
		new_first_node->prev = (*head)->prev;
		new_first_node->next = *head;
		(*head)->prev->next = new_first_node;
		(*head)->prev = new_first_node;
	}
	*head = new_first_node;
	return (1);
}

int	do_op_r(t_stack **head)
{
	*head = (*head)->next;
	return (1);
}

int	do_op_rr(t_stack **head)
{
	*head = (*head)->prev;
	return (1);
}

void	do_op(char *str, t_stack **a, t_stack **b)
{
	if (are_identical("sa", str) && do_op_s(*a))
		ft_printf("sa\n");
	else if (are_identical("sb", str) && do_op_s(*b))
		ft_printf("sb\n");
	else if (are_identical("ss", str) && do_op_s(*a) && do_op_s(*b))
		ft_printf("ss\n");
	else if (are_identical("pa", str) && do_op_p(a, detach_first_node(b)))
		ft_printf("pa\n");
	else if (are_identical("pb", str) && do_op_p(b, detach_first_node(a)))
		ft_printf("pb\n");
	else if (are_identical("ra", str) && do_op_r(a))
		ft_printf("ra\n");
	else if (are_identical("rb", str) && do_op_r(b))
		ft_printf("rb\n");
	else if (are_identical("rr", str) && do_op_r(a) && do_op_r(b))
		ft_printf("rr\n");
	else if (are_identical("rra", str) && do_op_rr(a))
		ft_printf("rra\n");
	else if (are_identical("rrb", str) && do_op_rr(b))
		ft_printf("rrb\n");
	else if (are_identical("rrr", str) && do_op_rr(a) && do_op_rr(b))
		ft_printf("rrr\n");
}
