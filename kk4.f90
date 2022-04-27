program kk4
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
use mcf_cuadratura
real(kind=dp)::r,P,integr,a,b
real(kind=dp),parameter::eps=0.0000001_dp
integer::i,imax
open(unit=13,file="Prob_puntuak.dat",action="write",status="replace")
imax=10000

a=5.5_dp
b=19.0_dp

integr=integral_pr_berminus1(Vr612,5.5_dp,19.0_dp,-0.000022_dp)

print*,integr

do i=0,imax-1
r=5.5_dp+i*(19.0_dp-5.5_dp)/(imax-1)
write(unit=13,fmt=*)r,1/(pr(Vr612,-0.000022_dp,r)*integr)

enddo

close(unit=13)
end program kk4
