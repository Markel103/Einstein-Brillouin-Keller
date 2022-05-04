program kk10
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
use rk4
use kk10mod
real(kind=dp),dimension(4)::y
real(kind=dp)::t,xx,yy,h
integer::imax
open(unit=13,file="orbitapuntuak.dat",action="write",status="replace")
h=0.0001_dp

!print*,pr(Vrg,-100.0_dp,1.0_dp)
imax=1007900
!y1 r
!y2 rpunto
!y3 phi
!y4 phipunto

y(1)=2.0_dp
y(2)=0.0_dp
y(3)=0.0_dp
y(4)=2.0_dp*pi/y(1)**2+0.5_dp    !momentu angeluarra/(mu*r**2)

!print*,y
do i=1,imax
!print*,"y=",y
xx=y(1)*cos(y(3))
yy=y(1)*sin(y(3))
write(unit=13,fmt=*)xx,yy
call rk4_paso_dp(t,y,F1,h)
enddo






!contains

!function F(y,t)
!use mcf_tipos
!use konstanteak
!use funtzioak
!use eragiketak
!real(kind=dp),intent(in),dimension(:)::y
!real(kind=dp),intent(in)::t
!real(kind=dp),dimension(size(y))::F
!
!F(1)=pr(Vrg,-100.0_dp,y(1))/mu
!F(2)=(mu*2.0_dp*pi)/(mu*y(1)**2)
!
!
!end function F



end program kk10
