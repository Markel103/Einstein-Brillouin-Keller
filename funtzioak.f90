module funtzioak
public:: U, Vr612

contains
!function U612(r)
!use mcf_tipos
!real(kind=dp),intent(in)::r
!real(kind=dp)::U612,a,b
!real(kind=dp),parameter:: eps=0.0019636_dp  !a=4.96E7_dp !atomic units
!real(kind=dp),parameter:: r0=7.36_dp ! b=624.0_dp !atomic units
!a=eps*r0**12.0_dp
!b=2.0_dp*eps*r0**6.0_dp
!U612=a/(r**12.0_dp)-b/(r**6.0_dp) ! potentzial 6-12
!end function U612

function Vr612(r)
use konstanteak
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::Vr612,a,b,U612
real(kind=dp),parameter:: eps=0.0019636_dp  !a=4.96E7_dp !atomic units
real(kind=dp),parameter:: r0=7.36_dp ! b=624.0_dp !atomic units
a=eps*r0**12.0_dp
b=2.0_dp*eps*r0**6.0_dp
U612=a/(r**12.0_dp)-b/(r**6.0_dp) ! potentzial 6-12
Vr612=real(l,dp)*(real(l,dp)+1)*hbar_atomiko/(2.0_dp*mu*r**2.0_dp) + U612
!print*, r, U612,Vr612
end function Vr612

function Vrg(r)
use konstanteak
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::Vg

Vrg=-G*m1*m2/r+(1000.0_dp*m2*3.8E8_dp)**2/(2*m2*r**2)


end function 

end module funtzioak
