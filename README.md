# Einstein-Brillouin-Keller
Numerical implementation of Einstein-Brillouin-Keller quantization for arbitrary potentials

### Moduluak:
* **konstanteak.f90** &rarr; nahi ditugun konstante edo aldagaiak definitzeko era publikoan eta ondoren edozein modulu eta programatan erabili ahal izateko. Hauek dira:
  * *pi* &rarr; &pi; zenbakia
  * *l* &rarr; momentu angeluar kuantikoa. Moduluan ez zaio baliorik ezartzen gero programetan aukeratu ahal izateko, baina era publikoan definitzen da funtzioek erabili ahal izateko.
  * *hbar_atomiko* &rarr; &#8463; unitate atomikoetan.
  * *G_astro* &rarr; grabitazio unibertsalaren konstantea unitateen sistema astronomikoan.
  * *m1* eta *m2* &rarr; bi gorputzen probleman partikula bakoitzaren masa. Erabili nahi dugun sistemaren eta potentzialaren arabera balio hauek modulu honetan aldatu behar dira. Adibidez, Mg<sub>2</sub> molekula aztertu nahi izatekotan m1=m2=42000 (unitate atomikoetan); edo eguzkia eta lurraren arteko elkarrekintzan m1=1 eta m2=3·10<sup>-6</sup> (unitate sistema astronomikoan).
  * *mu* &rarr; masa laburbildua, *m1* eta *m2*-rekin kalkulatua.

* **funtzioak.f90** &rarr; potentzial eraginkorrak dituen modulua:
  * *Vr612* &rarr; 6-12 potentziala
  * *Vrg* &rarr; potentzial grabitatorioa
  * *Vr12* &rarr; 1-2 potentziala
  * *Vharm* &rarr; potentzial harmonikoa

* **eragiketak.f90** &rarr; egin beharreko kalkulu guztiak egiten dituzten funtzioak ditu:
  * 

