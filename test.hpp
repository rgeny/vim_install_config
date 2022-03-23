/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.hpp                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rgeny <rgeny@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/23 16:31:16 by rgeny             #+#    #+#             */
/*   Updated: 2022/03/23 16:32:17 by rgeny            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_HPP
# define TEST_HPP
# include <iostream>

class test
{
	public:
		test	(void);
		test	(test & src);
		~test	(void);

		test &	operator=	(test & src);

	private:
};

std::ostream &	operator<<	(std::ostream & os
							,test & src);
#endif

