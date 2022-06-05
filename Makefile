# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssadiki <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/29 21:22:37 by ssadiki           #+#    #+#              #
#    Updated: 2022/01/05 19:03:18 by ssadiki          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
INC = libft.h
FLAGS = -Werror -Wextra -Wall -I./$(INC)
CRT = ar -cr
REMOVE = rm -rf

BONUS = ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstadd_back.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c 
SRCS = ft_atoi.c \
       ft_bzero.c \
       ft_isalnum.c \
       ft_isalpha.c \
       ft_isascii.c \
       ft_isdigit.c \
       ft_isprint.c \
       ft_itoa.c \
       ft_memchr.c \
       ft_memcmp.c \
       ft_memcpy.c \
       ft_memmove.c \
       ft_memset.c \
       ft_putchar_fd.c \
        ft_putnbr_fd.c\
       ft_putstr_fd.c \
       ft_putendl_fd.c \
       ft_split.c \
       ft_strchr.c \
       ft_strdup.c \
       ft_striteri.c \
       ft_strjoin.c \
       ft_strlcat.c \
       ft_strlen.c \
       ft_strmapi.c \
       ft_strncmp.c \
       ft_strrchr.c \
       ft_strtrim.c \
       ft_substr.c \
       ft_tolower.c \
       ft_toupper.c \
       ft_strlcpy.c \
       ft_strnstr.c \
       ft_calloc.c

OBJS := $(SRCS:.c=.o)
B_OBJS := $(BONUS:.c=.o)

all : $(NAME)
#Archive
$(NAME): $(OBJS)
	$(CRT) $@ $^
bonus: $(B_OBJS)
	$(CRT) $(NAME) $^

%.o : %.c
	cc $(FLAGS) -c $< -o $@
clean:
	$(REMOVE) $(OBJS) $(B_OBJS)
fclean: clean
	$(REMOVE) $(NAME)
re: fclean all
.PHONY: all clean fclean re
