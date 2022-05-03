program kk5
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp)::em,a,b,E
integer::nr,n
a=5.5_dp
b=19.0_dp
!n=2
!nr=12

!E=energia_bilaketa(Vr612,a,b,nr)
!print*,E
!em=rnitxarondako(Vr612,a,b,E,n)
!print*,em
l=0
do nr=10,12


E=energia_bilaketa(Vr612,a,b,nr)
!print*,E
do n=-1,2
if (n==0) then
cycle
end if
em=rnitxarondako(Vr612,a,b,E,n)
print*,nr,n,em
enddo

end do


end program kk5
