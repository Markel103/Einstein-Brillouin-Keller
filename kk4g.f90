program kk4g
!potentzial grabitatorioarekin separazioaren probabilitate-dentsitate normalizatuak
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
use mcf_cuadratura
real(kind=dp)::r,P,integr,a,b,E,r1,r2
real(kind=dp),dimension(2)::r1r2
real(kind=dp),parameter::eps=0.0000001_dp
real(kind=dp),parameter::d=1.0_dp
integer::i,imax,nr,j,unitatea
open(unit=13,file="Prob_puntuakg.dat",action="write",status="replace")
open(unit=14,file="Prob_puntuakg2.dat",action="write",status="replace")
open(unit=15,file="Prob_puntuakg3.dat",action="write",status="replace")
open(unit=16,file="Prob_puntuakg4.dat",action="write",status="replace")


imax=10000

a=0.01_dp
b=10.0_dp

nr=0
do j=1,4
E=-G_astro*m1*m2/(2.0_dp*d) !orbita zirkularraren energia !IMPORTANTE erabili konstanteak.f90-n lurra eta eguzkiaren masak
E=E/real(j,dp)
unitatea=j+12
r1r2=erroak(Vrg,a,b,E)
do i=0,imax-1
r=r1r2(1)-(0.000001_dp)+i*(r1r2(2)-r1r2(1)+0.000002_dp)/(imax-1)
write(unit=unitatea,fmt=*)r,prob_r(Vrg,E,a,b,r)
enddo
end do

close(unit=13)
close(unit=14)
close(unit=15)
close(unit=16)
end program kk4g
