program kk4
!Vr6-12-rekin partikulen separazioaren probabilitate dentsitate normalizatuak irudikatzeko
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
use mcf_cuadratura
real(kind=dp)::r,P,integr,a,b,E
real(kind=dp),parameter::eps=0.0000001_dp
integer::i,imax,nr
open(unit=13,file="Prob_puntuaknr0.dat",action="write",status="replace")
open(unit=14,file="Prob_puntuaknr4.dat",action="write",status="replace")
open(unit=15,file="Prob_puntuaknr8.dat",action="write",status="replace")
open(unit=16,file="Prob_puntuaknr12.dat",action="write",status="replace")

imax=10000

a=5.5_dp
b=19.0_dp

nr=0
E=energia_bilaketa(Vr612,a,b,nr)
do i=0,imax-1
r=a+i*(b-a)/(imax-1)
write(unit=13,fmt=*)r,prob_r(Vr612,E,a,b,r)
enddo

nr=4
E=energia_bilaketa(Vr612,a,b,nr)

do i=0,imax-1
r=a+i*(b-a)/(imax-1)
write(unit=14,fmt=*)r,prob_r(Vr612,E,a,b,r)
enddo

nr=8
E=energia_bilaketa(Vr612,a,b,nr)
do i=0,imax-1
r=a+i*(b-a)/(imax-1)
write(unit=15,fmt=*)r,prob_r(Vr612,E,a,b,r)
enddo

nr=12
E=energia_bilaketa(Vr612,a,b,nr)
do i=0,imax-1
r=a+i*(b-a)/(imax-1)
write(unit=16,fmt=*)r,prob_r(Vr612,E,a,b,r)
enddo


close(unit=13)
close(unit=14)
close(unit=15)
close(unit=16)


end program kk4
