#ifndef T_SKELETON_HPP
# define T_SKELETON_HPP
# include <iostream>

template<typename T>
class t_skeleton
{
	public:
		 t_skeleton	(void);
		 t_skeleton	(t_skeleton & src);
		~t_skeleton	(void);

		t_skeleton &	operator=	(t_skeleton & src);

	protected:

	private:

};
#endif
