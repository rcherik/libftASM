# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rcherik <rcherik@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/04 15:54:09 by rcherik           #+#    #+#              #
#    Updated: 2015/02/19 14:10:58 by rcherik          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OS := $(shell uname)
ifeq ($(OS),Linux)
SHELL := /bin/bash
else
SHELL := /bin/sh
endif

ifeq ($(OS),Linux)
ECHO = echo -e
COMPIL = elf64
else
ECHO = echo
COMPIL = macho64 --prefix _
endif

NAME = libfts.a
CFLAGS = gcc -Wall -Wextra -Werror
ASMFLAGS = nasm -f $(COMPIL)
IFLAGS = -I includes
PATH_SRC = src
PATH_OBJ = obj
FIRST_SRC = $(addprefix $(PATH_SRC)/, $(shell ls -1 $(PATH_SRC) | head -n 1))
SRC = ft_isalpha.s\
	  ft_isdigit.s\
	  ft_isprint.s\
	  ft_isascii.s\
	  ft_isalnum.s\
	  ft_toupper.s\
	  ft_tolower.s\
	  ft_memset.s\
	  ft_memcpy.s\
	  ft_strlen.s\
	  ft_bzero.s\
	  ft_strcat.s\
	  ft_puts.s\
	  ft_strdup.s\
	  ft_cat.s\
	  ft_strcmp.s\
	  ft_strncmp.s\
	  ft_strncat.s\
	  ft_strcpy.s\
	  ft_strncpy.s

OBJ = $(patsubst %.s, $(PATH_OBJ)/%.o, $(SRC))
INCLUDES = includes/libfts.h

all: $(NAME)

$(PATH_OBJ)/%.o : $(addprefix $(PATH_SRC)/, %.s) $(INCLUDES)
	@mkdir -p $(PATH_OBJ)
	@$(ASMFLAGS) $(IFLAGS) -o $@ $<
	@ if [ $< == $(FIRST_SRC) ]; then \
			$(ECHO) "\033[32;01mlibfts : [ \033[00m\c"; \
		fi
	@$(ECHO) "\033[32;01m.\033[00m\c"

$(NAME): $(OBJ)
	@$(ECHO) "\033[32;01m ]\033[00m"
	@$(ECHO) "\033[32m[ Objects done ]\033[00m"
	@ar rcs $@ $^
	@$(ECHO) "\033[32m[ Library done ]\033[00m"

clean:
	@rm -f $(OBJ)
	@rm -rf $(PATH_OBJ)
	@$(ECHO) "\033[31m[ Objects deleted ]\033[00m"

fclean: clean
	@rm -rf $(NAME)
	@$(ECHO) "\033[31m[ $(NAME) deleted ]\033[00m"

re: fclean all

.PHONY: all clean fclean re
