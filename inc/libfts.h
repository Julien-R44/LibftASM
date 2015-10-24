/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jripoute <jripoute@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/19 08:00:43 by sleli42           #+#    #+#             */
/*   Updated: 2015/03/29 20:36:08 by jripoute         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <unistd.h>
# include <stdlib.h>
# include <ctype.h>

/*
** Len
*/
size_t	ft_strlen(const char *s);
size_t	ft_intlen(int nb);

/*
** Strings Functions
*/
char	*ft_strcat(char *dst, const char *src);
char	*ft_strdup(const char *s);
char	*ft_strcpy(char *dst, const char *src);
char	*ft_strchr(const char *s, int c);
char	*ft_strrchr(const char *s, int c);
int		ft_strequ(const char *s1, const char *s2);

/*
** Display
*/
int		ft_puts(const char *str);
void	ft_cat(int fd);

/*
** Memory
*/
void	ft_bzero(void *s, size_t n);
void	*ft_memset(void *s, int c, size_t n);
void	*ft_memcpy(void *dest, const void *src, size_t n);

/*
** isX
*/
int		ft_isprint(int c);
int		ft_isalnum(int c);
int		ft_islower(int c);
int		ft_isupper(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isalpha(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);

#endif
