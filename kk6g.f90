program kk6
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp)::r,a,b,r1,r2
real(kind=dp),dimension(2)::r1r2
integer::nmax,n
open(unit=13,file="kk6gpuntuak.dat",action="write",status="replace")
open(unit=14,file="kk6gerroak.dat",action="write",status="replace")

a=1.0_dp
b=4.0E8_dp
nmax=1000

l=0
do n=0,nmax
r=a+n*(b-a)/nmax
write(unit=13,fmt=*)r,Vrg(r)
enddo
r1r2=erroak(Vrg,a,b,-1000000000000000000000000000000000000000000.0_dp)
r1=r1r2(1)
r2=r1r2(2)
write(unit=14,fmt=*)r1,Vrg(r1)
write(unit=14,fmt=*)r2,Vrg(r2)
close(unit=13)
end program kk6
