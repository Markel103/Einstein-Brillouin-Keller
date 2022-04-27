program kk3
use mcf_tipos
use konstanteak
use eragiketak
use funtzioak
real(kind=dp)::em,integr,conp
integer::n

!integr=integral_pr(Vr612,0.00000001_dp,20.0_dp,-0.001479_dp)

!print*,integr
do n=0,14
em=energia_bilaketa(Vr612,0.00000001_dp,20.0_dp,n)
print*,n,em
enddo
!conp=integral_pr(Vr612,0.00000001_dp,20.0_dp,em)
!print*,conp/pi

end program kk3
