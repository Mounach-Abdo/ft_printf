NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
CFILES = ft_printf.c auxiliary_functions.c

OBJS = $(CFILES:%.c=%.o)


all : $(NAME)


$(NAME): $(OBJS)
	ar rcs $@ $^

%.o : %.c ft_printf.h
	$(CC) $(FLAGS) -c $< -o $@

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re: fclean all
