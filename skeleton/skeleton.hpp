#ifndef SKELETON_HPP
# define SKELETON_HPP
# include <iostream>

class skeleton
{
	public:
		skeleton	(void);
		skeleton	(skeleton const & src);
		~skeleton	(void);

		skeleton &	operator=	(skeleton const & src);

	private:
};

std::ostream &	operator<<	(std::ostream & os
							,skeleton const & src);
#endif
