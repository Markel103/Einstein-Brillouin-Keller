module kk10mod
public::F1


contains

function F1(t,y)
use mcf_tipos
use konstanteak
use funtzioak
use eragiketak
real(kind=dp),intent(in),dimension(:)::y
real(kind=dp),intent(in)::t
real(kind=dp),dimension(4)::F1
real(kind=dp)::hh
hh=0.0001_dp

F1(1)=y(2)
F1(2)=(-0.5_dp/hh)*(Vr612(y(1)+hh)-Vr612(y(1)-hh))/mu !edo erabili deribatuV
F1(3)=y(4)
F1(4)=sqrt(real(l*(l+1),dp))*hbar_atomiko/mu*(-2.0_dp/y(1)**3)*y(2)      !(mu*2.0_dp*pi)/mu*(-2/y(1)**3)*y(2) !momentu angeluarraren menpe 

!print*,F1

end function F1




end module kk10mod
