#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rhallste <rhallste@student.42.us.org>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/18 09:37:14 by rhallste          #+#    #+#              #
#    Updated: 2018/02/12 16:33:35 by rhallste         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME		= 	ft_ssl
CC			=	gcc
EXTRA_FLAGS =	-Weverything -Wno-cast-qual
CFLAGS		=	-Wall -Werror -Wextra #$(EXTRA_FLAGS)

BASE64		=	base64/base64

FT_SSL		=	main

FILES		=	$(BASE64) $(FT_SSL)

SRCS		=	$(addprefix src/, $(addsuffix .c, $(FILES)))
OBJS		=	$(addprefix src/, $(addsuffix .o, $(FILES)))

all: $(NAME)

$(OBJS): $(SRCS)

$(NAME): $(OBJS)
	@make -C inc/libft

clean:
	@rm -rf $(OBJS)
	@make -C inc/libft clean

fclean: clean
	@rm -rf $(NAME)
	@make -C inc/libft fclean

re: fclean all

.SILENT: $(OBJS)
