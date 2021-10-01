! This fortran program file shows the usage of the newton solve
! in the fortran programming language


program main
  implicit none
  real(kind=8) :: eps = 0.000000001
  real(kind=8) :: x0 = 3, xn, fxn, fprim
  integer :: i, max_iter = 10000


  ! newton method
  xn = x0
  do i = 1,max_iter
    fxn = f(xn)
    if (abs(fxn) < eps) then
      print "(a12, i4, a11)", "Found after ", i, " iterations"
      print "(a12, f10.2)", "Zero at x = ", xn
      exit
    end if
    fprim = (f(xn + 0.000001) - f(xn))/0.000001
    xn = xn - fxn/fprim
  end do


  ! functions
contains
  real(kind=8) function f(x)
    implicit none
    real(kind=8), intent(in) :: x
    real(kind=8) :: f_res
    f = x**3 - 5
  end function f


  real(kind=8) function f_prime(f,a) result(f_1)
    implicit none
    real(kind=8), external :: f
    real(kind=8), intent(in) :: a
    real(kind=8) :: h = 0.00001
    f_1 = (f(a+h) - f(a))/h

  end function f_prime






end program main
