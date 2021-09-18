! This fortran script details more sophisticated uses of the
! the string data type

program string_test
	implicit none

! character variables
	character (len=30) :: str  = "I'm a string"
	character (len=30) :: str2 = " that is longer"
	character (len=30) :: str3

! join strings
	str3 = trim(str) // trim(str2)
	
	print *, str3

! Different printing options for strings
	print *, str3(1:3)
	print "(a9,i1)", "Index at ", index(str, "string")
	print *, len(str)




end program string_test