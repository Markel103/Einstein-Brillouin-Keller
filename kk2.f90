program kk2
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp)::y

print*,"jaja"
y=minimoV(Vr612,1.0_dp,10.0_dp)
write(unit=*,fmt=*)y
print*, "holaaaa"
print*, erroak(Vr612,1.0_dp,20.0_dp,-0.001_dp)

print*, integral_pr(Vr612,1.0_dp,20.0_dp,-0.001792_dp)


end program kk2
