program loop_test

! The objective of this file to highlight the usage of looping
! in the fortran programming language

	implicit none
	integer :: n = 0, m=1
	integer :: secret_num = 7
	
	! loop example using "do" (start, end, increment)
	do n = 1, 10, 2
	  print "(i1)", n
	end do


	print *, "--------------------------"


	! example of while loop
	do while (m <20)
	  if(mod(m,3) == 0) then
	    print "(i2)", m
	    m = m + 1
	    cycle
	  end if
	  m = m + 1
	  if (m >= 10) then 
	    exit
	  end if
	end do


	! example of guessing game with the secret number
	do while (n /= secret_num)
	  print *, "What's your guess? "
	  read *, n
	end do
	print *, "Correct !, You Guessed it!"



end program loop_test