! This is an example that compounds more of the information from 
! file "program_17.f90" using classes to inherit attributes from
! two new modules that are called in below

program class_test
	use shape_mod
	use triangle_mod
	implicit none

	type(triangle_m) :: tri
	tri%x = 10
	tri%y = 20
	print "(a3, f5.2)", "X: ", tri%x
	print "(a3, f5.2)", "Y: ", tri%y
	print "(a6, f6.2)", "AREA: ", tri%get_area()


end program class_test