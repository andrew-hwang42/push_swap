/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   node_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 23:44:57 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/29 08:15:57 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incs/push_swap.h"

t_stack	*create_new_node(int data)
{
	t_stack	*new_node;

	new_node = malloc(sizeof(t_stack));
	if (!new_node)
		std_err();
	new_node->data = data;
	new_node->prev = new_node;
	new_node->next = new_node;
	return (new_node);
}

void	append_new_node(t_stack **head, t_stack *new_node)
{
	if (*head == NULL)
		*head = new_node;
	else
	{
		new_node->prev = (*head)->prev;
		new_node->next = *head;
		(*head)->prev->next = new_node;
		(*head)->prev = new_node;
	}
}

t_stack	*detach_first_node(t_stack **head)
{
	t_stack	*first_node;

	if (*head == NULL)
		return (NULL);
	first_node = *head;
	if ((*head)->next == *head)
		*head = NULL;
	else
	{
		(*head)->prev->next = (*head)->next;
		(*head)->next->prev = (*head)->prev;
		*head = (*head)->next;
		first_node->prev = first_node;
		first_node->next = first_node;
	}
	return (first_node);
}
