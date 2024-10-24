# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nminotte <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/03 14:00:01 by nminotte          #+#    #+#              #
#    Updated: 2022/10/19 20:40:20 by nminotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a

SRC = ft_isascii.c \
	ft_atoi.c \
	ft_bzero.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_memset.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putnbr_fd.c \
	ft_putendl_fd.c \
	ft_itoa.c \
	ft_split.c \
	ft_striteri.c \
	ft_strmapi.c \

SRC_BONUS = ft_lstnew_bonus.c \
	ft_lstadd_front_bonus.c \
	ft_lstsize_bonus.c \
	ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c \
	ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c \
	ft_lstiter_bonus.c \
	ft_lstmap_bonus.c

OBJS = $(SRC:.c=.o)

ifdef BONUS
	SRC += $(SRC_BONUS)
endif

FLAGS = -Wall -Werror -Wextra

all : ${NAME}

%.o: %.c 
	gcc -c $(FLAGS) -o $@ $<

$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)

bonus : 
	make BONUS=1

clean :
	rm -rf $(OBJS) $(SRC_BONUS:.c=.o) 

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean re fclean bonus
