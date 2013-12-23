program vols
!Calculates difference in volume of 2 spheres
implicit none
real :: rad1,rad2,vol1,vol2
character :: response
do
print *, 'Please enter the two radii'
read *, rad1,rad2
call volume(rad1,vol1)
call volume(rad2,vol2)
print *, "Volume 1 is: ", vol1
print *, "Volume 2 is: ", vol2
print *, "Radius 1 is: ", rad1
print *, "Radius 2 is: ", rad2
write(*,10) 'The difference in volumes is, ',abs(vol1-vol2)
10       format(a,2f10.3)
print *, 'Any more? - hit Y for yes, otherwise hit any key'
read *, response
if (response /= 'Y' .and. response /= 'y') stop
end do
end program vols
!________________________________________________
subroutine volume(rad,vol)   
implicit none
real :: rad,vol,pi
rad = rad * 2
!calculates the volume of a sphere
pi=4.0*atan(1.0)
vol=4./3.*pi*rad*rad*rad
!It's a little quicker in processing to  do r*r*r than r**3!
end subroutine volume