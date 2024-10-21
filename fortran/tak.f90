program tak_program
    implicit none
    integer :: x, y, z, result
    character(len=10) :: arg1, arg2, arg3

    ! Get command line arguments as strings
    call get_command_argument(1, arg1)
    call get_command_argument(2, arg2)
    call get_command_argument(3, arg3)

    ! Convert the arguments to integers
    read(arg1, *) x
    read(arg2, *) y
    read(arg3, *) z

    ! Compute the result of the Tak function
    result = tak(x, y, z)

    ! Print the result without extra spaces
    print '(I0)', result

contains

    recursive integer function tak(x, y, z) result(res)
        implicit none
        integer, intent(in) :: x, y, z

        if (y < x) then
            res = tak(tak(x - 1, y, z), &
                      tak(y - 1, z, x), &
                      tak(z - 1, x, y))
        else
            res = z
        end if
    end function tak

end program tak_program

