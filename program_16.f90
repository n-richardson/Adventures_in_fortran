! This fortran script file details the usage of file i/o 


program fileio_test
	implicit none
	character (len=100) :: str = "I'm a string"
	character (len=100) :: str2

	integer :: err_status
	character(256) :: err_iomsg

! Creates the file to input/output data to, and an if statement to insure no errors
	open(10, file='date.dat', status='new', iostat = err_status, iomsg=err_iomsg)
	if(err_status /= 0) then
	  write (*,*) "error ", trim(err_iomsg)
	  stop
	end if

! Write a string into the file
	write (10,'(A)') str
	close(10)

	open(11, file='data.dat', status='old')
	read(11, '(A)') str2
	write(*, '(A)') trim(str2)
	close(11, status='Delete')	




end program fileio_test