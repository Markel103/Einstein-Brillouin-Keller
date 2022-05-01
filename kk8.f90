program kk8
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
integer::nnr,i,imax,unitatea
real(kind=dp)::r,a0,b0,r1,r2,E
real(kind=dp),dimension(2)::r1r2

imax=500
a0=0.00000001_dp
b0=20.0_dp





l=0
open(unit=13,file="Potentzialapuntuakl0.dat",action="write",status="replace")
open(unit=14,file="Energiak0l0.dat",action="write",status="replace")
open(unit=15,file="Energiak1l0.dat",action="write",status="replace")
open(unit=16,file="Energiak2l0.dat",action="write",status="replace")
open(unit=17,file="Energiak3l0.dat",action="write",status="replace")
open(unit=18,file="Energiak4l0.dat",action="write",status="replace")


do i=0,imax
r=a0+i*(b0-a0)/imax
write(unit=13,fmt=*)r,Vr612(r)
enddo


do nnr=0,4
E=energia_bilaketa(Vr612,a0,b0,nnr)
r1r2=erroak(Vr612,a0,b0,E)
r1=r1r2(1)
r2=r1r2(2)
unitatea=14+nnr

write(unit=unitatea,fmt=*)r1,E
write(unit=unitatea,fmt=*)r2,E
enddo

close(unit=13)
close(unit=14)
close(unit=15)
close(unit=16)
close(unit=17)
close(unit=18)

l=5
open(unit=13,file="Potentzialapuntuakl5.dat",action="write",status="replace")
open(unit=14,file="Energiak0l5.dat",action="write",status="replace")
open(unit=15,file="Energiak1l5.dat",action="write",status="replace")
open(unit=16,file="Energiak2l5.dat",action="write",status="replace")
open(unit=17,file="Energiak3l5.dat",action="write",status="replace")
open(unit=18,file="Energiak4l5.dat",action="write",status="replace")


do i=0,imax
r=a0+i*(b0-a0)/imax
write(unit=13,fmt=*)r,Vr612(r)
enddo


do nnr=0,4
E=energia_bilaketa(Vr612,a0,b0,nnr)
r1r2=erroak(Vr612,a0,b0,E)
r1=r1r2(1)
r2=r1r2(2)
unitatea=14+nnr

write(unit=unitatea,fmt=*)r1,E
write(unit=unitatea,fmt=*)r2,E
enddo

close(unit=13)
close(unit=14)
close(unit=15)
close(unit=16)
close(unit=17)
close(unit=18)


l=10
open(unit=13,file="Potentzialapuntuakl10.dat",action="write",status="replace")
open(unit=14,file="Energiak0l10.dat",action="write",status="replace")
open(unit=15,file="Energiak1l10.dat",action="write",status="replace")
open(unit=16,file="Energiak2l10.dat",action="write",status="replace")
open(unit=17,file="Energiak3l10.dat",action="write",status="replace")
open(unit=18,file="Energiak4l10.dat",action="write",status="replace")


do i=0,imax
r=a0+i*(b0-a0)/imax
write(unit=13,fmt=*)r,Vr612(r)
enddo


do nnr=0,4
E=energia_bilaketa(Vr612,a0,b0,nnr)
r1r2=erroak(Vr612,a0,b0,E)
r1=r1r2(1)
r2=r1r2(2)
unitatea=14+nnr

write(unit=unitatea,fmt=*)r1,E
write(unit=unitatea,fmt=*)r2,E
enddo

close(unit=13)
close(unit=14)
close(unit=15)
close(unit=16)
close(unit=17)
close(unit=18)

l=15
open(unit=13,file="Potentzialapuntuakl15.dat",action="write",status="replace")
open(unit=14,file="Energiak0l15.dat",action="write",status="replace")
open(unit=15,file="Energiak1l15.dat",action="write",status="replace")
open(unit=16,file="Energiak2l15.dat",action="write",status="replace")
open(unit=17,file="Energiak3l15.dat",action="write",status="replace")
open(unit=18,file="Energiak4l15.dat",action="write",status="replace")


do i=0,imax
r=a0+i*(b0-a0)/imax
write(unit=13,fmt=*)r,Vr612(r)
enddo


do nnr=0,4
E=energia_bilaketa(Vr612,a0,b0,nnr)
r1r2=erroak(Vr612,a0,b0,E)
r1=r1r2(1)
r2=r1r2(2)
unitatea=14+nnr

write(unit=unitatea,fmt=*)r1,E
write(unit=unitatea,fmt=*)r2,E
enddo

close(unit=13)
close(unit=14)
close(unit=15)
close(unit=16)
close(unit=17)
close(unit=18)

end program kk8
 
