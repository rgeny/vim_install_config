#include "skeleton.hpp"

skeleton &	skeleton::operator=	(skeleton const & src)
{
	if (*this == src)
		return (*this);
	return (*this);
}

std::ostream &	operator<<		(std::ostream & os
								,skeleton const & src)
{
	(void)src;
	return (os);
}
