program kk3
!Vr612-ren energia bilaketaren emaitzak lortzeko (nr desberdinetarako)
use mcf_tipos
use konstanteak
use eragiketak
use funtzioak
real(kind=dp)::em,integr,conp
integer::n
l=26
!integr=integral_pr(Vr612,0.00000001_dp,20.0_dp,-0.001479_dp)
!open(unit=13,file="energiak.dat",action="write",status="replace")
!print*,integr
do n=0,13
em=energia_bilaketa(Vr612,0.00000001_dp,20.0_dp,n)
!write(unit=*,fmt="(f3.14)")em
write(unit=*,fmt=*)em
enddo
!conp=integral_pr(Vr612,0.00000001_dp,20.0_dp,em)
!print*,conp/pi

end program kk3
