program kk6
!Vr6-12 irudikatzeko l=0 eta l=26 kasuetan
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp)::r,a,b
integer::nmax,n
open(unit=13,file="kk6puntuak1.dat",action="write",status="replace")
open(unit=14,file="kk6puntuak2.dat",action="write",status="replace")

a=5.0_dp
b=19.0_dp
nmax=1000

l=0
do n=0,nmax
r=a+n*(b-a)/nmax
write(unit=13,fmt=*)r,Vr612(r)
enddo
close(unit=13)

l=26
do n=0,nmax
r=a+n*(b-a)/nmax
write(unit=14,fmt=*)r,Vr612(r)
enddo
close(unit=14)

end program kk6
