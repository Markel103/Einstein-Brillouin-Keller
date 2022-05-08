# Einstein-Brillouin-Keller
Numerical implementation of Einstein-Brillouin-Keller quantization for arbitrary potentials

Fitxategien izenak ez dira ulertzeko intuitiboenak, hasieran frogak egiteko erabili ditugulako, eta bertsio ezberdinak gordetzeko izenak mantendu behar izan ditugulako. Horregatik, hona hemen bakoitzaren azalpena:

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
  * *deribatuV* &rarr; funtzio baten deribatua kalkulatzen du. Argumentuak funtzioa (potentziala) eta aldagaia (r) dira.
  * *minimoV* &rarr; funtzio baten minimoa kalkulatzen du. Argumentuak funtzioa (potentziala), eta zein tartetan bilatu nahi den minimoa (a0, b0) dira.
  * *erroak* &rarr; potentzialaren periapsi eta apoapsia aurkitzeko erroen bilaketa egiten du. Argumentuak potentziala, tartearen hasierako puntua, tartearen amaierako puntua eta energia dira. Apoapsia eta periapsia 2 dimentsioko bektore batean itzultzen ditu.
  * *pr* &rarr; momentu erradiala kalkulatzen du. Argumentuak potentziala, energia eta r dira.
  * *pr_berminus1* &rarr; momentu erradialaren alderantzizkoa kalkulatzen du. Argumentuak potentziala, energia eta r dira.
  * *integral_pr* &rarr; momentu erradiala periapsi eta apoapsiaren artean integratzen du. Argumentuak potentziala, tartearen hasiera eta emaierako puntuak eta energia dira.
  * *integral_pr_berminus1* &rarr; momentu erradialaren alderantzizkoa periapsi eta apoapsiaren artean integratzen du. Argumentuak potentziala, tartearen hasiera eta emaierako puntuak eta energia dira.
  * *energia_bilaketa* &rarr; n<sub>r</sub> energia maila emanda dagokion energia kalkulatzen du. Soilik da baliagarria energia potentzialaren minimotik (negatiboa dena) 0-ra badago. Argumentuak potentziala, tartearen hasiera eta emaierako puntuak eta energia maila (nr) dira.
  * *energia_bilaketa2* &rarr; aurrekoaren berdina baina energia 0-tik goragoko tartean (potentzial harmonikoarentzat).
  * *rnitxarondako_azkarra* &rarr; r<sup>n</sup>-ren itxarondako balioa kalkulatzen du. Argumentuak potentziala, tartearen hasierako eta amaierako puntuak, energia eta n berretzailea dira.

Agertzen diren gainerako funtzioak besteen bertsio zaharragoak edota frogak egiteko funtzioak dira.

### Programak:
* **kk3.f90** &rarr; 6-12 potentzialarekin energia bilaketa egiteko hainbat energia mailetan, do egitura batekin.
* **kk3h.f90** &rarr; aurrekoaren berdina potentzial harmonikoarekin
* **kk4.f90** &rarr; probabilitate dentsitateak irudikatzeko 6-12 potentzialarekin
* **kk4g.f90** &rarr; aurrekoaren berdina potentzial grabitatorioarekin
* **kk5.f90** &rarr; 6-12 potentzialarekin r<sup>n</sup>-ren itxarondako balioa kalkulatzeko
* **kk6.f90** &rarr; l=0 eta l=26 kasuetan potentzial eraginkorrak irudikatzeko (6-12 potentzialarekin)
* **kk6v12.f90** &rarr; aurrekoaren berdina 1-2 potentzialarekin
* **kk7.f90** &rarr; potentzial eraginkorra eta n<sub>r</sub> energia maila ezberdinen energiak irudikatzeko 6-12 potentzialean
* **kk7h.f90** &rarr; aurrekoaren berdina potentzial harmonikoarentzat
* **kk7v12.f90** &rarr; aurrekoaren berdina 1-2 potentzialarentzat
* **kk8.f90** &rarr; 6-12 potentzialarekin l eta nr-ren balio ezberdinetarako potentzial eraginkorrak eta energia mailak irudikatzeko
* **kk10.f90** &rarr; orbitak kalkulatzeko (potentziala bertan aldatu). rk4 modulua erabiltzen du, eta **kk10mod.f90** moduluan beharrezko funtzioa definitu da horretarako.

Gainerako .f90 programak frogak egiteko erabili ditugunak dira.

### Emaitzak:
.png fitxategiak programa ezberdinekin egindako irudiak dira

### Artikuluak:
.pdf fitxategiak erabilitako bibliografiako artikuluak dira
