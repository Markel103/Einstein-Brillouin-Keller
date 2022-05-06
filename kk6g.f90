program kk6g
!Vrg potentzial eraginkorra irudikatu
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp)::r,a,b,r1,r2
real(kind=dp),dimension(2)::r1r2
integer::nmax,n
open(unit=13,file="kk6gpuntuak.dat",action="write",status="replace")
!open(unit=14,file="kk6gerroak.dat",action="write",status="replace")
!open(unit=101,file="deribatuVg.dat",action="write",status="replace")

a=0.4_dp
b=5.0_dp
nmax=100000

print*,minimoV(Vrg,a,b)
do n=0,nmax
r=a+n*(b-a)/nmax
!print*,"r con el programa=",r,"V con el programa=",Vrg(r),"\n"
write(unit=13,fmt=*)r,Vrg(r)
!write(unit=101,fmt=*)r,deribatuV(Vrg,r)
enddo
!r1r2=erroak(Vrg,a,b,-1000000000000000000000000000000000000000000.0_dp)
!r1=r1r2(1)
!r2=r1r2(2)
!write(unit=14,fmt=*)r1,Vrg(r1)
!write(unit=14,fmt=*)r2,Vrg(r2)
close(unit=13)
!close(unit=101)
end program kk6g
