/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ssadiki <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/02 13:43:55 by ssadiki           #+#    #+#             */
/*   Updated: 2022/01/05 18:55:04 by ssadiki          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*p1;

	p1 = malloc(sizeof(t_list));
	if (!p1)
		return (NULL);
	p1->content = content;
	p1->next = NULL;
	return (p1);
}
