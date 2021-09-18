! This script file shows the usage of mathematical
! operators in the fortran programming language

program math_stuff
	implicit none
	real :: float_num  = 1.11111111
	real :: float_num2 = 1.11111111
	double precision :: dbl   = 1.11111111111d+0
	double precision :: dbl_2 = 1.11111111111d+0
	real :: rand(1)
	integer :: low = 1, high = 10

!     example of the mathematical operators on the digits 4 and 5
	print "(a8, i1)", "5 + 4 = ", (5 + 4)
	print "(a8, i1)", "5 - 4 = ", (5 - 4)
	print "(a8, i2)", "5 * 4 = ", (5 * 4)
	print "(a8, i2)", "5 / 4 = ", (5 / 4)
	print "(a8, i2)", "5 % 4 = ", mod(5, 4)
	print "(a8, i3)", "5 ^ 4 = ", (5**4) 

!      example of how precision works

	print "(f17.15)", float_num + float_num2
	print "(f17.15)", dbl + dbl_2

!      example of a random number generator
	call random_number(rand)
	print "(i2)", low + floor((high + 1 - low)*rand)

end program math_stuff
