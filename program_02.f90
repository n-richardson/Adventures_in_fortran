program fortran_test
	implicit none
	real, parameter :: PI = 3.1415
	real :: r_num1 = 0.0, r_num2 = 0.0
	double precision :: dbl_num = 1.11111111111111d+0
	integer :: i_num1 = 1, i_num2 = 1
	logical :: can_vote = .true.
	character (len =10) :: month
	complex :: com_num = (2.0,4.0)
	print *, "Biggest Real ", huge(r_num1)
	print *, "Biggest Int ",huge(i_num1)
	print *, "Smallest Real ", tiny(r_num1)
	print *, "Biggest Double ", huge(dbl_num)
	print "(a4,i1)", "Int ", kind(i_num1)
	print "(a4,i4)", "Real ", kind(r_num1)
	print "(a4,i4)", "Double ", kind(dbl_num)
	print "(a4,i4)", "logical ", kind(can_vote)



end program fortran_test