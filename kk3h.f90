program kk3
use mcf_tipos
use konstanteak
use eragiketak
use funtzioak
real(kind=dp)::em,integr,conp
integer::n
!l=26
!integr=integral_pr(Vr612,0.00000001_dp,20.0_dp,-0.001479_dp)
!open(unit=13,file="energiak.dat",action="write",status="replace")
!print*,integr
do n=0,100
em=energia_bilaketa2(Vharm,-5.0_dp,5.1_dp,n)
!write(unit=*,fmt="(f3.14)")em
print*, em
enddo
!conp=integral_pr(Vr612,0.00000001_dp,20.0_dp,em)
!print*,conp/pi

end program kk3
