program kk3h
! Potentzial harmonikoarekin energia bilaketa egiteko nr ezberdinetarako
use mcf_tipos
use konstanteak
use eragiketak
use funtzioak
real(kind=dp)::em,integr,conp
integer::n
do n=0,13
em=energia_bilaketa2(Vharm,-9.0_dp,9.1_dp,n)
write(unit=*,fmt=*)em
enddo

end program kk3h
