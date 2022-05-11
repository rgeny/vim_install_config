#include "skeleton.hpp"

skeleton &	skeleton::operator=	(skeleton const & src)
{
	(void)src;
	return (*this);
}

std::ostream &	operator<<		(std::ostream & os
								,skeleton const & src)
{
	(void)src;
	return (os);
}
