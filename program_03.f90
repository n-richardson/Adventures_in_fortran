program print_test
	implicit none
	character(len=5) :: i_char

!    prints a line of code for the number 10 and shows how to adjust print settings
	print *, "A number ", 10
	print "(3i5)", 7,6,8
	print "(i5)", 7,6,8


	print "(2f8.5)", 3.1415, 1.234
	print "(/,2a8)", "Name","Age"
	print "(e10.3)", 123.456
	print "(a5,i2)", "I am ", 22

	
!	character(len=5) :: i_char
	write (i_char, "(i5)") 10
	print "(a,a)", "A number ", adjustl(i_char)

end program print_test
