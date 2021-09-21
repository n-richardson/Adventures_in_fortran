! This fortran file shows the uses of pointers in fortran code
! A pointer has the ability to reference a certain place in memory


program pointer_test
	implicit none
	integer, pointer :: ptr1, ptr2

	integer, pointer, dimension(:) :: a_ptr1

	integer, target :: target1
	allocate(ptr1)
	ptr1 = 5
	print "(a5,i1)", "ptr1 ", ptr1
	ptr2 => target1
	ptr2 = 1
	ptr2 = ptr2 + 2
	print "(a5,i1)", "ptr1 ", ptr1
	print "(a5,i1)", "Tar1 ", target1
	nullify(ptr2)
	deallocate(ptr1)
	


end program pointer_test
