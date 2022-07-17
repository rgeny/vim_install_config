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

//		void	print_data	(void) const;

	private:
};

#endif
