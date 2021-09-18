! The objective of this fortran script is to learn about the
! usage of structures in the fortran programming language

program structure_test

	implicit none
! Allows for user to create special data types that can contain
! multiple types of data

	type Customer
	  character (len=40) :: name
	  integer :: age
	  real :: balance
	end type Customer

	type(Customer), dimension(5) :: customers
	integer :: n
	
! This is how to create specialty data type
	type(Customer) :: cust1
	cust1%name = "Sally Smith"
	cust1%age = 20
	cust1%balance = 320.45
	customers(1) = cust1
	customers(2)%name = "Tom Pyle"
	customers(2)%age = 35
	customers(2)%balance = 229.78


! Print out the data contained in the structure
	do n= 1,2
	  print *, customers(n)
	end do




end program structure_test
