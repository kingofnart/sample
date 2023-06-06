!> @file
!> This is a Fortran file.
!>
!> @author Andrew King, @date 6/5/23

!> This is a Fortran program.
!>
!> @author Andrew King, @date 6/5/23
program hello
    implicit none
    integer :: MAX_COUNT
    parameter(MAX_COUNT = 15)
  
    print *, 'Hello world!'
    call fizzbuzz(MAX_COUNT)
end program hello
  
  subroutine fizzbuzz(max_count)
    implicit none
    integer, intent(in) :: max_count
    logical :: fizzy, buzzy
    integer :: i
    
    do i = 1, MAX_COUNT
       print *, i
       if (fizzy(i) .eqv. .true.) print *, 'Fizz'
       if (buzzy(i) .eqv. .true.) print *, 'Buzz'
    end do
  end subroutine fizzbuzz
  
  function fizzy(number)
    implicit none
    integer, intent(in) :: number
    logical fizzy
  
    if (mod(number, 3) .eq. 0) then
       fizzy = .true.
    else
       fizzy = .false.
    endif
  end function fizzy
  
  function buzzy(number)
    implicit none
    integer, intent(in) :: number
    logical buzzy
  
    if (mod(number, 5) .eq. 0) then
       buzzy = .true.
    else
       buzzy = .false.
    endif
  end function buzzy