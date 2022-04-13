module eragiketak
use mcf_tipos
public:: deribatuV,minimoV,erroak,pr,integral_pr

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

function minimoV(V,a0,b0)
use mcf_tipos
real(kind=dp),intent(in)::a0,b0
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
a2=a0
b2=b0
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

function erroak(V,a0,b0,E)
use mcf_tipos
real(kind=dp),intent(in)::a0,b0,E
real(kind=dp):: erdia,a1,b1,a2,b2,min
real(kind=dp),dimension(2)::erroak
real(kind=dp),parameter:: eps=1.0E-14_dp
integer::i,j
integer,parameter:: nmax=10000
interface
function V(r)
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::V
end function
end interface

min=minimoV(V,a0,b0)
a1=a0
b1=min
do i=1,nmax
if (abs(a1-b1)<eps) then
exit
end if
erdia=(a1+b1)/2.0_dp
if ((E-V(a1))*(E-V(erdia))<0.0_dp) then
b1=erdia
else
a1=erdia
end if
end do

erroak(1)=erdia

a2=min
b2=b0
do i=1,nmax
if (abs(a2-b2)<eps) then
exit
end if
erdia=(a2+b2)/2.0_dp
if ((E-V(a2))*(E-V(erdia))<0.0_dp) then
b2=erdia
else
a2=erdia
end if
end do

erroak(2)=erdia

end function erroak


function pr(V,E,r)
use mcf_tipos
use konstanteak
real(kind=dp),intent(in)::r,E
real(kind=dp):: pr,E_V
interface
function V(r)
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::V
end function
end interface
E_V=E-V(r)
if (E_V<0.0_dp) then
pr=0.0_dp !por si acaso la zehaztasuna nos da un valor negativo en la esquina
else
pr=sqrt(2.0_dp*mu*E_V)
end if
end function pr


function integral_pr(V,a0,b0,E)
use mcf_tipos
use konstanteak
use mcf_cuadratura
real(kind=dp),intent(in)::a0,b0,E
real(kind=dp),dimension(2)::r1r2
real(kind=dp)::integral_pr,emaitza
real(kind=dp),parameter:: eps=1.0E-14_dp
interface
function V(r)
use mcf_tipos
real(kind=dp),intent(in)::r
real(kind=dp)::V
end function
end interface

r1r2=erroak(V,a0,b0,E)
r1=r1r2(1)
r2=r1r2(2)

call romberg(pr,r1,r2,emaitza,eps) ! en romberg pr solo puede tener un argumento
integral_pr=emaitza

end function integral_pr





end module eragiketak
