#ifndef SKELETON_HPP
# define SKELETON_HPP



namespace flnx
{
	class skeleton
	{
//CTOR
		public:
			explicit skeleton
				(void)	noexcept	= default;
			explicit skeleton
				(skeleton const& src)	noexcept	= default;
			explicit skeleton
				(skeleton&& src)	noexcept	= default;



//DTOR
		public:
			~skeleton
				(void)	noexcept	= default;
 


//OPERATOR
		public:
			constexpr skeleton&	operator=
				(skeleton const& src)	noexcept	= default;

			constexpr skeleton&	operator=
				(skeleton&& src)	noexcept	= default;



//PUBLIC_MEMBER
		public:



//PRIVATE_MEMBER
		private:

	};
};

#endif
