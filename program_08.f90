! The objective of this file is to show the function of
! arrays in the fortran programming language

program array_test
	implicit none
! Creation of an array that contains five integers
	integer, dimension(1:5) :: a1, a2, a3
! Creation of an array that contains 50 real values
	real, dimension(1:50) :: aR1
! multidimesnional array
	integer, dimension(5,5) ::  a4
! integers that need to be used
	integer :: n,m,x,y
! This array allows for the size to be determined at runtime
	integer, dimension(:), allocatable :: a5
! number of values stored for the allocatable array
	integer :: num_vals = 0
! Define values whenever we create array
	integer, dimension(1:9) :: a6 = (/1,2,3,4,5,6,7,8,9 /)
! integer array to show how to reshape these arrays
	integer, dimension(1:3, 1:3) :: a7

! assigning a number to the array
	a1(1) = 5
	print "(i1)", a1(1)

! assigning a series of numbers using a loop to the array
	print *, "Elements contained in array a1:"
	do n = 1,5
	  a1(n) = n
	  print "(i1)", a1(n)
	end do


! printing certain portions of the elements contained in the array
	print "(3i2)", a1(1:3)
	print "(2i2)", a1(1:3:2)  ! with an increment

! assign elements to multidimensional arrays
	do n = 1,5
	  do m = 1,5
	    a4(n,m) = n
	    
	  end do
	end do


! assign elements to multidimensional arrays and prints it out
!	do n = 1,5
!	  do m = 1,5
!	    print "(i1, a1, i1, a3, i1)", n, " ", m, " : ", a4(n,m)
!	    
!	  end do
!	end do

	

! An applied do loop to cycle through array
	do n = 1,5
	  print "(5i1)", (a4(n,m), m = 1,5)
	end do
	

! How to get the size of an array
	print "(i2)", size(a1)
	print "(i2)", size(a4)
! the number of dimensions of an array
	print "(i2)", rank(a4)
! Number of elements in each dimension
	print "(i2)", shape(a4)

! Choose the size of the array after creation
	print *, "Size of an Array? "
	read *, num_vals
	allocate(a5(1:num_vals))
	do n = 1,num_vals
	  a5(n) = n
	end do

! Choose the elements after the creation of the array
	a2 = (/ 1,2,3,4,7/)
	print "(5i1)", (a2(m), m=1,5)
	a7 = reshape(a6, (/3,3/))
	print "(l1)", all(a1 ==a2,1)
	print "(l1)", any(a1 ==a2,1)
	print "(l1)", count(a1 ==a2,1)
	print "(a30, i1)", "Max value in array 1: ", maxval(a1)
	print "(a30, i1)", "Min value in array 1: ", minval(a1)

	print "(a30, i3)", "Product of a1: ", product(a1)
	print "(a30, i2)", "Sum of a1: ", sum(a1)



	





end program array_test