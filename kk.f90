program kk
use mcf_tipos
use konstanteak
use funtzioak
integer::i
real(kind=dp)::r

open(unit=110,file="kk.dat",status="replace",action="write")
r=5.0
do i=1,100000
r=r+0.001
write(unit=110,fmt=*) r,Vr612(r)
end do
close(unit=110)

end program kk
