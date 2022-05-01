program kk4
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
use mcf_cuadratura
real(kind=dp)::r,P,integr,a,b,E
real(kind=dp),parameter::eps=0.0000001_dp
real(kind=dp),parameter::d=1.0_dp !unitate astronomikotan
real(kind=dp),parameter::msol=1.0_dp !en masas solares
real(kind=dp),parameter::mlurra=3.0E-6_dp !en masas solares
real(kind=dp),parameter::G=4.0_dp*pi**2 !unitate sistema astronomikoa

integer::i,imax,nr
open(unit=13,file="Prob_puntuakg.dat",action="write",status="replace")

imax=10000

a=0.2_dp
b=5.0_dp

nr=0
!E=energia_bilaketa(Vr612,a,b,nr)
E=-G*msol*mlurra/(2.0_dp*d)
do i=0,imax-1
r=a+i*(b-a)/(imax-1)
write(unit=13,fmt=*)r,prob_r(Vr612,E,a,b,r)
enddo

close(unit=13)

end program kk4
