# Einstein-Brillouin-Keller
Numerical implementation of Einstein-Brillouin-Keller quantization for arbitrary potentials

### Moduluak:
* **konstanteak.f90** &rarr; nahi ditugun konstante edo aldagaiak definitzeko era publikoan eta ondoren edozein modulu eta programatan erabili ahal izateko. Hauek dira:
  * *l* &rarr; momentu angeluar kuantikoa. Moduluan ez zaio baliorik ezartzen gero programetan aukeratu ahal izateko, baina era publikoan definitzen da funtzioek erabili ahal izateko.
  * hbar_atomiko &rarr; &#8463; unitate atomikoetan.
  * *G_astro* &rarr; grabitazio unibertsalaren konstantea unitateen sistema astronomikoan.
  * *m1* eta *m2* &rarr; bi gorputzen probleman partikula bakoitzaren masa. Erabili nahi dugun sistemaren eta potentzialaren arabera balio hauek modulu honetan aldatu behar dira. Adibidez, Mg<sub>2</sub> molekula aztertu nahi izatekotan m1=m2=42000 (unitate atomikoetan); edo eguzkia eta lurraren arteko elkarrekintzan m1=1 eta m2=3·10<sup>-6</sup> (unitate sistema astronomikoan).
