/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   struct.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahwang <ahwang@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/27 03:49:55 by ahwang            #+#    #+#             */
/*   Updated: 2025/05/27 04:11:37 by ahwang           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef STRUCT_H
# define STRUCT_H

# define VALUE	0
# define IDX	1

typedef struct s_stack
{
	int			data;
	struct s_stack	*prev;
	struct s_stack	*next;
}	t_stack;

/* pvt[2]: [0] for value, [1] for index */
typedef struct s_data
{
	int		small_pvt[2];
	int		large_pvt[2];
	int		cnt_pa;
	int		cnt_pb;
	int		cnt_ra;
	int		cnt_rb;
}	t_data;

#endif
