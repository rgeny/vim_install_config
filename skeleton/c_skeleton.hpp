#ifndef C_SKELETON_HPP
# define C_SKELETON_HPP

class c_skeleton
{
	public:
		 c_skeleton	(void);
		 c_skeleton	(c_skeleton & src);
		~c_skeleton	(void);

		c_skeleton &	operator=	(c_skeleton & src);
};
#endif
