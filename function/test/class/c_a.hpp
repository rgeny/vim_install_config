/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   c_a.hpp                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: buschiix <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/24 18:05:15 by buschiix          #+#    #+#             */
/*   Updated: 2022/01/24 18:05:15 by buschiix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef C_A_HPP
# define C_A_HPP

class c_a
{
	public:
		 c_a	(void);
		 c_a	(c_a & src);
		~c_a	(void);

		c_a &	operator=	(c_a & src);

	protected:

	private:

};
#endif

