/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   c_b c_c.operator.cpp                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: buschiix <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/24 18:05:31 by buschiix          #+#    #+#             */
/*   Updated: 2022/01/24 18:05:31 by buschiix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "c_b c_c.hpp"

c_b c_c &	c_b c_c::operator=	(c_b c_c & src)
{
	(void)src;
	return (*this);
}
