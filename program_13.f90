! This fortran script file is apart of a tutorial on how to use 
! modules to allow us to use the same function name to work
! with both integer and real types. This will require the 
! file "Mult_mod.f90" to execute this program


program module_test
	use mult_mod
	implicit none
	real :: r_ans


	print "(a8,i2)", "5 * 4 = ", mult(5,4)
	r_ans = mult(5.3, 4.4)
	print "(a12,f6.2)", "5.3 * 4.4 = ", r_ans

end program module_test