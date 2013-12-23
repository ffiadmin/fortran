program looptest
	integer :: col,row
    real :: ra(10,10)

  	do row = 1,10
    	do col = 1,10
     		read *,      ra(row, col)
            write (*, *) ra(row, col)
		end do
    end do
end program looptest