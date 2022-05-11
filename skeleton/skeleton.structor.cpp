#include "skeleton.hpp"

skeleton:: skeleton	(void)
{
	std::cout	<< "skeleton dfl constructor."
				<< std::endl;
}

skeleton:: skeleton	(skeleton const & src)
{
	(void)src;
	std::cout	<< "skeleton cpy constructor."
				<< std::endl;
}

skeleton::~skeleton	(void)
{
	std::cout	<< "skeleton destructor."
				<< std::endl;
}
