program conditional_test
	implicit none

	! Example of conditional statements for the age integer type
	integer :: age = 20
	if ((age >= 5) .and. (age <= 6)) then
	  print *, "Kindergarten"
	else if ((age>= 7) .and. (age <= 13)) then
	  print *, "Middle School"
	else if ((age >=14) .and. (age <= 18)) then
	  print *, "High School"
	else
	  print *, "Get to WORK!!"
	end if

	
	! example of the .or. statement 
	print *, .true. .or. .false.
	print *, .not. .true.
	print *, 5 /= 9
	print *, "a" < "b"

	!example of select operator
	select case(age)
	case (5)
	  print *, "Kindergarten"
	case(6:13)
	  print *, "Middleschool"
	case(14,15,16,17,18)
	  print *, "High School"
	case default
	  print *, "Get to WORK!!"
	end select



end program conditional_test