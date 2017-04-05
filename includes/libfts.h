/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rcherik <rcherik@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/04 15:54:16 by rcherik           #+#    #+#             */
/*   Updated: 2015/02/09 14:13:45 by rcherik          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <string.h>

extern int		ft_isalpha(int c);
extern int		ft_isdigit(int c);
extern int		ft_isprint(int c);
extern int		ft_isascii(int c);
extern int		ft_isalnum(int c);
extern int		ft_toupper(int c);
extern int		ft_tolower(int c);
extern size_t	ft_strlen(const char *s);
extern void		ft_bzero(void *s, size_t n);
extern char		*ft_strcat(char *s1, const char *s2);
extern int		ft_puts(const char *s);
extern char		*ft_strdup(const char *s);
void			*ft_memset(void *b, int c, size_t len);
void			*ft_memcpy(void *dst, void *src, size_t n);
void			ft_cat(int fd);
int				ft_strcmp(const char *s1, const char *s2);
int				ft_strncmp(const char *s1, const char *s2, size_t n);
char			*ft_strncat(char *s1, const char *s2, size_t n);
char			*ft_strcpy(char *dst, const char *src);
char			*ft_strncpy(char *dst, const char *src, size_t n);
#endif
