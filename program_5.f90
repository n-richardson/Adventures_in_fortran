! This file is used to highlight examples of different 
! Mathematical functions within fortran

program math_functions
implicit none
! Absolute value function
	print "(a10,i1)", "ABS(-1) = ", ABS(-1)

! Square root function
	print "(a11,f3.1)", "SQRT(81) = ", SQRT(81.0)

! Exponential function
	print "(a9,f7.5)", "EXP(1) = ", EXP(1.0)

! Logarithmic function
	print "(a9,f7.5)", "LOG(2.71) = ", LOG(2.71)

! 
	print "(a12,i1)", "INT(2.71) = ", INT(2.71)

! 
	print "(a13,i1)", "NINT(2.71) = ", NINT(2.71)

!
	print "(a14,i1)", "FLOOR(2.71) = ", FLOOR(2.71)

!
	print "(a15,f3.1)", "MAX(2.7, 3.4) = ", MAX(2.7, 3.4)

!
	print "(a15, f3.1)", "MIN(2.7,3.4) = ", MIN(2.7, 3.4)


! Example of trigonometric functions

	print "(a14,f7.5)", "SIN(1.5708) = ", SIN(1.5708)
	print "(a14,f10.5)", "COS(1.5708) = ", COS(1.5708)
	print "(a14,f10.5)", "TAN(1.5708) = ", TAN(1.5708)
	print "(a10,f3.1)", "ASIN(0) = ", ASIN(0.0)
	print "(a10, f3.1)", "ACOS(0) = ", ACOS(0.0)
	print "(a10,f3.1)", "ATAN(0) = ", ATAN(0.0)



end program math_functions

