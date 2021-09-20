! This fortran program shows the uses of functions in programming with
! fortran.

! Functions are used to make programs within programs to do different tasks
! outside of the main program


program function_test
	implicit none
	integer :: ans, ans2, ans3, ans4
	real :: r_ans

	ans  = get_sum(5,4)
	ans2 = get_sum2(5,4)
	ans3 = get_sum3(5)
	ans4 = factorial(4)
	print "(a8,i1,a6)", "5 + 4 = ", ans, "Try 1"
	print "(a8,i1,a6)", "5 + 4 = ", ans2, "Try 2"
	print "(a8,i1,a6)", "5 + 1 = ", ans3, "Try 3"
	print "(a8,i2)", " 4! = ", ans4

! type contains to intitiate function, integer at bottom represents
! the return type of the function

contains
	integer function get_sum(n1, n2)
	  implicit none
	  integer :: n1, n2, sum
	  sum = n1 + n2
	end function get_sum

	function get_sum2(n1, n2) result(sum)
	  implicit none
	  integer, intent(in) :: n1, n2
	  integer :: sum
	  sum = n1 + n2
	end function get_sum2

! block function from changing input variables using pure
	pure function get_sum3(n1,n2) result(sum)
	  implicit none
	  integer, intent(in) :: n1
	  integer, intent(in), optional :: n2
	  integer :: sum
	  if(present(n2)) then
	    sum = n1 + n2
	  else
	    sum = n1 + 1
	  end if
	end function get_sum3


! recursive function is one that calls itself repeatedly
	recursive function factorial(n) result(o)
	  integer :: n,o
	  if (n==1) then
	    o = 1
	  else
	    o = n * factorial(n-1)
	  end if
	end function factorial




end program function_test