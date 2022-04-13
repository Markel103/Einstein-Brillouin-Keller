module eragiketak
public:: deribatuV,minimoV


contains

function deribatuV(V,r)
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::deribatuV
real(kind=dp):: h
interface
function V(r)
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::V
end function
end interface
h=1.0E-13_dp
deribatuV=(V(r+h)-V(r-h))/(2.0_dp*h)
end function deribatuV

function minimoV(V,a,b)
use mcf_tipos
real(kind=dp),intent(in)::a,b
real(kind=dp):: minimoV,erdia,a2,b2
real(kind=dp),parameter:: eps=1.0E-14_dp
integer::i
integer,parameter:: nmax=10000
interface
function V(r)
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::V
end function
end interface
a2=a
b2=b
do i=1,nmax
if (abs(a2-b2)<eps) then
exit
end if
erdia=(a2+b2)/2.0_dp
if (deribatuV(V,a2)*deribatuV(V,erdia)<0.0_dp) then
b2=erdia
else
a2=erdia
end if
end do
minimoV=erdia
end function  minimoV



end module eragiketak
