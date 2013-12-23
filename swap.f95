program swap
	implicit none

	integer :: a, b, c
    print *, 'Enter two integers'
    read *, a, b
	print *, 'Your input was: ', a, ' and ', b
    print *, 'Swapping...'

    c = a
    a = b
    b = c

    print *, 'The swapped integers now read: ', a, ' and ', b
end program swap