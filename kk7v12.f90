program kk7
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
open(unit=28,file="Energiak14l0.dat",action="write",status="replace")
open(unit=29,file="Energiak15l0.dat",action="write",status="replace")
open(unit=30,file="Energiak16l0.dat",action="write",status="replace")
open(unit=31,file="Energiak17l0.dat",action="write",status="replace")
open(unit=32,file="Energiak18l0.dat",action="write",status="replace")
open(unit=33,file="Energiak19l0.dat",action="write",status="replace")
open(unit=34,file="Energiak20l0.dat",action="write",status="replace")
open(unit=35,file="Energiak21l0.dat",action="write",status="replace")
open(unit=36,file="Energiak22l0.dat",action="write",status="replace")
open(unit=37,file="Energiak23l0.dat",action="write",status="replace")
open(unit=38,file="Energiak24l0.dat",action="write",status="replace")
open(unit=39,file="Energiak25l0.dat",action="write",status="replace")
open(unit=40,file="Energiak26l0.dat",action="write",status="replace")
open(unit=41,file="Energiak27l0.dat",action="write",status="replace")
open(unit=42,file="Energiak28l0.dat",action="write",status="replace")
open(unit=43,file="Energiak29l0.dat",action="write",status="replace")
open(unit=44,file="Energiak30l0.dat",action="write",status="replace")
open(unit=45,file="Energiak31l0.dat",action="write",status="replace")
open(unit=46,file="Energiak32l0.dat",action="write",status="replace")
open(unit=47,file="Energiak33l0.dat",action="write",status="replace")


imax=5000
a0=0.00016_dp
b0=0.005_dp

do nnr=0,33
E=energia_bilaketa(Vr12,a0,b0,nnr)
r1r2=erroak(Vr12,a0,b0,E)
r1=r1r2(1)
r2=r1r2(2)
unitatea=14+nnr

write(unit=unitatea,fmt=*)r1,E
write(unit=unitatea,fmt=*)r2,E
enddo

do i=0,imax
r=a0+i*(b0-a0)/imax
write(unit=13,fmt=*)r,Vr12(r)
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
close(unit=28)
close(unit=29)
close(unit=30)
close(unit=31)
close(unit=32)
close(unit=33)
close(unit=34)
close(unit=35)
close(unit=36)
close(unit=37)
close(unit=38)
close(unit=39)
close(unit=40)
close(unit=41)
close(unit=42)
close(unit=43)
close(unit=44)
close(unit=45)
close(unit=46)
close(unit=47)










end program kk7
 
