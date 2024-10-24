/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nminotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/11 16:51:59 by nminotte          #+#    #+#             */
/*   Updated: 2022/10/13 21:57:40 by nminotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*lstnew;

	lstnew = malloc(sizeof(t_list));
	if (lstnew)
	{
		lstnew->content = content;
		lstnew->next = NULL;
		return (lstnew);
	}	
	return (0);
}
