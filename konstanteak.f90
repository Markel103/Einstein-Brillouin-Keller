module konstanteak
use mcf_tipos
real(kind=dp),parameter,public:: pi=acos(-1.0_dp)
real(kind=dp),parameter,public:: hbar_atomiko=1.0_dp
real(kind=dp),parameter,public:: hbar=1.054571817E-34_dp
integer,public:: l
real(kind=dp),parameter,public::G=6.67E-11_dp
real(kind=dp),parameter,public:: m1=6.0E24_dp !21867.0_dp
real(kind=dp),parameter,public:: m2=7.0E22_dp !21867.0_dp
real(kind=dp),parameter,public:: mu=21000.0_dp !mu=m1*m2/(m1+m2)
!l=0

end module konstanteak
