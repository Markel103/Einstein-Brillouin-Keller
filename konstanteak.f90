module konstanteak
use mcf_tipos
real(kind=dp),parameter,public:: pi=acos(-1.0_dp)
real(kind=dp),parameter,public:: hbar_atomiko=1.0_dp
!real(kind=dp),parameter,public:: hbar=1.054571817E-34_dp
integer,public:: l
!real(kind=dp),parameter,public::G=6.67E-11_dp
real(kind=dp),parameter,public::G_astro=4.0_dp*pi
real(kind=dp),parameter,public:: m1=1.0_dp   !m1=42000.0_dp     !6.0E24_dp !21867.0_dp
real(kind=dp),parameter,public:: m2=3.0E-6_dp    !m2=42000.0_dp     !7.0E22_dp !21867.0_dp
real(kind=dp),parameter,public::mu=m1*m2/(m1+m2)
!l=0

end module konstanteak
