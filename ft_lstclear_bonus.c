/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear_bonus.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nminotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/13 12:01:39 by nminotte          #+#    #+#             */
/*   Updated: 2022/10/13 21:56:42 by nminotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void*))
{
	t_list	*tmp;

	if (!lst || !*lst || !del)
		return ;
	tmp = *lst;
	while (*lst != NULL)
	{
		tmp = (*lst)->next;
		del((*lst)->content);
		free (*lst);
		*lst = tmp;
	}
	(*lst) = NULL;
	return ;
}
