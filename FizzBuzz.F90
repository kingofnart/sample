program FizzBuzz
    implicit none

    integer :: i
    do i = 1, 15
        if (mod(i,3) == 0 and mod(i,5) == 0) then
            print *, 'FizzBuzz'
        end if
        if (mod(i,3) == 0) then
            print *, 'Fizz'
        end if
        if (mod(i,5) == 0) then
            print *, 'Buzz'
        end if
        print *,i
    end do
end program FizzBuzz