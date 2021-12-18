module pkg_splitmix64

    ! <module>s to import
    use , intrinsic :: iso_fortran_env , only: INT64


    ! require all variables to be explicitly declared
    implicit none


    ! accessibility of the <subroutine>s and <function>s in this <module>

    ! default setting
    private

    ! kind: function
    public :: splitmix64_next


   ! <interface>s for this <module>

    interface

        module pure elemental function splitmix64_next ( seed ) result(harvest)

           ! argument(s) for this <function>
           integer(INT64) , intent(in) :: seed

           ! return value of this <function>
           integer(INT64) :: harvest

        end function splitmix64_next

    end interface

end module pkg_splitmix64
