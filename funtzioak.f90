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

function Vrg(r) !tierra y sol !usamos mlurra no hace falta laburbildua
use mcf_tipos
use konstanteak
real(kind=dp),intent(in)::r
real(kind=dp)::Vrg,Lang,vlin
real(kind=dp),parameter::T=1.0_dp !urtetan
real(kind=dp),parameter::d=1.0_dp !unitate astronomikotan
real(kind=dp),parameter::msol=1.0_dp !en masas solares
real(kind=dp),parameter::mlurra=3.0E-6_dp !en masas solares
real(kind=dp),parameter::G=4.0_dp*pi**2 !unitate sistema astronomikoa


vlin=2.0_dp*pi*d/T !orbita zirkularrak suposatu
Lang=mlurra*vlin*d

Vrg=-G*msol*mlurra/r+Lang**2/(2.0_dp*mlurra*r**2)
!print*, "el valor de verdad con funtzioak.f90: r=" ,r,"V=", Vrg,"\n"

end function 

end module funtzioak
