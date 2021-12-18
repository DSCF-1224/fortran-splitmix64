submodule (pkg_splitmix64) imp_next

   ! constant(s) for this <submodule>
   integer(INT64) , parameter :: cnst_step1 = transfer( source= Z'9e3779b97f4a7c15' , mold= 1_INT64 )
   integer(INT64) , parameter :: cnst_step2 = transfer( source= Z'bf58476d1ce4e5b9' , mold= 1_INT64 )
   integer(INT64) , parameter :: cnst_step3 = transfer( source= Z'94d049bb133111eb' , mold= 1_INT64 )

   ! contained <procedure>s, <subroutine>s and <function>s are below
   contains


   module procedure splitmix64_next

        ! variable(s) for this <function>
        integer(INT64) :: state

        state   = seed + cnst_step1
        state   = ieor_shiftr( i= state , shift= 30 ) * cnst_step2
        state   = ieor_shiftr( i= state , shift= 27 ) * cnst_step3
        harvest = ieor_shiftr( i= state , shift= 31 )
        
    end procedure splitmix64_next


    pure elemental function ieor_shiftr ( i , shift )

        ! argument(s) for this <function>
        integer (INT64) , intent(in) :: i
        integer         , intent(in) :: shift

        ! return value of this <function>
        integer(INT64) :: ieor_shiftr

        ieor_shiftr = ieor( i= i, j= shiftr( i= i , shift= shift ) )

    end function ieor_shiftr

end submodule imp_next
