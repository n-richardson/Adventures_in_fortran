! used in file "program_18.f90"

module shape_mod

! sets up saying our subclasses will have x and y values as well as contains
! our function shape_area below and the function get_area in triangle_mod.f90
	implicit none
	type, abstract :: shape_m
	  real :: x, y

 	contains
	  procedure(shape_area), deferred :: get_area
	end type shape_m

	interface 
	  function shape_area(this) result(area)
	    import :: shape_m
	    class(shape_m) :: this
	    real :: area
	  end function
	end interface

end module shape_mod
	