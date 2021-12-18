cmake_minimum_required(VERSION 3.10)

enable_language(Fortran)

project(test_pkg.exe Fortran)

set(CMAKE_Fortran_FLAGS   "-ffree-line-length-none -fimplicit-none -pedantic -std=f2008 -Wall -Werror -Wextra")
set(CMAKE_Fortran_FLAGS_DEBUG   "-fbacktrace -fbounds-check -g -O0")
set(CMAKE_Fortran_FLAGS_RELEASE "-O2")

add_executable(${PROJECT_NAME}
	../src/module.f90
	../src/imp_next.f90
	../src/pkg_test_splitmix64/module.f90
	../src/main.f90
)
