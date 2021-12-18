module pkg_test_splitmix64

    ! <module>s to import
    use ,     intrinsic :: iso_fortran_env
    use , non_intrinsic :: pkg_splitmix64


    ! require all variables to be explicitly declared
    implicit none


    ! accessibility of the <subroutine>s and <function>s in this <module>

    ! default accessibility
    private

    ! kind: subroutine
    public :: show_splitmix64


    ! contained <subroutine>s and <function>s are below
    contains


    subroutine show_splitmix64 ( unit_write )

        ! argument(s) for this <subroutine>
        integer , intent(in) :: unit_write


        ! support variable(s) for this <program>
        integer(INT64) :: itr


        call show_splitmix64_unit( unit_write= unit_write , seed= 0_INT64 )
    
        do itr = 0_INT64 , bit_size(itr) - 1_INT64 , 1_INT64

            call show_splitmix64_unit( &!
                unit_write = unit_write , &!
                seed       = shiftl( i= 1_INT64 , shift= itr ) &!
            )

        end do
    
        call show_splitmix64_unit( unit_write= unit_write , seed= -1_INT64 )

        return

    end subroutine show_splitmix64


    subroutine show_splitmix64_unit ( unit_write , seed )

        ! argument(s) for this <subroutine>
        integer        , intent(in) :: unit_write
        integer(INT64) , intent(in) :: seed


        write( unit= unit_write , fmt='(*(1X,I21.20))' , advance= 'yes' ) &!
            seed , &!
            splitmix64_next( seed )

        return

    end subroutine show_splitmix64_unit

end module pkg_test_splitmix64
