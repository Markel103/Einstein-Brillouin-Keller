program kk10
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
use rk4
real(kind=dp),dimension(2,2)::y
real(kind=dp)::t
open(unit=13,filename="orbitapuntuak.dat",action="write",status="replace")

!y11 r
!y12 rpunto
!y21 phi
!y22 phipunto


do i=1,imax
call rk4_paso_dp(t,y,f,h)
x=y(1,1)*cos(y(2,1))
y=y(1,1)*sin(y(2,1))
write(unit=13,fmt=*)x,y
enddo








function F(y,t)
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp),intent(in),dimension(:,:)::y
real(kind=dp),intent(in)::t




end function F



end program kk10
