#ifndef SKELETON_HPP
# define SKELETON_HPP
# include <iostream>

class skeleton
{
	public:
		skeleton	(void);
		skeleton	(skeleton & src);
		~skeleton	(void);

		skeleton &	operator=	(skeleton & src);

	private:
};

std::ostream &	operator<<	(std::ostream & os
							,skeleton & src);
#endif
