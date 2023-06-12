!> @file
!> This is a Fortran file.
!>
!> @author Andrew King, @date 6/5/23

!> @brief This is a Fortran program.
!>
!> @author Andrew King, @date 6/5/23
!>
!> @return No return value
program hello
   implicit none
   integer :: MAX_COUNT
   parameter(MAX_COUNT = 15)

   print *, 'Hello, world!'
   call fizzbuzz(MAX_COUNT)
end program hello

!> @brief Runs fizzbuzz logic for input iterations
!!
!! Prints 'FizzBuzz' if 1 % 15 = 0
!! Otherwise prints 'Fizz' if 1 % 3 = 0 or 'Buzz' if 1 % 5 = 0
!! Otherwise prints i
!!
!! @param[in]   max_count    number of iterations to run for
subroutine fizzbuzz(max_count)
   implicit none
   integer, intent(in) :: max_count
   logical :: fizzy, buzzy
   integer :: i
   
   do i = 1, MAX_COUNT
      if ((fizzy(i) .eqv. .true.) .and. (buzzy(i) .eqv. .true.)) then 
         print *, 'FizzBuzz'
      elseif (fizzy(i) .eqv. .true.) then 
         print *, 'Fizz'
      elseif (buzzy(i) .eqv. .true.) then 
         print *, 'Buzz'
      else 
         print *, i
      endif
   end do
end subroutine fizzbuzz

!> @brief Checks if input is multiple of 3
!!
!! Returns true if input modulo 3 = 0
!!
!! @param[in]   number    input integer
!! @return boolean of (number % 3)
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

!> @brief Checks if input is multiple of 5
!!
!! Returns true if input modulo 5 = 0
!!
!! @param[in]   number    input integer
!! @return boolean of (number % 5)
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