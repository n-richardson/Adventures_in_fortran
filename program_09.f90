! This program teaches the uses of 'formatting' in the
! fortran programming language

program format_test
	implicit none
	
	integer :: num, cups
	real :: liters, quarts


! This do loop formats the multiplications of 7 from 1-12	
	do num = 1,12
	  print 100, num, num * 7
	  100 format(i2,' * 7 = ', i3)
	end do

! A nice layout for cups to liters/quarts table
	print "(/a18)", "Cups Liters Quarts"
	do cups = 1,10
	  liters =  cups * 0.236
	  quarts = cups * 0.208
	  print 200, cups, liters, quarts
	  200 format(" ", i3, 2x, f5.3, 2x, f5.3)
	end do	




end program format_test


