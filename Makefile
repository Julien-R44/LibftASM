NAME = libfts.a

SRC = ft_bzero.s ft_isalpha.s ft_isascii.s ft_isdigit.s \
		ft_toupper.s ft_isupper.s ft_islower.s \
		ft_tolower.s ft_isalnum.s ft_strlen.s \
		ft_puts.s ft_strcat.s ft_memset.s ft_strdup.s \
		ft_isprint.s ft_memcpy.s ft_strcpy.s ft_cat.s \
		ft_strchr.s ft_strrchr.s ft_strequ.s

SRCDIR = src/

LINUX	= yes
ifeq ($(LINUX),yes)
	SFLAGS = -f elf64
else
	SFLAGS = -f macho64
endif

SRCS = $(addprefix $(SRCDIR), $(SRC))
OBJS = $(SRCS:.s=.o)
AR = ar rcs
AS = nasm
ASFLAGS = -I./inc/

.SILENT:

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)
	gcc -Wall -Wextra -Werror main.c libfts.a

%.o: %.s
	$(AS) $(SFLAGS) $< -o $@ $(ASFLAGS)

clean:
	rm -f $(OBJS)

fclean:
	rm -f $(NAME)
	rm -f $(OBJS) $(NAME)
	rm -f a.out

re: fclean all

.PHONY: clean fclean re all
