program kk7h
!Potentzial harmonikoa eta energia mailak irudikatzeko
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
integer::nnr,i,imax,unitatea
real(kind=dp)::r,a0,b0,r1,r2,E
real(kind=dp),dimension(2)::r1r2
l=0
open(unit=13,file="Potentzialapuntuakl0.dat",action="write",status="replace")
open(unit=14,file="Energiak0l0.dat",action="write",status="replace")
open(unit=15,file="Energiak1l0.dat",action="write",status="replace")
open(unit=16,file="Energiak2l0.dat",action="write",status="replace")
open(unit=17,file="Energiak3l0.dat",action="write",status="replace")
open(unit=18,file="Energiak4l0.dat",action="write",status="replace")
open(unit=19,file="Energiak5l0.dat",action="write",status="replace")
open(unit=20,file="Energiak6l0.dat",action="write",status="replace")
open(unit=21,file="Energiak7l0.dat",action="write",status="replace")
open(unit=22,file="Energiak8l0.dat",action="write",status="replace")
open(unit=23,file="Energiak9l0.dat",action="write",status="replace")
open(unit=24,file="Energiak10l0.dat",action="write",status="replace")
open(unit=25,file="Energiak11l0.dat",action="write",status="replace")
open(unit=26,file="Energiak12l0.dat",action="write",status="replace")
open(unit=27,file="Energiak13l0.dat",action="write",status="replace")


imax=1000
a0=-14.0_dp
b0=14.0_dp

do nnr=0,13
E=energia_bilaketa2(Vharm,a0,b0,nnr)
r1r2=erroak(Vharm,a0,b0,E)
r1=r1r2(1)
r2=r1r2(2)
unitatea=14+nnr
print*, nnr, E, r1, r2
write(unit=unitatea,fmt=*)r1,E
write(unit=unitatea,fmt=*)r2,E
enddo

do i=0,imax
r=a0+i*(b0-a0)/imax
write(unit=13,fmt=*)r,Vharm(r)
enddo

close(unit=13)
close(unit=14)
close(unit=15)
close(unit=16)
close(unit=17)
close(unit=18)
close(unit=19)
close(unit=20)
close(unit=21)
close(unit=22)
close(unit=23)
close(unit=24)
close(unit=25)
close(unit=26)
close(unit=27)











end program kk7h
 
