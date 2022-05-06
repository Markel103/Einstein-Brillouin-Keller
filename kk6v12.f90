program kk6
!Vr1-2 potentzial eraginkorra irudikatzeko
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp)::r,a,b
integer::nmax,n
open(unit=13,file="kk6puntuak1.dat",action="write",status="replace")
open(unit=14,file="kk6puntuak2.dat",action="write",status="replace")

a=0.00016_dp
b=0.005_dp
nmax=500

l=0
do n=0,nmax
r=a+n*(b-a)/nmax
write(unit=13,fmt=*)r,Vr12(r)
enddo
close(unit=13)

l=26
do n=0,nmax
r=a+n*(b-a)/nmax
write(unit=14,fmt=*)r,Vr12(r)
enddo
close(unit=14)

end program kk6
