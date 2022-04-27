program kk6
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp)::r
open(unit=13,file="kk6puntuak2.dat",action="write",status="replace")

do n=0,1000
r=5.0_dp+n*(19.0_dp-5.0_dp)/1000
write(unit=13,fmt=*)r,Vr612(r)
enddo
close(unit=13)
end program kk6
