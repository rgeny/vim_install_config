#ifndef A_SKELETON_HPP
# define A_SKELETON_HPP

class a_skeleton
{
	public:
				 a_skeleton	(void);
				 a_skeleton	(a_skeleton & src);
		virtual ~a_skeleton	(void);

		a_skeleton &	operator=	(a_skeleton & src);

	protected:

	private:

};
#endif
