! This script is an example of how to use graphs in fortran via
! GNUPlot 


program main
	implicit none
	real, parameter :: pi = 4*atan(1.0)
	integer, parameter :: n = 100
	real, dimension(1:n) :: x, y
	real :: a = 0.0, b = 2*pi
	real :: increment 
	integer :: i
	
! Loop to fill the x array
	increment = (b - a)/(real(n) - 1)

	x(1) = 0.0
	do i = 2,n
	  x(i) = x(i-1) + increment
	end do

! y values are computed from the sin function

	y = sin(x)



	open(unit=1, file='data1.dat')
	do i = 1,n
	  write(1, *) x(i), y(i)
	end do
	close(unit=1)
end program main