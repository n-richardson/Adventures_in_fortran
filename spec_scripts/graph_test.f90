! This script is an example of how to use graphs in fortran via
! GNUPlot 


program main
	implicit none
	integer, parameter :: n = 10
	real, dimension(1:n) :: x, y 
	integer :: i
	
! Loop to fill the x array

	do i = 1,n
	  x(i) = i
	end do

! y values are computed from the sin function

	y = sin(x)



	open(unit=1, file='data1.dat')
	do i = 1,n
	  write(1, *) x(i), y(i)
	end do
	close(unit=1)
end program main