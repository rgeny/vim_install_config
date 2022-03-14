#include "skeleton.hpp"

skeleton &	skeleton::operator=	(skeleton & src)
{
	(void)src;
	return (*this);
}

std::ostream &	operator<<		(std::ostream & os
								,skeleton & src)
{
	(void)src;
	return (os);
}
