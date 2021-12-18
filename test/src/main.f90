program test_splitmix64

    ! <module>s to import
    use ,     intrinsic :: iso_fortran_env
    use , non_intrinsic :: pkg_test_splitmix64

    print * , compiler_version()

    call show_splitmix64 ( OUTPUT_UNIT )

end program test_splitmix64
