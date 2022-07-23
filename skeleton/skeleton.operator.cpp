#include "skeleton.hpp"

skeleton &	skeleton::operator=	(__attribute((unused)) skeleton const & src)
{
	return (*this);
}

std::ostream &	operator<<		(std::ostream & os
								,__attribute((unused)) skeleton const & src)
{
	return (os);
}
