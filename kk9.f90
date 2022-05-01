program kk9
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
integer::i
real(kind=dp)::r,a,b,c
a=1.0_dp
b=19.0_dp

open(unit=13,file="kk9.dat",action="write",status="replace")
do i=0,20
r=a+i*(b-a)/20
!write(unit=13,fmt=*)r,deribatuV(Vr612,r)
print*,"r con el programa=",r,"V con el programa=",Vr612(r),"\n"
c=idatziV(Vr612,r)


enddo
close(unit=13)







end program kk9
