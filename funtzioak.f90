module funtzioak
public:: U

contains
function U(r)
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::U,a,b
real(kind=dp),parameter:: eps=0.0019636_dp  !a=4.96E7_dp !atomic units
real(kind=dp),parameter:: r0=7.36_dp ! b=624.0_dp !atomic units
a=eps*r0**12.0_dp
b=2.0_dp*eps*r0**6.0_dp
U=a/(r**12.0_dp)-b/(r**6.0_dp) ! potentzial 6-12
end function U


end module funtzioak
