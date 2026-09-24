---
title: Scrum Guide Expanded
description: A Scrum Guide Expansion Pack a 2020-as Scrum Guide átfogó kiegészítése, amely segít a szakembereknek eligazodni a mai összetett termékkörnyezetekben. Elmélyíti a Scrum alapelveinek megértését a komplexitásról, a termékszemléletről, a munkarendszerekről és a vezetésről szóló további útmutatással, miközben hű marad a Scrum empirizmusra és önmenedzselésre épülő szelleméhez.
keywords:
  - Scrum
  - modern Scrum
  - termékmenedzsment
  - empirikus termékfejlesztés
  - Scrum komplex környezetben
  - Scrum és MI
author:
  - Ralph Jocham
  - John Coleman
  - Jeff Sutherland
date: 2026-01-18T09:00:00Z
type: guide
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 0.8
aliases:
  - /scrum-guide-expanded/latest
---

**_Forrásgyűjtemény a Scrum Guide Expansion Packhez_**  
_Ez a dokumentum önálló művek gyűjteménye. Az egyes szakaszok a jelölésnek megfelelően megtartják saját licencüket vagy szerzői jogi státuszukat. Az adott szakasz felhasználási feltételeiről és jogosultságairól kérjük, tájékozódjon az adott részhez tartozó licencinformációkból._

_Forrás: [2020 Scrum Guide](https://scrumguides.org/), [Scrum Guide Expansion Pack](https://scrumexpansion.org)_  
_Licenc: Creative Commons Nevezd meg! – Így add tovább! 4.0 Nemzetközi ([CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/))._  
© _2025 Ralph Jocham, John Coleman és Jeff Sutherland._  
_Módosítási nyilatkozat: Ez a dokumentum a [2020 Scrum Guide](https://scrumguides.org/) adaptációja. Az eredeti változathoz képest módosításokat tartalmaz._  
_Felelősségkizárás: A dokumentumhoz semmilyen kifejezett vagy hallgatólagos garancia nem kapcsolódik. Használata kizárólag a felhasználó saját felelősségére történik._  
_Ez a szakasz a Creative Commons Nevezd meg! – Így add tovább! 4.0 Nemzetközi licenc alapján érhető el._  
_A Scrum Guide Expansion Pack használatával Ön elfogadja a [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) licenc feltételeit._

---

## Háttér

Jeff Sutherland 1993-ban, az Easelnél vezette be a Scrumot. A módszer kialakítására jelentős hatással voltak Christopher Langton [1–2] Los Alamos Nemzeti Laboratóriumban végzett, a komplex adaptív rendszerek (Complex Adaptive Systems – CAS) elméletéről [3–6] szóló kutatásai, amelyek rámutattak arra, hogy a rendszerek a káosz határán fejlődnek a leggyorsabban.

Ken Schwaber és Jeff Sutherland vezették a Scrum keretrendszer kidolgozását. A 2020-as Scrum Guide [7] – amely Ralph Jocham hozzájárulásait is magában foglalja [8] – a Scrum alapvető elemeit ismerteti. Tobias Mayer *A Simple Guide to Scrum* [9] című műve ennek egy rövidített változata, míg a *Scrum Hexis* [10] a Scrumot 2025-ös nézőpontból bontja ki és értelmezi tovább.

Ez a dokumentum részletesebb magyarázatot ad a Scrum működéséről, és útmutatást nyújt a mai szervezeti környezet kihívásaihoz. Ugyanakkor néhány ponton eltér a 2020-as Scrum Guide megközelítésétől. Ezeket az eltéréseket a dokumentum külön jelöli, és ahol szükséges, rövid magyarázattal is kiegészíti.

## A Scrum Guide Expansion Pack célja

A Scrum Guide Expansion Pack a Scrum minden egyes elemét a „*mit és miért?”* alapú megközelítéssel a mai szervezeti környezetre vetítve magyarázza el. Minden egyes elem meghatározott célt szolgál, és hozzájárul a Scrummal elért általános értékekhez és eredményekhez. Az Expansion Pack rendszeresen fejlődni fog. Az olvasótól elvárjuk, hogy legalább az első alkalommal soronként haladva, a megadott felépítés szerint olvassa el a dokumentumot.

Ez a dokumentum feltételezi a Scrum és a kapcsolódó nyelvezet bizonyos szintű ismeretét. Hasznos lehet, ha a dokumentum elolvasása előtt először a 2020 Scrum Guide-ot olvassa el. A hivatkozások forrásmegjelölés céljából szerepelnek a dokumentumban. Emellett a kapcsolódó SGEP-dokumentumok és azok hivatkozásai lehetőséget biztosítanak az olvasónak a felfedezésre, a kutatásra és a tanulásra, hogy szélesebb körű és mélyebb megértést szerezzen.

A Scrumot a gyakorlati szakembereknek és a Stakeholdereknek akkor érdemes alkalmazniuk, amikor az valóban a megfelelő megközelítés. Alkalmazásakor a cselekvőképesség, az időszerű cselekvés, a bátorság, az átláthatóság, az értékelés (Inspection), az alkalmazkodás (Adaptation), a munkaritmus és a reziliencia szemléletére építve folyamatos fejlődésre kell törekedniük annak érdekében, hogy támogassák a termék céljait (a felhasználók számára megvalósuló Outcome-okat) és a szervezet céljait (az üzleti Impact elérését). Remélhetőleg a Scrum alkalmazása túl fog mutatni az itt leírt iránymutatáson és ezáltal tartós motivációt épít majd a felfedezésre, a kérdezésre és a folyamatos fejlődésre.

A kiegészítő csomag (Expansion Pack) arra szolgál, hogy támogassa az önszerveződő csapatok [11] által végzett termékszállítás rengeteg aspektusát, amelyet a Stakeholderek igényei vagy elvárásai vezérelnek, egy problémára vagy lehetőségre adott válaszként. Ez magában foglalja (de nem kizárólagosan) a termék felfedezését, fejlesztését, leszállítását és az érték megvalósítását. Bár a Scrum eredetileg szoftverfejlesztési környezetből származik, mára számos más területen is széles körben elterjedt, lehetővé téve az értékteremtést komplex [12–17] tevékenységek révén. Használatának terjedésével egyre több szakember – mérnökök, programozók, kutatók, elemzők, jogászok, marketingesek és tudósok – alkalmazza sikeresen a Scrumot saját szakterületén.

A Stakeholderek számára teremtett érték (a Scrum Guide 2020 csupán általánosságban beszél az értékről) minden olyan észlelt vagy megélt szükségletet jelent, amelyet egy Stakeholder – ideértve többek között az ügyfeleket, a döntéshozókat és a felhasználókat – fontosnak tart, és amelynek kielégítését a csapat biztosítja. Azonban az érdekelt felek nem mindig vannak tisztában azzal, mi lehet számukra valóban értékes. A megfigyelés vagy bármilyen bizonyíték – akár szándékosan, akár véletlenül – felszínre hozhatja az értéket, és hatással lehet a prioritásokra.

Amint új információk bukkannak fel, a potenciálisan értékes elemeket azonosítani, megfigyelni (Inspection), finomítani és adaptálni kell. Az érték mindaddig csupán feltételezés, amíg azt bizonyítékok – például megfigyelések vagy mért Outcome-ok – nem támasztják alá. Ezek összesített hatása jelenik meg a szervezet szintjén Impactként.

## Scrum dióhéjban

A Scrum egy olyan keretrendszer, amely komplex [12–17] termékek megvalósítására szolgál, ahol a szakértelem értékes, de önmagában nem elegendő, és az ok-okozati összefüggések csak utólag válnak átláthatóvá. A Scrum a teljes termék-életciklust lefedi, beleértve – de nem kizárólagosan – a termékek vagy funkciók létrehozását, cseréjét, fenntartását, adaptálását, folyamatos változtatását, karbantartását és kivezetését. A Scrum támogatja az egyéneket, csapatokat és szervezeteket abban, hogy rugalmasakká váljanak és azok is maradjanak, valamint abban, hogy értéket teremtsenek a változásokhoz való alkalmazkodás révén.

A Scrum olyan környezetet alakít ki, amely egyszerre támogatja az érdekelt felek igényeinek megértését és az ezekre adott átgondolt válaszokat. A Scrum iteratív és inkrementális megközelítése csökkenti a kockázatot, és támogatja a folyamatos fejlődést. A Scrum segíti a csapatot abban, hogy egyensúlyt teremtsen a problémák feltárása, a Stakeholderek – többek között az ügyfelek – igényeinek megismerése, a megoldások szállítása, a kockázatok proaktív kezelése, az érték validálása (a felhasználóknál megvalósuló Outcome-ok), valamint az Impact (az üzleti eredmények) nyomon követése között.

Kockázatnak tekintünk minden olyan tényezőt, amely a jövőben hátrányos következményekkel járhat. Mivel a kockázati kitettség az idő múlásával is kiszámíthatatlan marad, az előrelátás kulcsfontosságú. A lehetséges kockázatok közé tartozhat – de nem kizárólag – például a piaci bizonytalanság, a probléma és a megoldás rossz illeszkedése, a nem megfelelő termék–piac kapcsolat (Product–market fit), technológiai nehézségek, a jelek felismerése, reagálóképesség, szabályozási előírások betartása, hibás helyreállítási stratégiák vagy rossz kompromisszumos döntések. A Scrum támogatja a proaktív kockázatkezelést és a lehetőségek feltárását.

A Scrum ösztönzi a problémákat vagy lehetőségeket bemutató Stakeholder és az ezeket megoldó emberek között meglévő szeparáltság csökkentését.

Dióhéjban a Scrum egy olyan környezetre épül, ahol:

1.  A támogató Stakeholderek – a továbbiakban Támogatók (Supporters) – a Scrum Master útmutatásával és támogatásával proaktívan elősegítik a Scrum bevezetését és megerősödését. (a Scrum Guide 2020 14-szer említi, de nem definiálja a stakeholder fogalmát)

2.  A Product Owner meghatározza a Product Goal-t, amely kulcsszerepet játszik a Stakeholderek számára az értékteremtésben.

3.  Az önszerveződő Scrum Team [11] meghatározza, finomhangolja és értékes eredményekké alakítja a kiválasztott munka elemeket.

4.  A Scrum Team és az érintettek a Sprint során közösen ellenőrzik az eredményeket, és a tapasztalatok alapján alkalmazkodnak a változásokhoz.

5.  A Támogatók (Supporters) segítik a Scrum Team-et a sikeres működésben. (A Scrum Guide 2020 még nem vezeti be a Támogató (Supporter) fogalmát.)

6.  Ezután a ciklus megismétlése következik.

A kiadás (release) egy olyan folyamat, amely során a termék új vagy frissített verziója elérhetővé válik az érdekelt felek (Stakeholders) számára – beleértve, de nem kizárólag az ügyfeleket, döntéshozókat és végfelhasználókat.

Ez a fejlesztési ciklus egy fordulópontját jelöli, amikor a termék átkerül a fejlesztési fázisból a használatra kész állapotba, és az érdekelt felek számára megvalósulhat az értékteremtés.

A Scrum szándékosan nem teljes. Ahelyett, hogy részletes folyamatokat írna elő, egy olyan keretrendszert biztosít, amely iránymutatást nyújt az emberi kapcsolatok és a célirányos együttműködés terén. Különféle folyamatok, technikák és módszerek egészíthetik ki a Scrumot, de ezek alkalmazása mindig a kontextustól függ, ezért lehetnek különbségek a Scrum felhasználásában.

A Scrum képes beilleszkedni a meglévő gyakorlatokba, de bizonyos esetekben szükségtelenné vagy elavulttá is teheti azokat. A Scrum Team, a Támogatók (Supporters), a vezetés, a munkakörnyezet és az alkalmazott technikák átlátható értékelése révén a Scrum elősegíti a folyamatos fejlődést.

A „Scrum” kifejezést – amely eredetileg a rögbi játékból származik – Hirotaka Takeuchi és Ikujiro Nonaka alkotta meg [18] a tudásalapú munkavégzés kontextusában azoknak a csapatoknak a leírására, amelyek ilyen módon működtek, és amelyeknél a tudás gyorsan terjedt az egész szervezeten belül a kiváló termékek létrehozása érdekében.

## Támogató és kiegészítő elmélet

A Scrum alapja az önszerveződő Scrum Team [11], az emergens folyamatok, az empirikus [19] megközelítés és a lean gondolkodás [20]. Ezt támasztják alá az alábbi támogató és kiegészítő elméletek, valamint olyan gondolatok, mint például:

- Felelősségvállalás,

- A „nem értékteremtő” pazarlás csökkentése (beleértve a szervezeti hatékonysági hiányosságokat),

- A feladatok problémaként vagy lehetőségként való megfogalmazása,

- Felfedezés, teljesítés és értékmegvalósítás, valamint

- Folyamatos fejlődés (Continuous improvement).

## Komplexitás - A Scrum mellett szóló érvek

Az olyan komplex feladatok esetében, mint a termékek fejlesztése, ahol több a kiszámíthatatlan tényező, mint a biztos információ, a szakértelem önmagában értékes, de nem elegendő, mivel az ok-okozati hatásmechanizmus csak utólagosan visszatekintve nyer értelmet. A komplexitásalapú megközelítés [12–17] értékes eszközöket és ötleteket nyújt, továbbá elősegíti a mélyebb megértést. A Scrum Team tagjainak időre van szükségük a gondolkodáshoz, egymás segítéséhez, az újratervezéshez vagy új megközelítések alkalmazásához. A kognitív sokszínűség és az empirizmus segíthet a komplex munka kezelésében.

Minden "ismertnek" hitt tényező, beleértve a piacot és a Stakeholdereket (nem csak az ügyfeleket értjük ezalatt), téves is lehet. Egyes elvárások, igények vagy szükségletek idővel megjelennek, vagy eltűnnek, fontosságuk vagy sürgősségük viszonylagosan változik. Az empirikus megközelítés mechanizmusokat biztosít a feltételezések teszteléséhez, valamint a vizsgálatra (Inspection) és az alkalmazkodásra (Adaptation).

Általában semmi sem marad örökre ugyanazon a helyen. A Scrum Team olyan, eddig ismeretlen megoldások feltárásán és fejlesztésén dolgozhat, amelyek során természetes módon a komplexitás és a káosz határán mozog. Egy idő után, ahogy felfedezik a mintákat és heurisztikákat, a helyzet kevésbé kaotikus, inkább komplex lesz. Később az adott helyzethez képest, a Scrum Team talán közelebb kerül a rendezett térhez, ami ugyan nem könnyen, de megtervezhető. Vagy a dolgok fordítva is alakulhatnak. A Scrum-csapat számára célszerű megállni egy pillanatra és átgondolni, hogy a jelenlegi helyzetben valóban ott tart-e, ahol gondolta. A lényeg az, hogy a termékfejlesztés során gyakran kell szembesülni a kiszámíthatatlansággal, és a Scrum hasznosabb megközelítés lehet, mint a kiszámíthatóság illúzióival kecsegtető variánsok.

*A ki, miért, mit, hogyan, hol és mikor* megvizsgálásán (Inspection) és adaptálásán keresztül rengeteg lehetőség kínálkozik. Fontos, hogy mérsékeljük azt, ami nem működik, és erősítsük azt, ami működik. Az átláthatóság, a vizsgálat és a kitűzött célokhoz való alkalmazkodás - az eredményekről kapott visszajelzések (és a nem kívánt következmények) alapján - értékteremtést, betekintést, kockázatokat és megkérdőjelezett feltételezéseket eredményez; ez elősegítheti a folyamatos fejlődést.

Építs bizalmat egy önszerveződő csapattal, a vizsgálat, az alkalmazkodás, az értékes munka elvégzése és az új meglátások feltárása révén.

## Kibontakozás (Emergence)

Az emergencia [21] azt jelenti, amikor komplex rendszereken [12–17] belüli kölcsönhatásokból értelmes mintázatok vagy viselkedésformák alakulnak ki – olyan mintázatok, amelyeket az elemek önmagukban való vizsgálatával nem lehetett volna előre jelezni. A Scrum keretrendszerében az emergens működést nem szigorú irányítás szabályozza, hanem olyan irányt adó korlátok terelik, mint az időkeretek (Timeboxok), a szerepkörök (amelyeket az SGEP ismét bevezet), valamint a visszacsatolási körök. Ezek megteremtik az önmenedzselés és az alkalmazkodóképesség feltételeit anélkül, hogy előre meghatároznák a pontos eredményeket. Ezek a szerkezetek „szigetekként” működnek a kiszámíthatatlanság tengerében, hasonlóan ahhoz, ahogyan fizikai rendszerekben is spontán módon alakulhatnak ki rendezett minták a véletlenszerűség közepette – ahogy azt Stephen Wolfram munkája [22] is leírja. A lényeg, hogy a Scrum struktúrája elegendő útmutatást nyújt a csapatok önmenedzsmentjéhez és új megoldások kibontakozásához, ahelyett, hogy minden részletet előre meghatározna.

A Scrum csapatok komplex, adaptív rendszerekként működnek, nem irányítás alatt állnak, hanem rövid, párhuzamosan futó, biztonságosan elbukható kísérletek és a folyamatosan érkező visszajelzések révén formálódnak. Az olyan minták [23], mint a Swarming, a Stable Teams és a Kaizen, segítenek a kialakuló viselkedésmódok felismerésében és formálásában. A Scrum nem kényszerít ki eredményeket, hanem lehetőséget teremt arra, hogy a Scrum Team felfedezze a saját működési formáit – például innovatív megoldások vagy új munkamódszerek használatát – és felerősítse azokat, miközben a kevésbé hasznosakat minimalizálja.

Ez a megközelítés felismeri, hogy az önszerveződés [11] nem egy felülről lefelé (top-down) megtervezendő dolog, inkább valami, amit a megfelelő környezetben a felszínre hozhatunk – egy olyan környezetben, amely céltudatos, összehangolt és életteli, visszhangozva Christopher Alexander „Quality Without a Name” (QWAN) [24] elgondolását. A Scrum végső soron nem kockázatként kezeli ezt az önmegvalósítást (emergence), amelyet el kellene kerülni, hanem olyan erőként, amelyet érdemes éltetni a termékfejlesztés kiválóságának elérése érdekében.

## Önszerveződő Scrum Team

Az önszerveződő [11] Scrum Team maga ellenőrzi, hogy jó úton halad-e, cselekszik, ha nem így van, eldönti, hogyan dolgozzon, megoldja a csapaton belüli konfliktusokat és orvosolja a felmerülő problémákat. Ez azt jelenti, hogy a vezetők (managers) [25] – amennyiben szerepet játszanak a folyamatban – nem mondják meg a Scrum Teamnek, mit tegyen, és nem döntenek arról sem, hogy a csapat mely tagjának kellene a problémák megoldására fókuszálnia – sem közvetlenül, sem közvetetten. Ha jelen vannak a vezetők, általában kedvezőbb, ha vezetői képességeket mutatnak.

Az érték köré szerveződő, önmenedzselő Scrum csapatok elengedhetetlenek a kreatív problémamegoldáshoz és az új lehetőségek kiaknázásához; a nem önszerveződő Scrum Teamekre való támaszkodás gátolja a komplexitás kezelésének képességét [12–17]. Az önszerveződő Scrum Team [11] nem tévesztendő össze az egyéni szinten megjelenő „önmenedzseléssel”. A zökkenőmentes együttműködés teszi lehetővé egy kiváló csapat kialakulását. A csapatszintű autonómia és a fokozott döntéshozatali hatékonyság egy hierarchiamentes környezetben sokban hozzájárulhat az önállóság fejlesztéséhez.

## Professzionalizmus

A szakmaiság (Professionalism) a kiválóságra való törekvést, valamint az együttműködésen alapuló értékteremtést jelenti — tisztelet, átláthatóság és felelősségvállalás mentén. Professzionálisan viselkedni azt jelenti, hogy adott dolgokat mindig megteszünk, másokat pedig soha, függetlenül a körülményektől.

A profizmus magába foglalja azt is, hogy maximális felelősséget vállalunk a termékért (Product), annak teljes életciklusa során – a kezdetektől a végéig. Ez a felelősség kiterjed a karbantartásra is - gyakran üzemeltetés formájában - és kiváló lehetőséget nyújt a termékfejlesztőknek az eredményekről szóló visszajelzésekből való tanulásra, amit gyakran DevOps-nak neveznek.

A szoftverfejlesztés területén a professzionalizmusnak része a technikai kiválóság [26] is, de nem csak ezzel azonosítjuk. A technikai kiválóság magában foglal – többek között – olyan gyakorlatokat, mint: Specification by Example, Clean Code, Unit Testing, Test-Driven Development, Test Automation, Continuous Integration, Continuous Delivery, Architecture and Design, Acceptance Testing valamint a tesztelés tudatos és szándékos figyelembevétele.

## Lean Thinking

A Lean szemléletmód [20] célja a pazarlás (waste) csökkentése – mind a munkában, mind annak végrehajtási módjában –, miközben az értékáramlásra és a folyamatos fejlesztésre helyezi a hangsúlyt. A Lean alapelvei a folyamatos fejlődésre és az emberek iránti tiszteletre épülnek. Ha egy szervezet ezeket az alapelveket következetesen alkalmazza, akkor hosszútávon a lehető legalacsonyabb költségek mellett is képes növelni a hatékonyságát, nagyobb értéket szállítani az ügyfeleknek, és elősegíti a folyamatos tanulás és fejlődés légkörét.

## Empirizmus (Empiricism)

Az empirizmus [19] az az elv, amely szerint a döntéseket objektív vagy megfigyelhető bizonyítékok alapján hozzák meg a – gyakran kísérleti jellegű – tanulási ciklusok során. Hasznos lehet olyan helyzetekben, amikor a szakértelem önmagában nem elegendő. A Scrum az empirizmusra épül. A döntéseket mindig a bizonyítékok vagy a megfigyelések alapján hozzák meg. Az empirikus megközelítés folyamatos megfigyeléseken, az elméletek kialakításán és finomításán, az elméletek gyakorlati alkalmazásán, valamint tesztelésen és módosításon alapul, hogy hatékony visszacsatolási hurkok jöhessenek létre.

Az empirizmus segíthet a Scrum Teameknek abban, hogy olyan eredményt szállítsanak, amit a Stakeholderek értékesnek találnak, amikor nem világos, hogy „mit?” vagy „hogyan?” kellene szállítani. A Scrum célja, hogy a valószínűtlent valószínűvé tegye azáltal, hogy lehetővé teszi az érték felfedezését, megvalósítását és realizálását; ez gyakran, de nem kizárólag, kompromisszumokat vagy kísérletezést is magában foglal. A kísérletek alapja rendszerint tesztelhető hipotézis, esetenként megalapozott megérzés. A kísérletezés egyik legfontosabb következménye a tényalapú (evidence-informed) döntéshozatal.

A megállás és reflexió az empirizmus és a Lean gondolkodás elemeit ötvözi, megteremti az átláthatóság, az ellenőrzés (Inspection) és a Product Goal felé alkalmazkodás alapját, ezzel segítve a Scrum Teamet és a Supportereket abban, hogy önmagukat és a környezetüket is fejlesszék.

A Scrum hatékony bevezetése csökkenti a távolságot a problémát vagy lehetőséget felvető Stakeholderek és azok között, akik ezekkel ténylegesen foglalkoznak — úgy, hogy a célok kézzelfoghatóak és értelmesek maradnak, és az értékszállítás gyorsan és gyakran történik. A Stakeholderek gyakran tévesen érezhetik azt, hogy tudják, „mit?” és „hogyan?” kellene megvalósítani. A Scrum Team pedig gyakran tévesen biztos abban, hogy kire lesz hatással a folyamat. Az ellenőrzést (Inspection) és az alkalmazkodást értékesebbnek kell tekinteni, mint az ígéretek betartását vagy a nem megfelelő Stakeholderek kiszolgálását. Minden feltételezés lehet téves. (A Scrum Guide 2020 akár úgy is értelmezhető volt, hogy a Product Owner proxyként működik, és az érték adottnak vagy előre ismertnek tekinthető.)

## Cadence

A sprintekben végzett munka következetes ritmust teremt, amely segíti a Scrum csapatot abban, hogy világos, rövid távú célokra összpontosítson. Ez a ritmus támogatja a rendszeres ellenőrzést (Inspection) és alkalmazkodást (Adaptation), lehetővé téve a Scrum Team számára, hogy a visszajelzések alapján tanuljon és módosítson. Idővel ez fenntartható szállítási ütemet alakít ki, javítja a kiszámíthatóságot, és elősegíti a folyamatos fejlődést.

## A Scrum empirikus folyamatirányításának három pillére (The Three Pillars of Scrum’s Empirical Process Control)

Az empirizmus alapvetően az a filozófia, miszerint a tudás tapasztalásból és megfigyelésből származik. Értékes felismerések születhetnek kíváncsiságból, tapasztalatból, kísérletezésből, adatokból, vizualizációból és megfigyelésből. Az empirikus folyamatirányítás [27–29] egy olyan módszer, amely komplex [12–17] folyamatok - például a Scrumban szereplő folyamatok- irányítására szolgál, a megfigyelt eredmények alapján történő alkalmazkodás révén, a transzparencia, az ellenőrzés és az alkalmazkodás három pillérére támaszkodva.

## Átláthatóság (Transparency)

Az átláthatóság a Scrum egyik alappillére. Felfedi a valóságot és a munka áttekinthetőségét, valamint lehetővé teszi az empirikus megközelítést. Az átláthatóság pontosabb képet nyújt a valóságról, kiindulópontja a ellenőrzésnek (Inspection) és az alkalmazkodásnak (Adaptation). A kialakuló folyamatnak, az munkának és az elért eredményeknek láthatónak kell lenniük azok számára, akik a munkát végzik, illetve akik a célok és Product Backlog-elemek formájában kapják a bemeneti adatokat, és az az Inkrementumok formájában a kapcsolódó kimeneti eredményeket.

A fontos döntések az eredménytermékeken, (artifacts), kísérleteken, release-eken vagy eredmény-visszajelzéseken alapulnak. Az átláthatatlanság gyengítheti a megfigyelés hatékonyságát, ami olyan döntésekhez vezethet, amelyek redukálják a teremtett értéket és növelik a kockázatot. Az átláthatóság lehetővé teszi a hatékony ellenőrzést.

Az eredmény-visszajelzés olyan - ideális esetben mennyiségi és minőségi – adatokat jelent, amelyek a termék vagy a környezet változásaiból származhatnak. Hozzájárul a Stakeholder számára nyújtott értékekhez, a ráfordított erőfeszítésekhez, erőforrásokhoz vagy költségekhez. Az emberek nem erőforrások.

Az átláthatóság megvalósítása irreális és potenciálisan lehetetlen, ha szervezet szintű hatékonysági hiányosságok vannak, vagy hiányzik a bizalom. Ennek folyományaként a Scrum képes felszínre hozni ezeket a szervezeti hiányosságokat, és kollektív szándék esetén a bizalom is felépíthető.

## Ellenőrzés (Inspection)

Az ellenőrzésa Scrum egy másik alappillére. A valóság célzott vizsgálatát jelenti, tekintettel a termék célra (Product Goal), valamint a Scrum Team és a Stakeholderek hatékonyságára. Az ellenőrzés lehetővé teszi az alkalmazkodást. Az ellenőrzés a valóság szándékos vizsgálatát jelenti, és azon információkra épül, amelyeket láthatóvá tettek – beleértve a bizonyítékokat és a megfigyeléseket is. A Scrum eseményei biztosítják azt a ritmust (cadence), amely támogatja az ellenőrzést és az alkalmazkodást.

A Scrum Artefaktumok (Artifacts), a hozzájuk kapcsolódó kötelezettségvállalásokat (commitments), valamint az elfogadott célok felé tett előrehaladást gyakran és alaposan kell ellenőrizni annak érdekében, hogy időben felismerjük a kialakuló tendenciákat [21]. Az artefaktumok, kísérletek, release folyamatok, a piac vagy az eredményekből származó visszajelzések (result feedback) ellenőrzése új tanulságokat vagy mellékhatásokat tárhat fel. Mellékhatás alatt értjük a váratlan vagy nem szándékos eredményeket/következményeket.

A transzparencia nélküli ellenőrzés nem informatív, félrevezető és pazarló lehet.

## Alkalmazkodás (Adaptation)

Az alkalmazkodás a Scrum egyik alappillére. A termék irányvonalát figyelembe véve elvárás, hogy a Scrum Team és az érdekelt felek (Stakeholders) a valósághoz alkalmazkodjanak abban a pillanatban, amikor javítási lehetőségek merülnek fel – ilyen lehet például egy kísérlet eredménye (Outcome), új ismeretek, kockázatok vagy lehetőségek. Az alkalmazkodás különösen nehézzé válik, ha a szervezetben hatékonysági problémák állnak fenn, vagy ha az érintett szerepkörök nem álnak készen, nem hajlandóak vagy nem képesek elvégezni a szükséges lépéseket.

Az alkalmazkodás a tényeken alapuló „valóság” elfogadásával kezdődik. Az alkalmazkodás tipikusan a Scrum Artefaktumok (Artifacts), a hozzájuk tartozó kötelezettségvállalások (commitments), a Scrum csapat, a Stakeholderek, a Vezetők (Leaders) és a szervezet szintjén valósul meg. Ha bármelyik területen az elfogadható értékhatárokon túl történik eltérés, vagy az elkészült termék nem felel meg az elvárásoknak, a lehető leghamarabb cselekedni kell és elvégezni az indokolt változtatásokat.

Alkalmazkodás (Adaptation) nélkül az átláthatóság (Transparency) és az ellenőrzés (Inspection) elveszíti az értelmét.

## A Scrum értékek

A Scrum értékek – fókusz (Focus), nyitottság (Openness), elkötelezettség (Commitment), bátorság (Courage) és tisztelet (Respect) – olyan csapatkultúrát alakítanak ki, amely támogatja a pszichológiai biztonságot és az együttműködés pozitív formáit. Ezek az értékek összhangban állnak az idegtudományban a tanulás és a hatékony csapatmunka szempontjából jótékony hatásúnak tartott alapelvekkel. Fontos, hogy mindig a megfelelő kontextusban értelmezzük őket.

A Scrum értékek elősegítik az átláthatóságot (Transparency) és a bizalom kiépítését azáltal, hogy összhangot teremtenek a kimondott szavak és a megtett lépések között. Együtt erős alapot biztosítanak az együttműködéshez, a teljesítményhez és a Scrum Team belső koherenciájához.

A Scrum sikeres alkalmazása azon múlik, hogy a Scrum Team, a Supporterek és más Stakeholderek szakemberként jó példával járnak-e elöl. A Scrum értékek hozzájárulhatnak a bizalom erősítéséhez a Scrum Team és a Stakeholderek között. Emellett ösztönzik az etikus magatartást [30], a közös nyelvezetet, a megfelelő hangnemet, munkamódszert, magatartást és tetteket is – mindezek elősegítik a bizalom kialakulását. Ezek az értékek segítenek megelőzni vagy csökkenteni a szavak és tettek közötti eltérést.

A Scrum Team és a Supporterek vállalják, hogy őszintén kommunikálnak a végzett munkáról és a felmerülő nehézségekről. Az alázat támogatja a nyitottságot. A nyitottsághoz bizalom szükséges, a bizalom pedig csak nyitottságon keresztül épülhet fel. A konstruktív visszajelzések kérése és megosztása mindkét fél kötelessége. A Scrum Team és a Supporterek rendszeresen együttműködnek, és tanulnak egymástól a nagy sávszélességű beszélgetések, valamint a kvalitatív és kvantitatív visszajelzések révén.

A nagy sávszélességű beszélgetések olyan kommunikációs formák, amelyek gyors, gazdag és világos információcserét tesznek lehetővé. Jellemzően személyes megbeszéléseket jelent– akár személyesen, akár videóhíváson, vizuális menedzsmenten vagy (fizikai vagy digitális) táblákon keresztül – ahol a résztvevők nemcsak a szavakat, hanem a hangszínt, arckifejezéseket, rajzolást vagy a testbeszédet is felhasználhatják egymás teljes megértése érdekében.

Mivel a sprintek rövidek, az esetleges kudacroknak kicsinek és átmenetinek kell lenniük, a kockázatokat pedig gyors és nyílt visszajelzések révén kell felismerni és kezelni. Talán az egyetlen valódi kudarc az, ha nem tanulunk semmit.

A Scrum Teamnek és a Supportereknek bátorságra (Courage) van szükségük ahhoz, hogy helyes döntéseket hozzanak, és szembenézzenek a nehéz kihívásokkal. Bátran kell felfedezniük az ismeretlent, irányt váltaniuk, információt kérniük és megosztaniuk, valamint az udvarias vitákba bocsátkozniuk – például egészséges konfliktusokba és építő jellegű véleménykülönbségekbe. A Scrum Team bátran kérhet segítséget a Supporterektől vagy a vezetőktől, ha szükséges.

A Scrum Team elköteleződik a Sprint Goal elérése, a Product Goal felé vezető folyamatos ellenőrzés (Inspection) és alkalmazkodás (Adaptation) (amely a Scrum Guide 2020-ban kisebb hangsúlyt kap), valamint egymás támogatása mellett. Ez azt jelenti, hogy a célhoz kapcsolódó munka legkésőbb a sprint végére, de lehetőség szerint már korábban teljesül, megfelelve a Definition of Done-nak. Az elköteleződés azt is jelenti, hogy a kívánt eredményeket (Outcome) az érték realizálásán keresztül érik el.

Elsődleges céljuk (Focus) hogy a lehető legnagyobb előrelépést érjék el a Sprint Goal felé. Másodlagos céljuk pedig a Product Goal megvalósítása. A Supporterek vállalják, hogy pszichológiailag biztonságos környezetet teremtenek az Inkrementumok (Increment) leszállításához. A fókusz részeként a Scrum Team és a Supporterek elkötelezettek amellett, hogy időt szánnak a folyamatos tanulásra és alkalmazkodásra (Adaptation), valamint Scrum csapatok közti tudásmegosztás támogatására, ezzel segítve a hosszú távú hatékonyságot. A Scrum Teamnek és a Stakeholdereknek tudatosan kell mérlegelniük a kompromisszumokat – ideértve a rövid távú nyereségek és a hosszú távú következmények közötti egyensúlyt is.

A Scrum Team, a Supporterek és más Stakeholderek tisztelik (Respect) egymást, mint hozzáértő szakembereket. Elismerik egymás eltérő szaktudását és nézőpontját, és építő szándékkal kezelik a nézeteltéréseiket. A tiszteletteljes viselkedés erősíti a bizalmat. Az ötleteket és megközelítéseket kell megkérdőjelezniük – nem pedig egymást –, hogy jobb megoldásokat találjanak.

A tisztelet segít megelőzni, hogy a többi Scrum értéket fegyverként használják fel. A tisztelet megnyilvánulási formái közé tartozik az őszinte elismerés, a kölcsönös támogatás, az alázatosság, a pszichológiai biztonság megteremtése, az építő jellegű kritikák kezelése és a kognitív sokszínűség elfogadása.

A Scrum Team tagjai és a Stakeholderek a Scrum értékeket John Boyd OODA-modelljének [99, 100, 102] szemszögéből is megközelíthetik. Az OODA-t (Observe – megfigyelés, Orient – tájékozódás, Decide – döntés, Act – cselekvés) az amerikai légierő ezredese, John Boyd alkotta meg hogy segítsen a pilótáknak gyorsan és hatékonyan reagálni változó helyzetekre a négy lépés végrehajtásával. Ez egy egyszerű, folyamatos, iteratív, hatékony, bár gyakran tudatalatti módszer a bizonytalanság kezelésére – például amikor észleljük a piaci változásokat (Observe), felmérjük a trendeket és kockázatokat (Orient), döntünk a kipróbálandó termékfunkciókról (Decide), majd megvalósítjuk azokat (Act). Az OODA segít az egyéneknek rugalmasnak maradni és jól reagálni minden helyzetre. A Scrum javíthatja az OODA-t.

A Scrum Team egyes tagjai John Boyd OODA-modelljének szemszögéből tekinthetnek a Scrum értékekre, és a Scrum segítségével elősegíthetik a megoldások kialakulását. A Scrum kontextusában a Scrum értékek az OODA-ciklus valamennyi szakaszában érvényesülnek (az SGEP ezt a kapcsolatot eltérő hangsúllyal mutatja be), és különösen az alábbi módokon nyújtanak támogatást:

- Observe – A nyitottság és a tisztelet elősegítheti az összes releváns tényező és a különböző nézőpontok összegyűjtését.

- Orient – Bátorság kell a valóság értelmezéséhez, a bizonytalanság kezeléséhez, valamint az alkalmazkodás vagy irányváltás elfogadásához, akár gondolkodási szünetet tartva, hogy megkérdőjelezzük a feltételezéseinket és új meglátásokat ösztönözzünk.

- Decide – A tennivalók maghatározása időt igényel, gondoljunk például a Backlog Refinement eseményre vagy olyan biztonságos, párhuzamosan elvégezhető kísérletekre, amelyekkel hipotézisek tesztelhetők – ezek legyenek kisléptékűek, könnyen kezelhetőek és kudarc esetén is legyenek informatívak

- Act – Amikor világos, hogy mit kell megvalósítani, miért, és ki a felelős érte, az Elkötelezettség segíti a csapatot abban, hogy hatékonyan hajtsa végre a munkát olyan irányt adó korlátok között, mint az előre meghatározott időtartamú Sprint, elősegítve a megfelelő megoldások kibontakozását.

## További támogató és kiegészítő elméletek

## Termékszemlélet (Product Thinking)

Az emberek termékeket (beleértve a szolgáltatásokat is) fogyasztanak – nem projekteket. A termék az az eszköz, amelyen keresztül az érték eljut a felhasználóhoz, kiegyensúlyozva a rövid és hosszú távú szempontokat. Pont ezért van a Scrumban Product Owner szerepkör, nem pedig Project Owner. A termékek hosszú távon léteznek, és gondoskodni kell róluk a teljes élettartamuk alatt, míg a projektek időkerethez kötöttek, és a projekt befejezése után gyakran magára hagyott terméket hagynak hátra.

A termékszemlélet [31–33] azzal a feszültséggel [25] foglalkozik, hogy a termékeknek egyszerre kell rövid távú növekedésre összpontosítaniuk, miközben a hosszú távú kihívásokat is kezelniük kell – például: a kezdeti felhasználók elérése, a „szakadék átlépése” [34], a bővítés, az új verziók kiadása, a folyamatos változtatások, az ügyfél-élettartam értékének növelése, valamint a teljes tulajdonlási költség kezelése.

A „szakadék átlépéséhez” (cross the chasm) stratégiai szemléletváltásra van szükség: a hangsúlyt a tájékozott, kockázatvállaló korai ügyfelekről át kell helyezni a gyakorlatiasabb, kockázatkerülő vásárlók, döntéshozók, felhasználók és egyéb Stakeholderek megnyerésére. Ez a lépés kulcsfontosságú ahhoz, hogy egy termék a szűk rétegek körében elért sikertől eljusson a széles körű elterjedésig, hiszen ekkor a korai felhasználók megnyeréséről a korai többség megnyerésére helyeződik át a hangsúly.. A korai többség gyakran egyértelmű bizonyítékot igényel a termék megbízhatóságáról és problémamegoldó képességeiről egy adott kontextusban. Egy jól megcélzott piaci rés és egy átfogó megoldás hitelességet épít, referencia felhasználókat eredményez, és erős piaci pozíciót biztosít, ezzel áthidalva a „szakadékot” a korai felhasználók és a mainstream piac között.

A Product Ownerek feladata, hogy elsajátítsák a „jelen pillanat” és a „várható jövő” [35] (az „itt és most” kontra „ott és akkor”) közötti tudatos egyensúlyozás képességét – ehhez bátorság, alázatosság, konzultáció, együttműködés és egészséges konfliktuskezelés szükséges.

Ha az érintettek kizárólag rövid távon gondolkodnak, annak hosszú távon mellékhatásai lehetnek: technikai adósság, a Scrum Team alacsony morálja, túlterheltség, az output túlhangsúlyozása stb… Ezért elengedhetetlen olyan tényezők bevezetése, amelyek enyhítik ezeket a hatásokat és támogatják a hosszú távú célokat.

A technikai adósság az a felhalmozódó többletmunka, amely - tudatosan vagy tudattalanul – akkor keletkezik, amikor a gyorsabb eredmény elérése érdekében rövidítéseket alkalmazunk a megvalósítás vagy a tervezés során. Idővel ez lelassítja a munkát – akárcsak egy pénzügyi adósság, kamatokkal –, mivel a későbbi változtatásokat megnehezíti és kockázatosabbá teszi. A szakemberek igyekeznek minimalizálni a technikai adósságot és a hanyagságot.
Ha mégis vállalják ezt az adósságot, annak átláthatónak kell lennie, és lehetőség szerint létre kell hozni egy vészhelyzeti kockázatcsökkentési tervet.

A termékek esetében a Scrum az alábbiak révén támogatja az etikus [30] keretek között zajló megvalósíthatóságot, használhatóságot, figyelem felkeltést, értékteremtést és életképességet:

- Terméktervezés (Product Design)

- Termékmenedzsment (Product Management)

- A Stakeholderek, a kutatás, a célok, a felfedezés, a tervezés, a szállítás és a folyamatos értékteremtés közötti szoros kölcsönhatás tudatos figyelembevétele

- Technológiai termékek esetén: termékmérnöki megközelítéssel (Product engineering).

A Scrum a rövid és a hosszú távú célok egészséges egyensúlyát részesíti előnyben. A célorientáltság segít a potenciális eredmények elérésében az érték és a kockázatcsökkentés hangsúlyozásával. A Sprint Goal (itt és most) egy lépés a Product Goal (ott és akkor) felé, amely kijelöli az utat a hosszú távú célok megvalósítása felé. A Product Goal jellemzően támogatja a termékstratégiát és a termékvíziót.

## Rendszerszemlélet

A rendszerszemlélet [36] elismeri a szervezeti és társadalmi kontextuson belüli elemek összekapcsolódását, és felismeri, hogy az egyik területen végzett tevékenységek nem mindig kiszámítható vagy lineáris módon hatnak egymásra. Az elméleti alapokon nyugvó kísérletek, a visszacsatolási ciklusok és az utólagos adatelemzés segítenek felszínre hozni értékes és hasznosítható felismeréseket. A Rendszerszemlélet értékes eszközöket és ötleteket nyújt, és megkönnyíti a felismeréseket.

Ahhoz, hogy egy szervezet alkalmazkodóképessé váljon [37], el kell kerülni a helyi szintű részoptimalizációkat, mint például a fajlagos költségek csökkentése a hosszú távú költségek növelése mellett, a minőségi célok erodálása, ami az ügyfelek bizalmának elvesztéséhez vezet, vagy egy olyan Scrum Team, munkafolyamat vagy folyamat fejlesztése, amelynek nem kellene léteznie. A komplex munka [12–17] esetében nem mindig lehetséges az ok és az okozat összekapcsolása, kivéve utólag. Mindazonáltal hasznos, ha figyelembe vesszük a beavatkozások lehetséges és tényleges upstream, cross-stream és downstream hatásait.

## Discovery

A felfedezés [38–39] gyakran az emberek elvárásainak, igényeinek és szükségleteinek megértésével kezdődik, megfigyelés, elemzés, beszélgetések és a kívánt eredményre irányuló összegzés révén. Miután a Scrum Team összegyűjtötte az információkat, meghatározza a problémát vagy a lehetőséget, és azokat a potenciális érték szerint rangsorolja. A Scrum Team közösségi forrásokból gyűjt lehetséges megoldásokat anélkül, hogy túl gyorsan ítélkezne felettük. Ha a potenciális érték magas, de nincs bizonyíték arra, hogy az érték megvalósítható, a Scrum Teamnek kutatást kell végeznie, feltételezéseket kell tesztelnie, vagy egyszerű prototípusokat kell építenie, amelyeket valódi ügyfelekkel, döntéshozókkal vagy felhasználókkal tesztelhetnek. A felfedezés soha nem ér véget; fontolja meg az ügyfelekkel, döntéshozókkal vagy felhasználókkal való rendszeres interjúk vagy megfigyelések lehetőségét.

A felfedezés a kívánt eredmény felé vezető tanulásról szól, amely a felhasználói megfigyelések, visszajelzések vagy más tanulságok által megalapozott ötletek rangsorolásán, megvalósításán, elkerülésén vagy folyamatos javításán keresztül valósul meg. A felfedezés hangsúlyozza az együttműködést, a kreativitást és azt, hogy ne féljünk a kudarctól és az újbóli próbálkozástól. A felfedezés a munkát problémaként vagy lehetőségként fogalmazza meg, és segít a Scrum Teamnek olyan megoldási lehetőségek létrehozásában, rangsorolásában és tesztelésében, amelyek egyensúlyt teremtenek az emberek vágyai, a technikailag lehetséges és az üzleti szempontból ésszerű megoldások között - mindezt úgy, hogy közben jól érezzük magunkat.

Ha felfedezésre van szükség, azt (amennyire lehetséges) a Scrummal összhangban kell beépíteni a folyamatba. Például a felfedezési munkát átláthatóvá kell tenni a Product Backlogban és a Sprint Backlogban, a Scrum Team tagjai gyakorolják a felfedezést és más készségeket, a tanulságokat a Sprint során és a Scrum-rendezvényeken megvitatják, és minden Sprintben legalább egy Inkrementumot (Increment) készítenek (és ideális esetben kiadnak), függetlenül attól, hogy mennyi felfedezés történik. Meg kell találni az egyensúlyt: a felfedezés segíthet elkerülni, hogy rossz dolgot építsünk, de túlzásba is lehet vinni, és végeredményben a legfontosabb az eredményről kapott visszajelzés.

## Vezetés

A vezetés az a képesség, hogy befolyásolni, irányítani és inspirálni tudunk egy embercsoportot egy közös cél elérése érdekében, elkerülve a motiváció csökkenését. Gondolatokat, cselekvéseket és szenvedélyt inspirál, és elősegíti a világos stratégiai irányok kialakulását. Magában foglalja a céltudatos és szándékos „látni, hallgatni és megérteni” elvet, a tények és megfigyelések összegyűjtését a döntések megalapozásához, ez az úgynevezett Genchi Genbutsu [40].

A vezetés dinamikus társadalmi folyamat, amely magában foglalja a felelősségvállalást, a kapcsolatépítést és a felhatalmazást. A sikeres vezetés eredménye az irányvonal közös kialakítása, a szükséges erőforrások és emberek hatékony összehangolása, valamint a csoporttagok kölcsönös *Kötelezettségvállalása (Commitment)*.

A Scrum egy sajátos vezetési stílusra törekszik, azaz a rugalmasságra irányuló vezetésre, amely inkább tulajdonságok összessége, nem pedig egy vezetői pozíció. Így a vezetésnek magában kell foglalnia többek között, de nem kizárólagosan az Önszerveződő Scrum Teamek számára megfelelő környezet kialakítását, az egyértelműséget, a bizalmat, az átláthatóságot, az irányultság kialakulását [21], a munkában való kiteljesedést, a bizonytalanság [41] és a kudarcok elfogadását, a jobb döntésekhez szükséges információk gyűjtését, a kockázatok proaktív kezelését és a szervezeti hatékonysági hiányosságok megszüntetését.

A vezetés minden irányból érvényesül, minden szinten jelen kell lennie, és a megfelelő pillanatokban ösztönöznie kell az önreflexiót. A vezetésnek könyörtelenül az értékteremtésre kell törekednie, ugyanakkor együttérzőnek és etikusnak kell lennie. A vezetéshez kitartó cselekvőképességre van szükség a munkafolyamatok, folyamatok, rendszerek és a munkakörnyezet megváltoztatásához; ez magában foglalja (de nem kizárólagosan) a HR, a pénzügyek és a beszállítói menedzsment területét. A vezető az, aki vezetői képességeket mutat.

A Product Ownerek és a Scrum Masterek egyensúlyt teremtenek a vezetés, a tekintély és a finom ellenőrzés között azáltal, hogy világos célokat fogalmaznak meg, ösztönzik a kezdeményezőkészséget és megerősítik a felelősségvállalást. Inkább útmutatást nyújtanak, mintsem mikromenedzselnek, biztosítva, hogy a Scrum Team megértse a jövőképet és a célokat, rendelkezzen a végrehajtáshoz szükséges önállósággal, és továbbra is felelősséget vállaljon az eredményekért. Ha beavatkozásra van szükség, határozottan lépnek közbe, miközben megőrzik a Scrum Team felelősségvállalását. A Developer-ek az önmenedzselő csapatorientációjukkal, szakmaiságukkal és célorientáltságukkal bizonyítják vezetői képességüket; az önmenedzselés felelősséggel jár. A Supporterek azzal demostrálják vezetői képességeiket, hogy támogatják a rövid és hosszú távú akadályok elhárítását, javítják a menedzsment folyamatok és a Scrum összhangját, és kérésre támogatják a felmerülő változásokat egy hatékony irányba.

## Alapelveken alapuló gondolkodás

Az alapelveken alapuló gondolkodás a problémamegoldás olyan módszere, amely a kihívásokat a legmélyebb alapjaira bontja le, és a megoldásokat az alapoktól kezdve építi fel. Az analógiákra vagy bevett konvenciókra való támaszkodás helyett ez a megközelítés azt a kérdést teszi fel, hogy *"*Mit *tudunk biztosan?"*, *és* ezekből az alapelemekből *építi fel* a megértést és a megoldásokat. Példaként említhetjük többek között a következőket:

- A Scrum Team ösztönzése arra, hogy a hatékonyság, az alkalmazkodóképesség [37] és a pontosság alapvető mozgatórugóira - mint például az önállóság, az átláthatóság és az alkalmazkodás - összpontosítson, ahelyett, hogy vakon követné a folyamatokat vagy mások gyakorlatát másolná.

- Minden feltételezés megkérdőjelezése és a megoldásokat a tényeken és alapvető elveken alapulva alakítsák át, ami áttöréseket tesz lehetővé.

- Az eredeti gondolkodás, a folyamatos fejlesztés és a status quo megkérdőjelezéséhez szükséges *bátorság* támogatása, a kreativitás felszabadítása és az átalakító eredmények lehetővé tétele.

## Emberek és változás

Nem szabad alábecsülni a Scrum bevezetésének nehézségeit. A Scrum elemei révén néhány vezérelvet kínál. Olyan megközelítést kínál, amely visszatér az alapelvekhez.

A Scrum nem az eszközök bevezetéséről vagy a hosszú távú érték feláldozásával elért rövid távú szállításról szól. A Scrumot alkalmazók gyakran tévesen kizárólag a rövid távú akadályok (Impedimentek) elhárítására összpontosítanak. A Scrum ezzel szemben olyan változást előmozdító szemléletet (change agency) igényel, amely képes egyensúlyt teremteni a rövid és a hosszú távú célok között.

A Scrum kontextusában munkával kapcsolatos problémának tekinthető minden olyan helyzet, amely akadályozza vagy lassítja az előrehaladást, és amelyet a Product Owner és a Product Developerek önmenedzselő módon képesek kezelni. Az Impediment ezzel szemben a problémák egy sajátos típusa: olyan akadály, amely szintén gátolja vagy lassítja az előrehaladást, de amelyet a Product Developerek és a Product Owner önállóan már nem tudnak megoldani.

A Scrum bevezetése során elengedhetetlen a tudatos, kitartó és következetes figyelem az emberekre, a változásra és a kommunikációra. A változás gyakran magában foglalja az emberek fejlesztését, a szervezeti kialakítás, a munkafolyamatok, a folyamatok, a rendszerek, a hozzáállás, a viselkedés, a nyelvhasználat, a szokások és a munkakörnyezet átalakítását. A szervezeti kultúra ezek természetes következményeként, fokozatosan bontakozik ki.

A Scrum eredményes bevezetése emergens szemléletre épül, hatékony változás-előmozdítókra (beleértve a Supportereket és más vezetőket), valamint aktívan bevonja és elnyeri mindazok lelkes támogatását, akiket a változás érint, vagy akik maguk is hatással vannak rá. A bevezetés során elengedhetetlen a tudatosság és a nap mint nap megvalósuló előrehaladás. A Scrum bevezetésével kapcsolatos munkát nem szabad a többi feladat elvégzése után megmaradó időre hagyni.

A változást fegyelmezett, ugyanakkor emergens módon, világos irány mentén indítsuk el. Törekedjünk arra, hogy az emergens változás idővel a mindennapi működés természetes részévé váljon, ami végül beépül a rendszeresen végzett munkába. A Scrum bevezetésének van iránya, de nincs előre meghatározott végállapota. A változás emergens természetű, ezért nem jósolható meg előre; az Északi csillag megvilágítja az utat, de nem jelöl ki egy rögzített végcélt. A kíváncsiság lehetővé teszi az értelmezés, a figyelmes meghallgatás, a tanulás és az alkalmazkodás folyamatos körforgását egy közös irány mentén. Fontos tudatosan építeni a kapcsolatokat, megérteni mások nézőpontját, valamint figyelni arra is, ami kimondatlan marad, és arra is, ami nem történik meg. A változás kemény munka, de kielégítő.

A Scrumot alkalmazó szakemberek és a Supporterek nem tekintenek magukra áldozatként, és nem arra várnak, hogy mások változzanak meg. Ehelyett folyamatosan olyan apró, általuk is megvalósítható változtatásokra törekszenek, amelyek képesek tartós, pozitív lendületet kialakítani. Ideális esetben a változás katalizátorai: hiteles, reális optimizmust sugároznak, és segítenek meglátni a továbblépés lehetőségeit.

## A Scrum szerepkörök az Expansion Pack-ben

Az elszámoltathatóság (accountability) azon elvárások összessége, amelyek teljesítéséért egy szereplő felelősséggel tartozik. Például a Product Owner az értékért, a Scrum Master a Scrum Team eredményes működéséért, a Product Developerek pedig a használható Increment létrehozásáért felelősek. Nem minden szerep rendelkezik meghatározott elszámoltathatósággal; erre példa a Stakeholder szerepe.

A négy Scrum-szerepkör a Product Owner, a Product Developer, a Scrum Master és a Stakeholder. Ezek a szerepkörök bizalmat adnak, megerősítenek és kiérdemelnek, valamint összehangolt vezetést tesznek lehetővé. A Scrum Teamben viszont csak három szerepkör, a Product Owner, a Product Developer és a Scrum Master jelenik meg.

Egy személy több Scrum-szerepet is betölthet, ám ebben az esetben figyelnie kell arra, hogy ne lépje át a szerepkörök közötti határokat A Scrum-szerepek célja, hogy biztosítsák az egymást kölcsönösen ellenőrző és kiegyensúlyozó mechanizmusokat.

A Scrum Team egy olyan csapat, amely Scrumot alkalmaz, és lefedi a három *felelősségi kört*, nevezetesen a Scrum Master, a Product Owner és a Product Developer szerepét. Feladata a Stakeholderek (beleértve, de nem kizárólagosan a felhasználókat és megrendelőket) problémáinak és lehetőségeinek kezelése, valamint a Scrum Team és az érdekelt felek szempontjából hasznos, használható és potenciálisan értékes inkrementumokat szállít a Product Goal elérése érdekében. Komplex munkakörnyezetben [12–17] a Scrum Team optimális esetben kisméretű, kognitívan sokszínű és önmenedzselő. Tagjai – akiket gyakran technológia is támogat – odafigyelnek egymás munkájára, és idővel képesek elsajátítani egymás feladatainak elvégzését is.

A Scrum Teamnek keresztfunkcionálisnak kell lennie, azaz több szakterület kompetenciáit kell egyesítenie, beleértve a technikai és üzleti szakterületi ismereteket is. A Scrum Teamen belül nincs formális hierarchia.

A Scrum Teamnek rendelkeznie kell minden olyan kompetenciával és támogatással, amely szükséges ahhoz, hogy:

- Feltárja az igényeket és lehetőségeket (beleértve szükség szerint a kutatást és a tervezést);

- Leszállítsa a megoldást (adott esetben a műszaki megvalósítást is beleértve);

- Validálja az érték megvalósulását (valamint a használhatóságot, a kívánatosságot és az életképességet, az etikai [57] keretek figyelembevételével).

A Scrum Csapat – a Supporterek támogatásával – közösen gondoskodik a problémák vagy lehetőségek kezeléséről, a termék felfedezéséről, szállításáról, ellenőrzéséről és beépített minőségéről, piacra viteléről és az érték Product Goal-al szembeni ellenőrzéséről. Mivel a csapat önszerveződő [11], maga dönti el, hogy *ki mit, mikor, hol* és *hogyan* csinál.

Az érték ellenőrzése azt jelenti, hogy az elvárt eredmények megvalósulása – vagy épp meg nem valósulása – a megadott kereteken belül visszaigazolást nyer.

A Scrum Team minden Sprint során leszállít egy vagy több használatra kész eredményt (Increment), folyamatosan önszerveződik [11], hogy megkeresse és orvosolja a problémákat, folyamatosan szinkronizál, és gyakran bocsát ki release-t (új verziót). A Scrum Team elég kicsi ahhoz, hogy rugalmas maradjon, és elég nagy ahhoz, hogy jelentőségteljes munkát végezzen el egy Sprinten belül. Gyakran előfordul, hogy a kisebb Scrum Teamek jobban kommunikálnak és produktívabbak.

A Scrum önszerveződő Scrum csapatokra [11] épül, egy meghatározott szervezeti vagy termékstruktúrán belül. Az autonómia jelen van, de keretek között: ide tartoznak a Scrum események, szerepkörök, artefaktumok, kötelezettségvállalások, alapelvek, értékek, valamint a szervezeti igények.

A Scrum olyan emberek csoportjait mozgósítja, akik közösen rendelkeznek vagy megszerzik a feladathoz szükséges készségeket és tudást, és ezeket egymással is megosztják. A siker esélyét elősegíti, ha a vezetők támogatják a tudatos együttműködést.

A Fókusznak a Product Goal leghatékonyabb módon való elérésén kell maradnia arányosan befektetett munkával, miközben a csapat értékes eredményeket szállít.

A Scrum az együttműködésre épül, a folyamatos kapcsolattartást és a közös felelősségvállalást támogatja, szemben a szekvenciális, silószerű működéssel. Ez a megközelítés lehetővé teszi a Scrum Team és a Stakeholderek számára a bizonytalanság [41] elfogadását, és elősegíti a folyamatos tanulás és visszacsatolás alapján történő gyorsabb alkalmazkodást. A felfedezés, fejlesztés és ellenőrzés egymást átfedő folyamatai rugalmas [37], értékalapú termékfejlesztést tesznek lehetővé.

A feladatok átfedése elősegíti a közös felelősségvállalást a Scrum Team tagjai között, növelik az elköteleződést és a bevonódást. A Scrum Team figyelme a kihívásokra és lehetőségekre irányul, ösztönzi proaktivitást, támogatja a sokoldalú készségfejlesztést, és folyamatosan növeli a piaci környezet iránti érzékenységét.

A Scrum Team minden, a termékkel kapcsolatos tevékenységet ellát: a Stakeholderekkel való együttműködéstől az érték ellenőrzést, ideértve az tesztelést, karbantartást, működtetést, kísérletezést, kutatást és fejlesztést, valamint minden egyéb szükséges feladatot. A Scrum Team gondoskodik a minőségről. A Supporterek gondoskodnak arról, hogy a szervezet megteremtse a megfelelő légkört és munkafeltételeket, és felhatalmazza a Scrum Team-et az önszerveződésre [11]. A sprintekben, fenntartható ütemben végzett munka javítja a *Fókuszt* és a következetességet.

A Scrum Team és a Stakeholderek gyakran nem tudják előre, mit fognak tanulni. Egyes tanulságok növelik a bizonyosságot, mások újabb bizonytalanságokat hoznak [41]. Bizonyos elemek előtérbe kerülhetnek, eltűnhetnek, háttérbe szorulhatnak vagy elveszíthetik addigi prioritásaikat.

A Scrum Team összehangolt autonómiával működik. Ez azt jelenti, hogy a csapat szabadon dönthet a problémák megoldásának módjáról, miközben a közös célokra és eredményekre összpontosít, egyszerre támogatva az innovációt és a szervezeti összhangot. A kognitívan sokszínű Scrum Team kialakítása kulcsfontosságú. A készségek átvitele, a gondolatok átjárhatósága sokkal valószínűbb, ha a csapattagok együttműködnek, bíznak egymásban, és képesek az önreflexióra.

A sikeres eredmények elérése érdekében a Scrum Team-nek és a Supportereknek nyitottnak kell lenniük arra, hogy elengedjék az elavult elveket. Az ellenőrzés és alkalmazkodás olyan légkört kíván, amely előre számol a hibákkal, és el is viseli azokat. A kritika fókuszát az ötletekre, semmint az emberekre érdemes helyezni. A Scrum Team minden tagja „egy pályán játszik”, egymást átfedő folyamatokon dolgozik, és mindannyian felelősek a sikerért.

## Stakeholder

A Stakeholder (érintett vagy érdekelt fél) egy szerepkör. A Stakeholder lehet olyan szervezet, egyén vagy csoport, amely valamilyen formában érdekelt, érintett, vagy hatással van a fejlesztéssel kapcsolatos igényekre, tevékenységekre vagy eredményekre. A Stakeholder lehet közvetlenül vagy közvetve érdekelt, a szervezeten belül vagy kívül, annak termékeiben vagy szolgáltatásaiban.

Az Stakeholderek közé tartozhatnak például (de nem kizárólagosan) az ügyfelek, döntéshozók, felhasználók, beszállítók, influenszerek, menedzserek, kollégák, vezetők, jogalkotók, pénzügyi szponzorok, témaszakértők, vállalatirányítási (ún. governance) ellenőrzés. Ezenkívül figyelembe kell vennünk az olyan élettelen, nem emberi Stakeholdereket, mint például a törvényi szabályozások vagy a mesterséges intelligencia. Egyes Stakeholderek nagyobb hatást gyakorolnak a folyamatra, mint mások és fordítva: egyes Stakeholderekre nagyobb hatással van a folyamat, vagy annak eredménytermékei, mint másokra, és mindegyik érintett különböző tényezőket részesíthet előnyben. Minden egyes érintett eltérő szintű hatalommal vagy befolyással rendelkezik.

A customer (vásárló/felhasználó) olyan Stakeholder, aki a termékből származó értékben részesül azáltal, hogy megvásárolja és/vagy kiválasztja azt. A „customer” kategóriába tartozhatnak a vásárlók (akik fizetnek a termékért vagy megszerzik azt), a döntéshozók (akik jóváhagyják vagy engedélyezik a termék bevezetését), és a végfelhasználók (akik közvetlenül használják a terméket). Előfordul, hogy a vásárló „Customer” nem azonos a végfelhasználóval „End-customer”-rel, például B2B2C [42] vagy B2B2B [43] modellekben.

A Scrum sikeres bevezetéséhez elengedhetetlen, hogy a Stakeholderek (ideértve, de nem kizárólag az ügyfeleket és a felhasználókat) és a Scrum Team között tudatosan szervezett, rendszeres kapcsolattartás legyen.

A felhasználó olyan Stakeholder, aki közvetlenül használja a terméket, hogy konkrét célokat érjen el vagy problémákat oldjon meg. A felhasználók első kézből szereznek tapasztalatokat a termékkel kapcsolatosan, legyen szó szolgáltatásról, platformról vagy élményről, így visszajelzéseik és elégedettségük kulcsfontosságú a termék folyamatos fejlesztése szempontjából. A felhasználók termék iránti elkötelezettsége és ezáltal a termék használata alapvető fontosságú a termék tartós sikere szempontjából, függetlenül attól, hogy van-e direkt befolyásuk a termékkel kapcsolatos gazdasági döntésekre. Előfordulhat, hogy a felhasználó nem azonos a végfelhasználóval – például B2B2C vagy B2B2B modellek esetén. A Scrum sikeres működéséhez elengedhetetlen, hogy a felhasználók (ideértve lehetőség szerint a végfelhasználókat is) és a Scrum Team között tudatosan szervezett, rendszeres interakciók legyenek.

A döntéshozó (akit Jeff Patton a ’chooser’-ként azonosít) [44] egy olyan Stakeholder, akinek jogköre van jóváhagyni, kiválasztani vagy engedélyezni a Termék bevezetését vagy beszerzését. A döntéshozó felelős az alternatívák mérlegeléséért és a végső döntés meghozataláért, miközben gyakran figyelembe veszi mind a felhasználók, mind a szervezet szélesebb igényeit. A döntéshozók lehetnek a termék közvetlen felhasználói, de nem feltétlenül – döntéseik azonban közvetlen hatással vannak arra, hogy mely termékek kerülnek bevezetésre, és hogyan valósul meg az értékteremtés más Stakeholderek számára. A Scrum sikeres működése érdekében sokszor célszerűbb hiányos információ birtokában is elindulni, és figyelemmel kísérni a folyamat során felmerülő visszajelzéseket.

A jogalkotók – ideértve jelen dokumentum céljából a külső vagy belső szabályalkotókat is – szabályokat, irányelveket és kereteket határoznak meg a termék működésére vonatkozóan. Ők alakítják ki azokat a jogi, szabályozási vagy szervezeti kereteket, keretrendszereket, amelyek meghatározzák a termék által a Stakeholderek számára nyújtott értéket, valamint a szakmai színvonalat. Feladatuk annak biztosítása, hogy a termék megfeleljen a külső vagy belső előírásoknak, és ezek mentén fejlődjön, illetve fenntartható maradjon. A Scrum sikeres működése érdekében kulcsfontosságú, hogy ne becsüljük alá, de ne is értékeljük túl a jogi követelmények szerepét.

A pénzügyi szponzorok biztosítják a termék fejlesztéséhez, bevezetéséhez és továbbfejlesztéséhez szükséges forrásokat és finanszírozást. Értékelik a termék életképességét, értékét és megvalósíthatóságát, és ezek ismeretében hoznak befektetési döntést attól függően, hogy a termék képes-e folyamatos értéket nyújtani a Stakeholdereknek. A pénzügyi szponzorok befolyásolják a termék vízióját, stratégiáját és célkitűzéseit, annak érdekében, hogy biztosítsák a beruházások megtérülését és a hosszú távú fenntarthatóságot. A Scrum sikeres működéséhez elengedhetetlen a rugalmas hozzáállás és a rugalmas finanszírozás, ahogy idővel újabb és újabb információk kerülnek felszínre.

A témaszakértők (subject matter experts) olyan mélyreható szaktudással vagy speciális készségekkel járulnak hozzá a termék létrehozásához, fejlesztéséhez és fenntartásához, amelyek elengedhetetlenek ezekhez a folyamatokhoz. Legyen szó technológiáról, dizájnról, a szabályozások betartásáról vagy egy adott szakterületről, a témaszakértők hozzájárulnak a termék használhatóságához, megvalósíthatóságához, szakmai színvonalához és bővíthetőségéhez – ugyanakkor nem akadályozhatják az önszerveződő Scrum Team-eket [11]. Segíthetnek a felhasználói elégedetlenséghez vezető hiányosságok (elégedettségi rés) kezelésében, továbbá hozzájárulhatnak ahhoz, hogy a termék képes legyen alkalmazkodni, felismerni, képviselni vagy mérni a kibontakozó változásokat (emergence) [21]. A Scrum sikeres működéséhez kulcsfontosságú, hogy rendszeres tudásátadás valósuljon meg a témaszakértők és a Scrum Team, valamint a Scrum csapat tagjai között.

Az „elégedettségi rés” (satisfaction gap) kifejezés azt a különbséget jelöli, amely a Stakeholderek jelenlegi tapasztalata és az általuk kívánt élmény között fennáll. Másként fogalmazva: az a távolság, amely a termékkel kapcsolatos aktuális elégedettségi szintjük és a potenciálisan elérhető elégedettségük között húzódik.

Az irányítási keretrendszer (governance) a termék irányának, döntéshozatali mechanizmusainak és elszámoltathatóságának tudatos keretek közé terelését szolgáló struktúrákat, szabványokat, előírásokat, normákat, folyamatokat és gyakorlatokat jelenti. A governance elősegíti az átláthatóságot, valamint irányt mutat az értékteremtésre, megvalósíthatóságra és szakmai színvonalra vonatkozó elvárások betartására. Ezen felül mechanizmusokat biztosít a kockázatok kezelésére és a Termék változó igényekhez vagy környezethez való alkalmazkodására, támogatva annak hosszú távú és állandóan fejlődő jellegét. A Scrum sikeres működéséhez elengedhetetlen, hogy a governance által biztosított keretek összhangban legyenek a Scrummal — például minden irányítási területhez rendelve legyen egy kapcsolattartó, aki tudatosan együttműködik a Scrum Team-mel a minőség és a szabályok betartása tekintetében, illetve rendszeresen felülvizsgálja és fejleszti az irányítási gyakorlatokat (Inspection and Adaptation), hogy elkerüljük a váratlan meglepetéseket.

## Supporter

A Supporter (támogató) egy speciális Stakeholder-típus. A Supporterek támogató Stakeholderek és változás közvetítő szereplők (change agents). Gyakran részesei egy befolyásos, irányító koalíciónak (guiding coalition) [45], amely inspirál és megszünteti a demotiváló körülményeket, tényezőket. A Supporterek támogatják a Scrum Team erősödését és befolyással bírnak a szervezet folyamatainak, rendszereinek, termékeinek, szolgáltatásainak és munkakörnyezetének oly módon történő alakítását, hogy azok összhangba kerüljenek a Scrum bevezetésével és az emergens működésmóddal [21].

A Supporterek ott és akkor vesznek részt, ahol és amikor szükséges, vagy amikor erre kérik őket. Az értékteremtés gyakran hatékony és építő jellegű együttműködést igényel más Stakeholderekkel.

A szervezet méretétől függően a Supporterek körébe tartozhatnak – de nem kizárólagosan – kollégák, döntéshozók, pénzügyi szponzorok, felügyeleti szerepkört betöltő Stakeholderek (governance oversight), vezetők, témaszakértők, marketing, HR, pénzügy, beszerzés, illetve a korai felhasználók (early adopters). Azok a Supporterek, akik nem biztosítják a Scrum Team számára a megfelelő mozgásteret a jelen dokumentumban leírt működés adaptálásához, nem tekinthetők valódi Supportereknek.

A felsővezetőknek és az igazgatóság tagjainak kulcsszerepük van abban, hogy olyan szervezeti kultúrát teremtsenek, amelyben a Supporterek valóban támogató tevékenységet végezhetnek. A Supportereknek olyan vezetői magatartást kell tanúsítaniuk, amelyet a Scrum Team értékel.

## Mesterséges intelligencia

A mesterséges intelligencia (AI) egyre inkább része a munkakörnyezetnek, és jelentősen kibővítheti a Scrum Team képességeit a felfedezés, döntéshozatal, termékfejlesztés és értékteremtés területén.

Az AI hozzájárulhat a Scrum sikeréhez az alábbi módokon:

- Empirikus folyamatirányítás [27–29]: Az AI-alapú elemzések növelik az átláthatóságot, az ellenőrzést és az alkalmazkodóképességet.

- Kognitív képességek kiterjesztése: Az AI lehetővé teszi, hogy a Scrum Team tagjai a stratégiai, kreatív és etikai kérdésekre koncentráljanak.

- Folyamatos értékhangolás: Az AI valós idejű felhasználói visszajelzések és trendek alapján képes folyamatosan frissíteni és átrendezni a Product Backlog elemeket.

- Rendszerre vonatkozó felismerések: Az AI feltárja a rejtett összefüggéseket, támogatva az adat-alapú döntéshozatalt.

A veszélyek végtelenek. Minden eredményért meg kell őrizni az emberi felelősségvállalás egyértelműségét (a Scrum szerepkörök által meghatározott felelősségek mentén), miközben az AI egy erőteljes, de felügyelt döntéshozatali partnerként van jelen. Ezt nevezzük úgy, hogy „az ember a hurokban marad” (human in the loop). Bár az AI növelheti az innovációt és a hatékonyságot alacsony költségek mellett, nem helyettesítheti az emberi felelősséget. Az AI-nak támogatnia kell – és nem felülírnia – a Scrum empirikus folyamatirányítását [27–29] és az etikus döntéshozatalt [30]. A Scrum Team továbbra is felelős a hasznos eredmények leszállításáért, a bizonyítékok értékeléséért, és a professzionalizmus fenntartásáért.

A lehetőségek szintén határtalanok. A Scrum Teamek a mesterséges intelligencia segítségével képesek lehetnek arra, hogy:

- A Product Backlog finomhangolását fejlesszék

- felfedjék a szövegekben rejlő kétértelműségeket, és folyamatosan vizsgálják saját javaslataik és eredményeik esetleges torzításait, hibáit és nem kívánt következményeit,

- rendszeresen validálják és adaptálják a modelleket és alkalmazásokat,

- elősegítsék az átláthatóságot a Product Backlog elemek sorrendiségében (sequencing),

- AI-alapú ügynököket hozzanak létre mesterséges csapattagként,

- valamint tudatosan próbára tegyék és megkérdőjelezzék a meglévő gondolkodásmódot.

A mesterséges intelligencia akkor válik valódi támogatóvá, ha megfelelő, etikus szándékkal és céllal alkalmazzák. Az AI-eszközökre úgy kell tekinteni, mint bármely más, a pszichológiai flow-hoz [46] és a tanuláshoz hozzájáruló tényezőre: Javítják-e a visszacsatolási ciklusokat? Gyorsítják-e a feltételezések validálását? Cselekednek-e, és ha igen, az etikus cselekvésnek minősül-e [30]?

A pszichológiai flow [46] egy tevékenységben való teljes, élvezetes elmélyülés állapota, amikor a cselekvés és a tudatosság összeolvad, és az időérzék megváltozik.

A Scrum arra ösztönzi a Scrum Teamet, hogy felelősségteljesen kísérletezzen a mesterséges intelligenciával, kis, ha szükséges, visszafordítható kísérletek keretén belül. Az alkalmazkodás és az ellenőrzés nemcsak a termékre, hanem az AI szállítási folyamatba történő integrációjára is vonatkozik.

A hangsúlynak továbbra is a csapatmunka és az együttműködés emberi dinamikáján kell maradnia, miközben az AI-ra olyan lehetséges támogató eszközként tekintünk, amely segíthet gyorsan alkalmazkodó működést kialakítani.

## Termékfejlesztő (Product Developer)

A Product Developer egy szerepkör és egy felelősségvállalás is egyben. A Product Developer-ek együttesen kell, hogy rendelkezzenek mindazon képességekkel, amelyek Inkrementumok létrehozásához szükségesek. Ezt az összetett készségkészletet gyakran nevezzük keresztfunkcionális (cross-functional) kompetenciának.

A Product Developer lehet emberi szereplő vagy automatizált rendszer. Az emberi termékfejlesztők *Elkötelezetten* dolgoznak azon, hogy minden egyes Sprint során a kibocsátható Inkrementum bármely aspektusát létrehozzák, kutassák, ellenőrizzék (Inspect) és szükség esetén módosítsák (Adapt). Elsődleges fókuszuk az adott Sprinten van, azonban kapacitásuk egy részét gyakran előretekintő finomításra, eredmény-visszajelzések, mellékhatások vagy más tanulságok vizsgálatára fordítják.

A termékfejlesztők betartják a Definition of Output Done közösen elfogadott kritériumait, és elkötelezettek a valódi értékteremtő fejlődés iránt. A fejlesztők akkor képesek a legnagyobb értéket teremteni, ha egy adott Termékre koncentrálnak. Amennyiben a Product Owner vagy a Scrum Master egy adott időpontban aktívan részt vesz a Sprint Backlogban szereplő item-ek végrehajtásában, akkor ebben az esetben Product Developer (termékfejlesztői) szerepkört töltenek be.

A termékfejlesztőknek a helyzethez illően kell működniük – ezek a viselkedésmódok lehetnek (de nem kizárólagosan): együttműködő, alkotó, a technikai minőséget előtérbe helyező, felfedező, szállító, valamint az érték-ellenőrzés bajnoka (champion of Value Inspection).

*Fontos, hogy legalább egy termékfejlesztő emberi szereplő legyen.* Több emberi fejlesztő jelenléte jellemzően növeli a kognitív diverzitást, ami előnyt jelent a komplex helyzetek kezelésében.

> A termékfejlesztők mindig közösen felelősek az alábbiakért:

- Az éppen aktuális Sprint Goal (Sprintcél) elérését szolgáló, fokozatosan kibontakozó terv létrehozása a Sprint Backlogban;

- A minőség biztosítása a Definition of Output Done betartásával és folyamatos fejlesztésével;

- Legalább egy használható Inkrementum létrehozása minden egyes Sprint során;

- Folyamatos tanulás, jellemzően olyan adatok mentén, amelyek a Definition of Outcome Done alapján értelmezhetők;

- A napi tervek finomhangolása a Sprintcél elérése érdekében;

- Egymás szakmai elszámoltathatóságának biztosítása és fenntartása;

- Valódi értékteremtő fejlődés megvalósítása.

A kontextus számít – elengedhetetlen, hogy figyelembe vegyük az adott helyzet sajátosságait. Ám általános ökölszabályként elmondható: ha egy Termékfejlesztő nem törekszik a professzionális működésre, nem felkészült rá, nem képes azt megvalósítani, akkor az a helyénvaló, ha visszalép a Termékfejlesztő szerepéből.

## Product Owner

A Product Owner egy szerepkör és felelősségvállalás is egyben. A Product Owner-nek embernek kell lennie. Ahhoz, hogy hatékonyan működjön, vezetőként kell képviselnie a Terméket. A Product Owner célja a hosszú távú érték maximalizálása – ehhez tudnia kell, hogy miben rejlik az érték, és mikor van az érték szállítására aktuálisan szükség. A Product Owner-tól elvárás, hogy minden releváns üzleti területen, minden szinten aktívan jelen legyen. A Product Owner az értékteremtés érdekében együttműködik a Stakeholderekkel, a Scrum Masterrel és a Termékfejlesztőkkel.

A Product Owner a Product Backlog segítségével határozza meg, hogy mit és milyen sorrendben célszerű megépíteni. Döntéseit mindig a Product Goal irányából szemléli, és elsődleges célja, hogy minden lépésben a hosszú távú értéket növelje.

A Product Owner szerepét nem az határozza meg, hogy milyen részletességgel írja le a Product Backlog elemeket. Minden olyan perc, amit nem a Termékfejlesztők iránti bizalom gyakorlására, stratégiai gondolkodásra vagy Stakeholder-együttműködésre fordít, elvesztegetett lehetőség az értékteremtésre.

A Product Owner-nek a helyzethez illeszkedően kell viselkednie – szerepkörei lehetnek például: jövőképet formáló vezető, az ügyfél képviselője, együttműködő partner, influenszer, kísérletező, döntéshozó, valamint a Stakeholder-bevonás, az átláthatóság, a termékminőség és az értékteremtés bajnoka.

A Product Owner mindig felelős az alábbiakért:

- A Stakeholderek bevonása, hatalmuk, elvárásaik, szükségleteik és igényeik megértése;

- Folyamatos érzékelés, figyelem, tanulás és szükség szerinti adaptáció;

- Folyamatosan mérlegeli és egyensúlyban tartja az egymással versengő szempontokat, többek között, de nem kizárólagosan:

> – a minőséget, a sebességet, a képességeket, a kockázatcsökkentést, az értéket és az egyszerűséget [47];
>
> – a Stakeholdereket, valamint sokféle, gyakran egymással versengő elvárásaikat és korlátaikat;
>
> – az értékteremtést, a munkakörnyezetet (mivel a Scrum Team fenntartható működése fontos), valamint a potenciális ügyfelek szempontjait.

- A Product Goal kidolgozása és egyértelmű kommunikálása;

- Koherens terméknarratíva kialakítása és hatékony kommunikálása;

- A Product Backlog elemek létrehozása és kommunikálása;

- A Product Backlog elemek sorrendbe állítása;

- Átlátható és érthető Product Backlog létrehozása;

- Az eredmények hatékony kommunikálása a Definition of Outcome Done alapján

- A Definition of Outcome Done-t illető végső döntési jogkör gyakorlása;

- Az érték magas színvonalú létrehozásának, felfedezésének, leszállításának és validálásának támogatása;

- Valamint – szükség esetén – más termékmenedzsment-jellegű feladatok elvégzése.

A Product Owner mindezt elvégezheti önállóan, vagy a Scrum Team-mel együttműködve meghatározhatják, hogy ki mely feladatért felel. Az elszámoltathatóság azonban mindig a Product Owner-é marad.

A sikeres Product Ownership záloga, hogy a Stakeholderek és a Supporterek *tiszteletben tartsák* (Respect) a Product Owner döntéseit. Ezek a döntések jól tükröződnek a Product Backlog tartalmában és priorizálásában, valamint a Sprint Review során bemutatott Inkrementumokban. A Product Owner a szervezet által delegált hatáskörrel rendelkezik.

A Product Owner-i szerepkör (Product Ownership) gyakorlásához erős termékmenedzsment- és szakterületi (domain) ismeretekre van szükség. Az ilyen készségekkel nem rendelkező Product Owner-nak támogatásra és útmutatásra lehet szüksége, amíg a szükséges kompetenciák kialakulnak. A kontextus számít, de általános irányelvként elmondható: ha egy Product Owner nem elkötelezett, nem felkészült, és nem képes termékmenedzsment-képességeket elsajátítani, akkor vissza kell, hogy lépjen ebből a szerepkörből. Fontos megérteni, hogy egy szakterületi szakértő nem feltétlenül ideális választás a Product Owner szerepre, hiszen itt nem csak szakmai tudásra, hanem termékmenedzsmentre és vezetői készségekre is szükség van – ezek hiányában a Product Developer szerep lehet megfelelőbb.

Ha a Scrum Team – nem ajánlott módon – egyszerre több terméken, platformon vagy projekten dolgozik, akkor minden egyes termék-, platform- vagy projektmenedzsernek Stakeholder-ként (és lehetőleg Supporter-ként) kell együttműködnie a Product Owner-rel a hosszú távú értékmaximalizálás érdekében. A Scrum ösztönzi a Scrum Team-et arra, hogy fókuszált és elkötelezett maradjon, segíti, hogy értékes eredmények szülessenek, és hogy ne essenek abba a hibába, hogy „funkciógyárként” működjenek.

A Product Owner egyetlen személy – nem bizottság, és nem technológia. Aki változtatni akar a Product Backlogon, annak a Product Ownert kell meggyőznie. A Product Owner a hosszú távú érték maximalizálásáért felel – és ennek érdekében gyakran hoz stratégiai kompromisszumokat.

## Scrum Master

A Scrum Master egy szerepkör és egy felelősségvállalás is egyben. A Scrum Master-nek embernek kell lennie.

A Scrum Master változás közvetítő szereplő (change agent), aki a szervezet minden szintjén és üzleti területén tevékenykedik. Példamutató magatartása adja meg a többiek számára a helyes irányt, illetve támogatja a Product Owner-t, a Scrum Team-et, a Stakeholder-eket és a Supporter-eket abban, hogy eredményesen alkalmazzák a Scrum-ot. A Scrum Master érti a komplexitás természetét [12–17], és képes arra, hogy segítsen felismerni és megtenni a leginkább helyénvaló következő lépést.

A Scrum Masternek a helyzethez illeszkedően kell viselkednie; szerepei közé tartozhat – de nem kizárólagosan – az útmutató, coach, mentor, oktató, megfigyelő, akadályeltávolító, változást kezdeményező, a hatékony működés előmozdítója és a folyamatos fejlődés bajnoka. A Scrum Master nem adminisztrátor, státusz riportoló, taszk tologató, szabályt diktáló, tárgyalófoglaló, a státuszriportok dashboardjának kezelője, elnök, „megmentő”, koordinátor, sem egy „távollévő” Scrum Master, aki tétlenségét az önszerveződésre hárítja.

A Scrum Master felelős a Scrum Team, a Stakeholderek, a Supporterek és az érintettek hatékonyságáért a tapasztalati tanulás (empirizmus [19]), az önmenedzsment és a Scrum alkalmazásának előmozdításában, ahogyan azt ez a dokumentum leírja. A Scrum Master feladata kezelni mindazokat az akadályokat, amelyek lassítják vagy gátolják a Scrum Team előrehaladását, és amelyeket a csapat önállóan nem tud megoldani.

A Scrum Master többféleképpen támogatja a Scrum Teamet, a Product Ownert és a Supportereket, többek között az alábbi módokon:

- Segít mindenkinek megérteni a Scrum elméletét és gyakorlatát, szükség esetén oktatással vagy coachinggal támogat;

- Képessé teszi a Scrum Teamet és a Supporter-eket arra, hogy folyamatosan, sokféle módon fejlődjenek;

- Elősegíti, hogy az interakciók időszerűek, célirányosak és tudatos szándékkal történjenek.

- Gondoskodik róla, hogy a Scrum Team megfelelő Definition of Output Done meghatározással rendelkezzen;

- Biztosítja, hogy minden Scrum esemény megtörténjen, és azok építő jellegűek, eredményesek legyenek és a releváns időkereten belül maradjanak;

- Támogatja az akadályok eltávolítását a termékkel kapcsolatos munkából és a Scrum hatékony alkalmazásából;

- Coachinggal támogatja az önmenedzsment (self-management) [11] és a keresztfunkcionalitás fejlesztését;

- Segít a Scrum Team-nek, a Stakeholder-eknek és a Supporter-eknek megérteni, hogy milyen fontos szerepük van abban, hogy nagy értékű Inkrementumok szülessenek, amelyek megfelelnek a Definition of Output Done-nak, és hozzájárulnak a Product Goal és a Definition of Outcome Done eléréséhez;

- Elősegíti az alkalmazkodóképesség (adaptiveness) [37] fejlesztését, és optimalizálja az értékáramlást;

- Támogatja az eredményeken alapuló magabiztos működés kialakulását, de együttérző és időben történő beavatkozással segít megelőzni a túlzott magabiztosságot;

- Ösztönzi a változások előmozdításához szükséges (change agency) és az általános belső hajtóerő (agency) kialakulását a Scrum Team-ben és a Supporter-ekben;

- Megerősíti a Scrum Team-en belüli olyan hasznos viselkedéseket, amelyek összhangban állnak a Scrum értékeivel, és elősegítik a bizalmat, az együttműködést és a magas teljesítményt;

- Elősegíti, hogy a Scrum Team gyorsan és gyakran szállítson értékes munkát, kapjon visszajelzést, és szükség esetén javításokat végezzen.

A Scrum Master többféle módon támogatja a Scrum Teamet, többek között:

- A Scrum Team támogatása annak megalakításában, továbbképzésében és folyamatos fejlesztésében;

- Segít a Scrum Team-nek megérteni, hogy szükség van világos és tömör Product Backlog elemekre, amelyek valódi értéket teremtenek; és,

- Kiemelten figyeli, hogy az egész Scrum Team céltudatosan és tudatosan működjön együtt egymással és a Stakeholderekkel, tiszteletben tartva a Definition of Output Done-t, és a magas értékű Inkrementumok létrehozására fókuszáljon a Definition of Outcome Done szerint.

A Scrum Master többféle módon támogatja a Product Ownert, többek között:

- Segítséget nyújt a hatékony Product Goal meghatározásához és a Product Backlog kezeléséhez szükséges technikák megtalálásában;

- Segítséget nyújt a komplex [12–17] környezetben történő fokozatosan kibontakozó terméktervezéshez.

- A Product Owner-t támogatja abban, hogy az eredményeket mérhető formában fejezze ki a Definition of Outcome Done segítségével;

- Segít a Product Owner-nek megérteni, hogy szükség van világos és tömör Product Backlog elemekre, amelyek valódi értéket nyújtanak; és,

- Támogatja a Product Owner abban, hogy az érték megvalósítására *összpontosítson (Focus)*.

> A Scrum Master többféleképpen is támogatja a Stakeholdereket, többek között az alábbi módokon:

- Amikor puszta szakértelem már nem elégséges, segíti az érintett személyeket és Stakeholder-eket abban, hogy megértsék és elsajátítsák:

> ○ Az empirikus megközelítést komplex [12–17] munkakörnyezetben, ahol az ok-okozati összefüggések csak utólag válnak világossá;
>
> ○ Az empirikus folyamatszabályozáson túlmutató működést. Ilyen lehet például a több, párhuzamosan futó, hibázásra biztonságosan lehetőséget adó kísérlet, új gondolkodásmód felfedezése, az exaptáció, vagy a megalapozott sejtések igazolása.. Az exaptáció olyan jelenség, amikor egy eszköz, megoldás vagy gyakorlat eredetileg más célra készült vagy használták, de új vagy bizonytalan környezetben váratlanul hasznosnak bizonyul egy másik cél eléréséhez.

- Elősegíti azokat a lépéseket, amelyek a „Ne új feladatot kezdj el, hanem fejezz be egyet!” alapelvet támogatják;

- Támogatja a Stakeholder-együttműködést, amikor ez szükséges vagy kérésként merül fel;

- Segíti a Stakeholder-eket annak megértésében, miért van szükség világos és tömör, értéket közvetítő Product Backlog elemekre;

- Segít abban, hogy a Stakeholder-ek figyelmüket elsősorban az érték megvalósítására összpontosítsák (Focus).

A Scrum Master többféleképpen is együttműködik a Supporter-ekkel, többek között az alábbi módokon:

- Vezeti, oktatja és coacholja a Supporter-eket a Scrum bevezetés folyamatában;

- Segít megérteni, mik a Scrum hatékony alkalmazásának akadályozó tényezői;

- Támogatja a fegyelmezett, fokozatosan kibontakozó változásokat a Scrum bevezetését támogató irányba;

- Ösztönzi azokat a szervezeti változásokat, amelyek a szállítás könnyebbé tételét helyezik előtérbe a menedzselhetőség megkönnyítése helyett.

> A Scrum Master az egész szervezettel is együttműködik, többek között az alábbi módokon:

- Vezeti, oktatja és coacholja a szervezetet a Scrum‑bevezetés(ek) során;

- Részt vesz a Scrum‑bevezetések megtervezésében és tanácsadást nyújt azok lebonyolításához;

- Együtt dolgozik a kapcsolódó területekkel (pl. HR, pénzügy, beszerzés), hogy miként támogathatják a Scrum bevezetését;

- Elhárítja a Scrum‑bevezetések útjában álló akadályokat.

A Scrum Master-ek együttműködhetnek más Scrum Master-ekkel vagy Supporter-ekkel annak érdekében, hogy az egész szervezetet támogassák; szükség esetén más változásmenedzsmenttel foglalkozó szereplőkkel vagy vezetőkkel is együtt dolgozhatnak. A Scrum Master mint változás közvetítő (change agent) felel a Scrum-bevezetés minőségéért, és együtt kell működnie a többi változási folyamatokat támogató szereplővel annak fejlesztése érdekében.

A Scrum Master egy személy, nem egy bizottság vagy technológia, és a Product Owner-t, a Scrum Team-et, a Stakeholder-eket, valamint a tágabb szervezetet szolgálja. Mint változásvezető és irányt mutató szereplő, a Scrum Masternek ösztönöznie kell a környezetét a változásban való részvételre. Hasznos, ha a Scrum Master érti az értékáramlás (flow of value) [48–49], a lean szemlélet [20], a komplexitáselmélet [12–17] és az ebben a dokumentumban hivatkozott további támogató és kiegészítő elméletek alapjait, valamint képes segíteni az embereknek abban, hogy *hogyan* alkalmazzák ezeket a gyakorlatban. Emellett előny, ha a Scrum Master kitartó és csillapíthatatlan tanulási és fejlődési vággyal rendelkezik.

A Scrum Masteri szerep egy hivatás, ahol mások sikeréhez való hozzájárulás önmagában jutalom. A Scrum Master nem keresi a reflektorfényt: mint minden jó vezető, elismerést másoknak ad, és vállalja a felelősséget, ha valami nem jól alakul. A szerep hosszabb távú betöltése segítheti a Scrum Teamet a benne rejlő potenciál kibontakoztatásában — de csak akkor, ha a Product Developer-ek közösen kifejlesztik az önmenedzsment képességét. A szülői (irányító, túlvédelmező) típusú Scrum Master-i viselkedés nem támogatja az önmenedzselő Scrum Team kialakulását. A kontextus fontos, de ökölszabályként elmondható: az a Scrum Master, aki nem hajlandó, nem kész vagy nem képes változásvezetőként működni, vissza kell, hogy lépjen ebből a szerepkörből.

## A Scrum Artifaktok (Artifacts) az Expansion Pack-ben

A Scrum artifaktok átláthatóvá teszik, hogy a Scrum Team és a Stakeholderek mit tekintenek értékteremtőnek. Ezáltal mindenki ugyanarról az alapról kiindulva végezheti az ellenőrzést (Inspection) és az adaptációt (Adaptation).

Minden artifakt tartalmaz egy kötelezettségvállalást (Commitment):

> A Stakeholderek számára értéket teremtő Termék esetében ez a Definition of Outcome Done. (Az SGEP által bevezetett új fogalom.)
>
> A Termékhez potenciális frissítésként hozzájáruló Inkrementum esetében ez a Definition of Output Done. (Az SGEP által átnevezett fogalom.)
>
> A Product Backlog esetében a Product Goal (Termék cél).
>
> A Sprint Backlog esetében a Sprint Goal (Sprint cél).

Az Inkrementum (output) leszállításával a Termék az, ami ténylegesen értéket teremt (outcomes)*.* Az érték a Stakeholderek nézőpontjából az elvárások, igények vagy vágyak olyan mértékű beteljesülése vagy megvalósulása, amely mérhető vagy megfigyelhető.

Ezek a Commitmentek megerősítik az átláthatóság (Transparency), a megfigyelés (Inspection) és az alkalmazkodás (Adaptation) pilléreit, ezzel biztosítva az empirikus folyamatirányítás működésének feltételeit [27–29]. A Product Goal mindaddig változatlan marad, amíg a Product Definition of Outcome Done-ban megfogalmazott elvárásoknak ellentmondó bizonyíték vagy megfigyelés nem merül fel. A Definition of Output Done nem gyengülhet a Sprint során. Akkor mégis mit lehet módosítani helyette? Például egy adott Product Backlog Item elfogadási kritériuma, egy funkció megvalósításának részletessége vagy hűsége, illetve akár a Sprint Goal elérését szolgáló Product Backlog Itemek is módosíthatók vagy lecserélhetők.

Ha a Product Goal gyakran változik, az arra utalhat, hogy valami nem megfelelően működik – például, hogy hiányzik a *Fókusz* a valóban lényeges dolgokról. A fókusz a professzionalizmus része: a professzionális működéshez ugyanúgy hozzátartozik annak meghatározása, hogy min dolgozunk, mint annak eldöntése, hogy min nem.

## Termék (Product)

A Termék egy artifakt, amely lehet egy holisztikus élmény vagy egy platform. Lehet szolgáltatás, fizikai, digitális vagy hibrid megoldás, amely folyamatosan értéket teremt a Stakeholderek számára (beleértve, de nem kizárólag a felhasználókat).

Élménynek nevezünk egy olyan konkrét megoldást, amelyet a Stakeholderek – köztük ideális esetben a szervezeten kívüli felhasználók – igényeinek kielégítésére terveztek. Egy ilyen élmény közvetlen interakciót biztosít, amely értéket teremt. Jellemzően egy adott probléma, vagy probléma-csoport megoldására vagy lehetőség kiaknázására összpontosít a Stakeholderek számára, ideértve, de nem kizárólag az ügyfeleket, döntéshozókat és felhasználókat.

A platform egy architekturális eszköz, alapinfrastruktúra vagy eszközkészlet, amely lehetővé teszi a fejlesztők számára, hogy olyan Termékeket hozzanak létre, amelyek élményt nyújtanak A platformok olyan alapot biztosítanak, amelyre több Termék is épülhet, és amelyek elsősorban a mérnökök számára biztosított skálázhatóságra, megbízhatóságra és rugalmasságra fókuszálnak, nem pedig a közvetlen felhasználói interakcióra.

A Scrum Teamnek és a Stakeholdereknek mindig világosan érteniük kell, hogy mi a Termék, kik a vevők, felhasználók vagy döntéshozók, és milyen típusú Termékről van szó – például végfelhasználóknak, alkalmazottaknak vagy Scrum Teamnek szánt Termékről. Mindegyik eltérő Stakeholder-környezetet és értékteremtési módokat kíván. A Termék folyamatosan fejlődik és gyakran hosszú életű. Egyetlen, közös Product Backlogra van szükség az Átláthatóság növelése és az érték maximalizálása érdekében.

A kontextus számít. Általános ökölszabályként azonban elmondható, hogy ahhoz, hogy egy Termék értéket teremtsen és hosszú távon is megőrizze a piaci vonzerejét, hasznos, ha:

- Kezeli a felhasználói elégedettség hiányosságait (satisfaction gaps);

- Értékes, kívánatos, életképes, használható, megvalósítható, biztonságos (safe) és védett (secure);

- A professzionalizmus beépül a működésébe;

- Világos, meggyőző és eredménymutatókhoz kötött Product Vision, Product Strategy és Product Goal vezérli, amelyek gyakran tartalmazzák a szándékot, az indoklást és az anti-célokat is;

- Képes alkalmazkodni és fejlődni annak érdekében, hogy felismerje, leképezze vagy mérje az emergenciát [21];

- Bővíthető és karbantartható.

## Kötelezettségvállalás: a Kész eredmény definíciója (Definition of Outcome Done)

A Definition of Outcome Done egy kötelezettségvállalás. Azokat a megfigyelhető bizonyítékokat és mérőszámokat (kvantitatív vagy kvalitatív) írja le, amelyekkel igazolható a megvalósult haszon, amit gyakran az érték validálásának (value validation) nevezünk. Ez vonatkozhat a teljes Termékre vagy egy konkrét célra. A legjobb gyakorlat szerint érdemes ezeket a mérőszámokat már a megvalósítás előtt meghatározni, így elkerülhető a torzítás vagy a téves értelmezés.

Az Outcome-ok igazolják a felhasználóknál bekövetkezett változásokat, míg az Impact a szervezeti szintű eredményeket igazolja. Ezek a hozzájuk kapcsolódó értelmezésekkel együtt irányt adnak a további adaptációknak, és ideális esetben megerősítik, hogy a kívánt üzleti hatás valóban megvalósult. Ez történhet egy konkrét cél kapcsán – például egy nagyobb funkció vagy több funkció tekintetében – és validálható lehet például a Termék telemetriáján keresztül (vagyis, ha a Termék képes önmaga használatát mérni). Más esetekben az értékelés az egész Termékre vonatkozhat, és ekkor inkább a stratégiai hatásról, illetve a megvalósított stratégia hatékonyságának validálásáról szól [50–54]. De akár a kettő kombinációja is előfordulhat.

A közvetlen bizonyítékokat részesítsük előnyben a közvetett bizonyítékokkal szemben. Például:

- A vásárlói eredmények arra összpontosíthatnak, hogy mérhető értéket nyújtsanak a vásárlók számára, például növekvő vásárlói elégedettség, hosszú távú költségcsökkenés, vagy a kiszolgált vásárlói feladatok száma.

- A felhasználói eredmények konkrét felhasználói viselkedésváltozásokat célozhatnak, amelyek problémákat oldanak meg és javítják a felhasználói élményt – például hatékonyabb feladatvégzés vagy új funkciók használata.

- A termékkel kapcsolatos Stakeholder-eredmények ezeket a viselkedésbeli változásokat köthetik a termék teljesítményéhez, például a termék vásárlói, döntéshozói/felhasználói metrikáinak alakulása, a termék megjelenési ideje, tanulási idő, irányváltás ideje stb.

- Üzleti hatás, például megfelelőség, üzleti hosszú távú költségcsökkenés, üzleti eredmények, piaci részesedés alakulása, az összes termékre vonatkozó vásárlói elégedettség, szervezeti szintű megjelenési idő, tanulási idő, irányváltás ideje stb.

- Scrum Team-eredmények, mint például a technikai képességek fejlődése (pszichológiai flow [46], kiadás gyakorisága, eszközhasználat, készségek, technikai adósság, UX vagy CX adósság, kapacitás), valamint a légkör/kultúra fejlődése és az innováció támogatása.

A User eXperience (UX) vagy Customer eXperience (CX) adósság azon tervezési és megvalósítási döntések összessége – akár szándékosak, akár nem –, amelyek kevésbé használhatóvá, élvezhetővé vagy hatékonnyá tesznek egy terméket vagy szolgáltatást a felhasználók vagy vásárlók számára.

Ennek az adósságnak a felismerése, nyomon követése és kezelése elengedhetetlen ahhoz, hogy olyan termékeket szállítsunk, amelyek valóban megfelelnek a felhasználói igényeknek és elvárásoknak.

Ennek az adósságnak a felismerése, nyomon követése és kezelése alapvető fontosságú ahhoz, hogy a felhasználók igényeinek és elvárásainak valóban megfelelő termékeket nyújtsunk.

Az időbeli mérések átláthatóvá teszik a termék-, piac- és Stakeholder-trendeket (beleértve, de nem kizárólagosan a vásárlókat vagy felhasználókat); ezek bármikor áttekinthetők a Sprint során, beleértve a Sprint Review eseményt is.

## Inkrementum (Increment)

Az Inkrementum egy artifakt. Az elkészült munka integrációja a „Definition of Output Done” minőségi sztenderdjei szerint. Az Inkrementum egy kimenet (output), valamint egy lehetséges Termék (Product) jelölt.

Egy Sprint során több Inkrementum is létrejöhet Product Backlog elemek (Product Backlog Items) teljesítésével. Minden egyes Inkrementumot alaposan ellenőrizni kell, mindegyiknek használható állapotúnak kell lennie, és integrálva kell lennie az összes korábbi Inkrementummal. Az így létrejött összegzett Inkrementumot a lehető leghamarabb – legkésőbb a Sprint Review során – meg kell vizsgálni (megfigyelés). Az Inkrementumnak használhatónak és hasznosnak kell lennie ahhoz, hogy eredményalapú visszajelzést (result feedback) tegyen lehetővé. Az Inkrementum központi eleme a Scrumnak, mivel lehetővé teszi az érték folyamatos validálását.

Egy Inkrementum-jelölt csak akkor válik tényleges Inkrementummá, ha teljesíti a „Definition of Output Done” minőségi követelményeit. Csak az Inkrementum bocsátható ki (release). Az Inkrementumnak kézzelfogható mérföldkőnek kell lennie a Product Goal felé vezető úton. Az Inkrementumokat a Stakeholderek számára történő szállításra(delivery) vagy akár a Sprint Review előtti kiadásra (release) is fel lehet használni. *A legjobb értékvalidálás az eredményalapú visszajelzés révén érhető el.*

## Kötelezettségvállalás (Commitment): Definition of Output Done

A Definition of Output Done (az elkészült kimenet definíciója) egy kötelezettségvállalás. Hivatalosan leírja azokat a minőségi kritériumokat, amelyek biztosítják az Inkrementum megfelelő gondossággal történő elkészítését, hogy az szállíthatólegyen a Stakeholderek számára.

A Definition of Output Done jellemzően magában foglalja – de nem kizárólag – a technikai sztenderdeket és a termékkel szembeni minőségi elvárásokat. Amennyiben az adott szervezet nem biztosít minimum elvárásokat, a Scrum Team hozza létre a definíciót. Ha több Scrum Team dolgozik ugyanazon a Terméken, közösen osztoznak a Definition of Output Done alapvető változatán, de azt továbbfejleszthetik.

A Scrum Team kötelessége, hogy megfeleljen a Definition of Output Done-nak, és folyamatosan javítsa azt. Az Inkrementum kumulatív jellegű. A Definition of Output Done a Termék és a Stakeholderek érdekét szolgálja. Ez a definíció az egész Inkrementumra vonatkozó általános minőségi sztenderd, nem pedig az egyes elemekhez (például Acceptance Criteria) tartozó specifikus elvárás. (Az SGEP ezt a különbséget egyértelműbben fogalmazza meg.)

Egy kiadott Inkrementum lehetővé teszi az Definition of Outcome Done szerinti értékvalidáláshoz szükséges eredményalapú visszajelzést (result feedback).

## Product Backlog

A Product Backlog egy artifakt. Ez a Product Goal (termékcél) eléréséhez szükséges Product Backlog Item-ek folyamatosan kialakuló, sorrendbe állított (szekvenciált) listája. A Product Backlog átláthatóságot (munkaáttekinthetőséget) biztosít és a Scrum Team egyetlen munkaforrásaként szolgál a Product Goal eléréséhez. A Product Owner, mindig szem előtt tartva az értékteremtést, irányítja a Product Backlog Item-ek sorrendjét a Product Backlog-on belül. Egy kisebb méretű Product Backlog gyakran nagyobb átláthatóságot biztosít.

## Product Backlog elem

A Product Backlog Item a Product Backlog egy potenciálisan értékes eleme. Nem szükséges, hogy meghatározott formátumban szerepeljen. Célja egy probléma vagy lehetőség kezelése. A Definition of Output Done mellett tartalmazhat elfogadási kritériumokat, amely meghatározza, mikor tekinthető elvégzettnek a munka. Előfordulhat azonban, hogy pontosan azt szállítjuk, amit kértek, mégsem valósul meg elegendő eredmény (Outcome). Ezért egy Product Backlog Item tartalmazhat világosan meghatározott Outcome Criteria-t is, amely megmutatja, mikor teljesül elegendő érték – a Definition of Outcome Done-ban foglaltakon felül.

Egy Product Backlog Item egyetlen munkaegység, amely értéket tár fel vagy szállít. Bármikor változhat, még akkor is, ha éppen dolgoznak rajta a Product Developer-ek. Refinement során kisebb, a Scrum Team számára érthetőbb elemekre bontható, amelyek önmagukban is képesek értéket teremteni. Időnként előfordulhat, hogy egy Product Backlog elem nem kapcsolódik a Product Goal-hoz; ha ez gyakran megtörténik, érdemes megvizsgálni, hogy megfelelő-e a fókusz (Focus). A Scrum Teamnek és a Stakeholder-eknek a kimenetek (outputs) helyett az eredményekre (outcomes) kell fókuszálniuk, ügyelve az egyensúlyra a kompromisszumok között, és elkerülve, hogy a Scrum Team „feature-gyárrá” vagy „discovery-gyárrá” váljon.

## Acceptance Criteria (elfogadási kritériumok)

Az elfogadási kritériumok – ha léteznek – leírják, hogy egy adott Product Backlog Itemből származó eredmény (output)mikor tekinthető késznek, a Definition of Output Done mellett. A refinement során átdolgozott elemekben szereplő elfogadási kritériumok egyértelműen kell hogy meghatározzák, mi az elvárt eredmény. Az Acceptance Criteria olyan szempontokat tartalmaz, amelyek kifejezetten az adott Product Backlog elemrevonatkoznak, és amelyeket a Definition of Output Done nem fed le; ezek lehetnek funkcionális vagy nem-funkcionális jellegűek. Az elfogadási kritériumok bármikor változhatnak, akár akkor is, amikor a Product Developerek már dolgoznak rajtuk.

Ennek alcsoportját alkotják, az eredmény kritériumok (outcome criteria), melyek – ha léteznek – leírják a Product Backlog Item szándékát; ez a „miért” a „mi” mögött. Az eredmény kritériumok teljesülése gyakran kiegészíti a Termékre vonatkozó Definition of Outcome Done-t. Tartalmazhatnak olyan szempontokat, amelyek kifejezetten az adott Product Backlog Itemre vonatkoznak, és amelyeket a Definition of Outcome Done (a kész eredmény definíciója) nem fed le. Ha kérdések merülnek fel, az outcome criteria irányt mutat; a kritériumok lehetnek elbeszélő formájúak vagy mérőszámok – ideális esetben ez utóbbiak. Az eredmény kritériumok bármikor változhatnak, akár akkor is, amikor a Product Developerek már dolgoznak rajtuk.

## Refinement (finomhangolás)

A refinement egy tevékenység. Lehet formális (külön esemény) vagy informális.(Az SGEP-ben a Refinement kiemelt jelentőségű elem.) A finomhangolás egy folyamatosan zajló, emergens folyamat, amely elősegíti a tisztánlátást és csökkenti a kockázatot; elegendő megértést és bizalmat épít ki ahhoz, hogy a kiválasztott vagy soron következő Product Backlog elemek készen álljanak (azaz néhány napon belül vagy rövidebb idő alatt elvégezhetők legyenek a Definition of Output Done szerint). Különféle függőségeket vesznek figyelembe.

A refinement során a Product Backlog elemeket kisebb, érthetőbb (elsősorban a Scrum Team számára értelmezhető) Product Backlog elemekre bontják. Több részlet is hozzáadható, például leírás, Elfogadási Kritériumok, sorrend és méret. Az attribútumok változóak, de a Scrum Team számára relevánsak kell legyenek. A refinement kutatást is magában foglalhat, beleértve – de nem kizárólag – a probléma vagy lehetőség validálását, a felhasználói vagy ügyfélélményt, illetve a megoldás validálását. A Product Backlog elemekbecsléséért kizárólag a Product Developerek felelnek. A Product Owner hatással lehet a Product Developerekre, ha segít megérteni és kiválasztani a lehetséges trade-offokat.

A résztvevők gyakran a Stakeholderek és a Scrum Team tagjai; nem ritka, hogy a Product Developerek közvetlenül dolgoznak a Stakeholderekkel. A refinementet gyakran támogatja vagy facilitálja a Product Owner. A Product Owner nagyobb mértékben tud a Product ‘ownershipre’ összpontosítani (*Focus*), ha a Product Developerek átfogóan értik a Terméket. Általánosságban elmondható, hogy ez egy előretekintő tevékenység, amely tisztánlátást, irányt és potenciális fókuszt kínál a közelgő Sprintekhez.

## Kötelezettségvállalás (Commitment): Product Goal

A Product Goal (Termékcél) egy kötelezettségvállalás (Commitment). A Product Backlogon keresztül jelenik meg, amelynek tulajdonosa a Product Owner. Ez az aktuális, egyetlen, stratégiaibb és ambiciózusabb célkitűzés (a „miért”). Irányt ad a Terméknek, és lehetővé teszi, hogy a Product Developerek a Terméken való munkájuk során fókuszáltak maradjanak. Növeli az átláthatóságot azáltal, hogy egyértelmű, értékteremtő irányt biztosít a Product Developerek számára, amely felé haladhatnak – egy taktikusabb Sprint Goal segítségével (a Sprint „miért”-je).

A Product Goal középtávú célkitűzés a Scrum Team, a Stakeholderek (és a Supporterek) számára. A Scrum Teamnek teljesítenie kell (vagy el kell vetnie) egy Product Goalt, mielőtt újat vállalna.

A Product Goal rendszerint egy egyelőre még nem bizonyított feltételezés az értékteremtésről. Többféleképpen is kifejezhető, többek között olyan hipotézisek összességeként, amelyek a szükségletek kielégítésében mutatkozó hiányok megszüntetésére vagy csökkentésére (Outcome-ok), valamint ezek várható üzleti hatására vonatkoznak. A megfelelő egyensúlyt úgy éri el, hogy a Stakeholderek (beleértve, de nem kizárólag az ügyfeleket vagy felhasználókat) sokféle elvárásának és korlátjának egy részhalmazára összpontosít. A Scrumban fontos, hogy az Inspection és Adaptation révén nyitottak maradjunk a bizonytalanságokra [41], a visszacsatolásként kapott eredményekre, a mellékhatásokra és más tanulságokra.

## Mi a helyzet a termékvízióval?

Számos szervezet dolgozik Product Vision-nel (Termékvízióval), amely segít elképzelni egy lehetséges jövőképet. (Az SGEP által bevezetett fogalom.) A Scrum Team felhasználhatja a Víziót bemenetként a Product Goal (Termékcél) megfontolásához. A Product Vision egy értelmes, hosszú távra szóló, kívánatos eredményekből álló információhalmaz. A középtávú Termékcél gyakran egy lépcsőfok a hosszú távú Termékvízió felé vezető úton.

Ahogy a Scrum Team és a Stakeholderek a Termékcél elérésére törekedve ellenőrzik és alakítják a folyamatokat , nyitottnak kell lenniük arra a lehetőségre is, hogy akár a Product Vision, akár a Product Goal módosulhat.. Gyakran több Product Goal valósul meg egymás után, miközben a vízió felé haladnak.

A legfontosabb dolog, amit szem előtt kell tartani: a Product Vision gyakran fikció – előfordulhat, hogy semmi sem bizonyul igaznak belőle. Hipotézisek felállítása és kísérletek futtatása a megfelelő irányban elengedhetetlen – és ez az a terület, ahol a Scrum a legnagyobb értéket tudja teremteni.

A Product Vision gyakran inspiráló, ugyanakkor túlterhelő is lehet. A Product Goal csökkenti ezt a túlterheltséget azáltal, hogy a Product Vision egy kézzelfoghatóbb, „függőleges szeletét” képviseli, vagy éppen annak megvalósítását segíti elő.

## Sprint Backlog

A Sprint Backlog egy artifakt. Három részből áll: a Sprint Goal-ból (a Sprint “miért”-je), az adott Sprintre kiválasztott Product Backlog elemek halmazából (a „mi”, más néven előrejelzés), valamint gyakran egy cselekvési tervből, amely az Inkrementum leszállítását szolgálja (a „hogyan”). Átláthatóságot (a munkát illetően egyértelműséget) biztosít a teljes Sprint során.

A Sprint Backlog a Product Developerek terve – tőlük származik, és nekik szól. Ez a Product Developerek nézőpontja a megértett munkáról, amely a Sprint cél(a Sprint „miért”-je) eléréséhez szükséges. Tegyük fel, hogy egy nem optimális helyzettel állunk szemben, amelyben a Sprint Backlog elemeinek többsége folyamatosan nincs kapcsolatban a Product Goal-lal – ebben az esetben a Focus és Commitment Scrum értékek nem érvényesülnek.

A Sprint Goal kontextusán belül a Product Developerek folyamatosan frissítik a tervüket – beleértve az előrejelzést is –, ahogy újabb tanulságokat szereznek a Sprint során. A Sprint Backlognak tartalmaznia kell elegendő munkát a kezdéshez – például egy vagy két Product Backlog elemet a Sprint Goal irányába. (A Scrum Guide 2017-ben is megjelenő szemlélet, amelyet az SGEP ismét hangsúlyoz.) A Product Developerek a haladásukat a Sprint Goal felé minden Daily Scrum során, vagy akár gyakrabban is ellenőrzik. A Product Developerek megtanulják, hogyan reagáljanak és alkalmazkodjanak a bizonytalansághoz [41].

Ha több célkitűzés is van, az elfogadható lehet, amennyiben azok összhangban állnak a Product Goallal. Ugyanakkor ezt körültekintően kell kezelni. Érdemes mérlegelni a kontextusváltás és a fókusz közötti kompromisszumokat. A Scrum Teamnek arra kell törekednie, hogy hosszabb távon egyensúlyt teremtsen az aktuális csapatképességek és légkör, a stakeholderek számára jelenleg teremtett érték, a potenciális stakeholderérték, valamint az értékteremtéshez szükséges idő között. (Az SGEP itt a DevSecOps szemléletét is figyelembe veszi.)

## Kötelezettségvállalás (Commitment): Sprint Goal (Sprint cél)

A közös irány és összhang megteremtése érdekében a Sprint Goal egy olyan Commitment, amelyet a Scrum Team közösen alakít ki és közösen vállal. (Az SGEP ezt a Scrum Teamhez rendeli, míg a Scrum Guide 2020 a Developereket nevezte meg a Commitment tulajdonosaként.) A Sprint Goal a Sprint egyetlen, egységet teremtő célja (összhangban a Product Goallal), amely a Product Developerek számára a Sprint „miértjét” jelenti, és a Sprint Planning során jön létre. A Sprint Goal teljesítése a Product Developerek vállalása. A Sprint Backlog (amely tartalmazza a „miért”-et, a „mit”-et, és gyakran a „hogyan”-t is) fókuszt és rugalmasságot biztosít a változó munka során, ezáltal növelve az átláthatóságot.

A Sprint Goal arra ösztönzi a Scrum Teamet, hogy közösen dolgozzanak, ne pedig különálló kezdeményezéseken. Ha a munka eltér attól, amire a Product Developerek számítottak, a Product Developerek együttműködnek a Product Ownerrel, hogy lehetőségeket tárgyaljanak meg a Sprinten belül, anélkül hogy ez érintené a Sprintcél. Senki sem mondja meg a Product Developereknek, hogyan becsüljék vagy végezzék el a munkájukat.

## A Scrum események az Expansion Pack-ben

A Scrum négy, az Inspectiont és az Adaptationt szolgáló, timeboxolt eseményt foglal magában egy ötödik, állandó hosszúságú, azokat keretbe foglaló eseményen, a Sprinten belül. Ezek az események a Scrum három pillérét támogatják: Átláthatóság (Transparency), Ellenőrzés (Inspection) és Alkalmazkodás (Adaptation). A kiadott eredmények, verziók (Releases) teszik lehetővé az értékteremtést – ideális esetben folyamatosan. A ritkább Release-k hátránya, hogy késleltetik a visszacsatolási ciklust.

Az időkeret (timebox) egy adott esemény számára meghatározott maximális időtartam – ez nem azt jelenti, hogy az egész időt feltétlenül ki kell használni. Az időkeret célja a Scrum keretrendszerben az, hogy a csapat a lényegi munkára *fókuszáljon*, és ezáltal gyorsabban érjen el értékes eredményeket.

Az események ritmust (cadence) adnak a munkának, és csökkentik annak szükségességét, hogy a csapatok további, a Scrumban meghatározott ceremóniákon felül további megbeszéléseket tartsanak. Ideális esetben minden esemény ugyanabban az időpontban és helyen történik, hogy csökkentse a komplexitást [12–17] és elősegítse a szokások kialakulását. A tapasztalt facilitáció növeli az események hatékonyságát. Ha az események nem hatékonyak, akkor könnyen elterelődik a fókusz a Sprint célról, a Termékcélról, az Átláthatóságról, az Ellenőrzésről, az Alkalmazkodásról és a Scrum értékekről.

Minden Scrum esemény egyedi célt szolgál, és mélyreható, jelentőségteljes munkát kell lehetővé tennie. A Scrum esemény-együttes egy Átláthatóságra épülő keretrendszert biztosít a folyamatos vizsgálathoz, alkalmazkodáshoz, tudatos megálláshoz és visszatekintéshez. A Scrum eseményei támogatják a strukturált gondolkodást, a strukturált munkavégzést, az eredményességet és a kiegyensúlyozott munkaterhelést. (Az SGEP szemléletére a Cynefin és az Evidence-Based Management is hatással volt.)

A hatékony kommunikáció biztosítja, hogy a Scrum Csapat és a Supporterek a legnagyobb értéket képviselő célokra *koncentráljanak (Focus)*. A Sprinten kívüli események rövidebbek is lehetnek, feltéve, hogy az összhang és következetesség nem sérül.

## A Sprint

A Sprint egy olyan esemény, amelyben ötletekből érték keletkezik. Ez a “konténer-esemény” tartalmazza az összes többi eseményt. Ez egy meghatározott idejű iteráció, amelyben a munka megvalósul. *Fókuszt* és stabilitást biztosít. Egy Sprint legfeljebb négy hét hosszú lehet, és az új Sprint azonnal elindul az előző befejezése után. A Termékcél eléréséhez szükséges összes munka a Sprintekben történik.

A Sprintek a Scrum szívdobbanásai – itt alakítja át a Scrum Csapat az ötleteket használható, hasznos és potenciálisan értékes Inkrementumokká. Az Inkrementum kiadása, üzleti és technikai szempontokat figyelembe véve, a lehető legkorábban megtörténik, mivel a gyors visszajelzések kulcsfontosságúak az érték validálásához és az irány korrekciójához. Ha az Inkrementum nem jut el időben bizonyos Érintettekhez – többek között az ügyfelekhez, döntéshozókhoz vagy végfelhasználókhoz –, az késlelteti az időben beérkező eredményalapú visszajelzéseket. Egy Sprint során több Inkrementum is létrejöhet – a Scrum Csapatnak törekednie kell a gyakori, korai kiadásokon keresztüli értékvalidálásra, ahol ez lehetséges.

> A Sprint során:

- Nem történhet olyan változás, ami veszélyezteti a Sprint Cél elérését;

- Az Inkrementum(ok) minősége nem csökkenhet;

- A Product Backlog szükség szerint finomhangolható; és

- Ahogy a csapat új ismeretekre tesz szert, a folyamatban lévő munka pontosítása és újratárgyalása is megtörténhet a Product Ownerrel – mindez anélkül, hogy ez veszélyeztetné a Sprint Cél elérését.

A sprintek lehetővé teszik az eredmények elérését azáltal, hogy legalább négyhetenként biztosítják a Sprint Cél felé tett haladás rendszeres ellenőrzését (Inspection) és szükség szerinti módosítását (Adaptation). Ha egy Sprint túl hosszú, a Sprint Goal már nem biztosít megfelelő összhangot, ami növeli a komplexitást [12–17] és a kockázatot. A rövidebb sprintek gyakran több tanulási ciklust generálnak, és csökkenthetik a kockázatokat is.

A rövidebb Sprintek általában fejlettebb képességeket igényelnek (pl. backlog finomhangolás, vertikális darabolás, technikai és üzleti tudás). A kontextus számít, a Scrum Csapatnak meg kell találnia a megfelelő egyensúlyt.

Számos kiegészítő gyakorlat létezik a haladás értékelésére vagy előrejelzésére, például a burn-down és burn-up diagramok, folyamatelemzések, Monte Carlo valószínűségi előrejelzések, nagyszabású erőforrás-becslések, fuzzy halmazok [55] stb. Bár hasznosak, ezek nem helyettesítik az empirikus megközelítés [19] jelentőségét. Komplex [12–17] környezetben a múltbeli történések alapján lehet előre jelezni és döntéseket hozni, azonban a jövő eseményei továbbra is bizonytalanok.

A Sprintre gondolhatunk úgy is, mint egy kis projektre, egyértelmű kimenettel, meghatározott hosszúsággal és jól ismert költségekkel – ugyanakkor a tevékenységek nem szigorúan egymás után következnek, hanem párhuzamosan zajlanak.

Egy Sprint akkor állítható le, ha a Sprint Cél megvalósítása értelmét veszti. Csak a Product Owner jogosult Sprintet törölni. Rövidebb sprintek esetén kisebb az esélye annak, hogy a sprintet törölni kell.

## Sprint Planning

A Sprint tervezés egy Scrum-esemény. Ez a Sprint első eseménye, ahol a Scrum Csapat meghatározza a fókuszt és elköteleződik a célok mellett.

A Sprint tervezés során a Scrum Csapat figyelembe veszi az inkább stratégiai szintű Termékcélt – vagyis azt, hogy *miért* létezik a Product Backlog –, ez ad irányt a munkának. E folyamat során a Product Developerek létrehozzák a Sprint Backlogot, amely tartalmazza a rövidebb távú, inkább taktikai jellegű Sprint Célt (vagyis a Sprint *miértjét*), a kezdeti azonosított feladatokat, valamint az azok megvalósítására szolgáló tervet.

A Sprint Tervezés az alábbi témaköröket érinti:

## A Sprint *Miértje*

A Product Owner adatokra épülő javaslatokat fogalmaz meg arra vonatkozóan, hogy a Product hogyan növelhetné az értékét és hasznosságát az aktuális Sprint során. Ezek a javaslatok például a Refinementből, az eredményekből származó visszajelzésekből vagy más tanulságokból származhatnak. A Product Owner és a Product Developerek együttműködve határozzák meg a Sprint Goalt, amely megfogalmazza, hogy a Sprint miért értékes a Stakeholderek számára a Product Goal felé vezető úton. A Sprint Goalnak legkésőbb a Sprint Planning végére véglegesnek kell lennie. (Az SGEP az irányt adó, éppen időben történő tervezést hangsúlyozza.)

## A *Mit* a *Miért* irányába

A Product Ownerrel együttműködve a Fejlesztők kiválasztják azokat az elemeket a Product Backlogból, amelyeket beemelnek az aktuális Sprintbe. A Scrum Csapat ezeket az elemeket tovább finomíthatja, ami növeli a közös megértést és a bizalmat. A kiválasztott elemeknek megvalósíthatónak kell lenniük a Definition of Output Done-nak megfelelően, más elemekkel együtt.

Annak meghatározása, hogy mennyi munka fér bele egy Sprintbe, kihívást jelenthet. Ugyanakkor minél többet tudnak a Fejlesztők a korábbi teljesítményükről, a vertikális darabolásról, a várható kapacitásukról és a Definition of Outcome Done-ról, annál nagyobb magabiztossággal tudják előre jelezni a Sprint eredményeit.

A sikeres Scrum Csapatok nem terhelik túl magukat. Valójában gyakran előre tervezik a munka korai befejezését, és időnként tartalékot (buffer) is beépítenek a váratlan események kezelésére [56]. Ez segíti a csapatot abban, hogy megőrizze fókuszát, javítsa a minőséget, és hamarabb szállítson értéket a Stakeholderek számára. A krónikus túlterheltség vagy hirtelen változások túlzott negatív stresszt okozhatnak, amit Jeff Sutherland váratlan kognitív sokként (Bayesian surprise) említ. Ezek megzavarhatják a Scrum Csapat pszichológiai flow élményét [46] és ronthatják a csapat teljesítményét. A világos kommunikáció, az előre nem látható történések professzionális kezelése (emergence) [21], valamint a kismértékű és rendszeres változtatások segítenek megelőzni ezt, ezért a Scrum Csapatoknak érdemes a minél korábbi szállításra törekedni. (Az SGEP támogatja a slack alkalmazását.)

## A *Hogyan* a *Mit-hez*

A munka elvégzésének módjáról kizárólag a Fejlesztők döntenek. Senki más nem mondja meg nekik, hogyan végezzék a munkájukat. A Fejlesztők maguk választják ki a feladataikat; senki nem osztja ki, vagy „nyomja rájuk” a Product Backlog elemeket – még a Product Owner sem.

A Sprint Tervezés időkerete (timebox) legfeljebb nyolc óra lehet egy négyhetes Sprint esetén. Rövidebb Sprinteknél ez az esemény jellemzően rövidebb ideig tart. A kontextus számít – de ökölszabályként elmondható: annyi tervezés történjen, amennyi elegendő a munkakezdéshez – például néhány, a Sprint Célt támogató Product Backlog elem megtervezése.

## Daily Scrum

A Daily Scrum egy esemény. Ezen az eseményen a Fejlesztők együttműködnek a Sprint Cél elérése érdekében, és frissítik a cselekvési tervet, a Sprint Backlogot a következő Daily Scrum eseményig. Ha a Sprint Cél már teljesült, a Fejlesztők a Product Cél irányába történő következő érdemi előrelépésen dolgoznak tovább.(Az SGEP az irány fenntartását hangsúlyozza.)

A Daily Scrum fókuszt, összetartást és időbeli nyomást teremt, valamint elősegíti az önmenedzselést [11]. Általában kizárólag a Fejlesztők vesznek részt rajta. Az egyszerűség érdekében gyakran ugyanabban az időpontban és helyszínen, azonos menetrenddel kerül megrendezésre.

A Fejlesztők szabadon választhatják meg a számukra megfelelő struktúrát és technikákat. A Daily Scrum javítja a Sprint Cél elérését támogató kommunikációt, segít a kockázatok és akadályok azonosításában és kezelésében, gyors döntéshozatalt kíván meg, és így csökkenti a további megbeszélések szükségességét.

A Daily Scrum nem az egyetlen alkalom, amikor a Fejlesztők módosíthatják a Sprintre vonatkozó tervüket a Sprint Cél vagy a Termék Cél kontextusában. Gyakran napközben is találkoznak, hogy részletesebb egyeztetéseket folytassanak.

A folyamatos értékáramlás [48–49] és a lehető legkorábbi eredmények elérése érdekében a Fejlesztőknek célszerű egyszerre egy vagy néhány elemre összpontosítani, és teljesíteni a Definition of Output Done kritériumait, mielőtt új munkába kezdenének. Ezt úgy érhetik el, ha koncentráltak maradnak, kevés elem van folyamatban, és inkább befejezik a megkezdett munkát, ahelyett hogy újat kezdenének. A Fejlesztők a „várakozó munkát” figyelik, nem pedig az „üresjáratban lévő embereket”. (Az SGEP a flow szemléletét hangsúlyozza.)

A Daily Scrum időkerete legfeljebb napi 15 perc.

## Sprint Review

A Sprint Review egy esemény. Ez egy interaktív, együttműködésen alapuló munkafolyamat. Ezen az eseményen legtöbbször a Scrum Csapat megosztja az aktuális Product Célt, valamint bemutatja a Definition of Output Done-t és a Definition of Outcome Done-t az Érintettek (Stakeholders) számára. A Scrum Csapat bemutatja munkájának eredményeit, a meghozott kompromisszumokat, valamint azt, hogy milyen mértékű előrelépés történt a Product Cél irányába (azaz a munkavégzés mögötti „miért” irányába). Ha rendelkezésre állnak, a Definition of Outcome Done teljesülésére vonatkozó aktuális, naprakész mérőszámokat is ismertetik és közösen átgondolják.

A Sprint Review során számos, a Termékhez kapcsolódó aspektust vizsgálnak meg, például: a Termék Célt, a Product Backlogot, a Sprint Célt, a tanulságokat, az Inkrementumot, az Érintettek elvárásait és korlátait, a visszajelzéseket, a mellékhatásokat, a Termék előrehaladását, a piaci tényezőket, valamint előretekintő szempontokat is, például új ötleteket, lehetőségeket vagy lehetséges következő lépéseket.

A tanultak alapján:

- A résztvevők érzékelik, meghallgatják egymást, tanulnak, és közösen gondolkodnak arról, mi lehet a következő lépés;

- A Product Backlog (a „mi”) és szükség esetén a Termék Cél is módosulhat — lehetőség szerint adatokra vagy megfigyelésekre támaszkodva, és a Product Goal vagy az opcionális Product Vision által vezérelt módon; és

- A jövőbeli Sprintekre vonatkozóan résztvevők módosíthatják a Product Definition of Outcome Done tartalmát is.

Mindig fontos figyelembe venni az érintetteket, valamint azt, hogy mely értékeket, szempontokat tartanak fontosnak, ideértve az élettelen, nem emberi érintetteket is, mint például a jogszabályok.

A be nem fejezett Product Backlog elemek visszakerülnek a Product Backlogba további megfontolásra, és nem kerülnek bemutatásra; esetenként ezek átkerülnek a következő Sprintbe.

A Sprint Review a Sprint utolsó előtti eseménye, amelynek időkerete négy óra egy négyhetes Sprint esetén. Rövidebb Sprinteknél az esemény időtartama jellemzően rövidebb.

## Sprint Retrospektív

A Sprint Retrospektív egy esemény. Ennek során a Scrum Csapat megállapodik abban, hogy min és hogyan érdemes javítani. Sor kerülhet téves feltételezések feltárására is – olyanokra, amelyek korábban tévútra vitték a csapatot. Emellett pozitív tapasztalatokat – például jól bevált technológiákat, folyamatokat, működési mintákat – is ki lehet emelni, megerősíteni. Az eseményen vizsgált szempontok gyakran a tevékenységi terület sajátosságaihoz igazodnak. A visszatekintés akkor a leghatékonyabb, ha pszichológiailag biztonságos környezetben zajlik.

A Sprint Retrospektív azokra a változásokra fókuszál, amelyek a legnagyobb mértékben járulhatnak hozzá a fejlődéshez, például:

- Az Inkrementumra

- Az elért eredményekre és az üzleti hatásra

- A professzionalizmusra, pl. készségek, technikai gyakorlatok, eszköztár, innovációs képesség;

- Az igazolt értékáramlásra [48–49], pl. end-to-end flow metrikák, piacra jutási idő;

- A hatékonyságra (a „hogyan”-ra), pl. technológia, folyamatok, függőségek;

- Az együttműködésre és a csapatdinamikára, pl. együttműködés, munkaszervezés;

- Az információk vizualizációjára, pl. product wall, metrikák;

- A következő Sprintek Definition of Output Done-jára;

- A következő Sprintek Definition of Outcome Done-jának további finomítására;

- Annak módjára, hogyan lehet biztosítani automatikusan a *Definition of Outcome Done* mérőszámainak teljesülését;

- …és más szempontokra.

A legnagyobb hatású fejlesztési lehetőségeket a lehető leghamarabb érdemes kezelni. A Scrum Csapat célja nem csupán a fejlődésről való beszélgetés – a Scrum a valódi, folyamatos fejlődést meg is valósító törekvésekre épül. Egyes fejlesztési lépésekhez a Támogatók (Supporters) bevonása szükséges lehet, de ez nem jelenti azt, hogy a Scrum Csapatnak ne kellene törekednie valós előrelépésekre – például a folyamatos, apró javításokra (marginal gains).

A Sprint Retrospective a Sprint utolsó eseménye. Egy négyhetes Sprint esetén három óráig tart. Rövidebb Sprintek esetén jellemzően rövidebb ideig zajlik.

## Zárómegjegyzés

A Scrum olyan, mint egy tükör. Ha a tükörképed nem olyan, amilyennek szeretnéd, vajon el kell rejteni a tükröt?

Mielőtt a Scrum testreszabására törekednél, alakítsd ki szokássá legalább egy Inkrement elérését minden Sprintben. A Scrum minden egyes elemének célja van – ezek megértése elengedhetetlen. Vedd figyelembe a kontextust. A rövid táv a szállításról szól, a hosszú táv pedig a sikeres, emergens változásról egy irányban, valamint az érték fenntartható szállításáról: Outcome-ok teremtéséről a Stakeholderek számára és Impact eléréséről a szervezetek számára. A Scrum sikeres bevezetése azon múlik, hogy meg tudjuk-e találni az egyensúlyt a rövid és hosszú táv között.

Óvakodj attól, hogy más szervezetektől átvett megközelítéseket alkalmazz anélkül, hogy azok kultúráját is kialakítanád.Az emergens változás a haladás irányában maga a változás. A változás magába foglalja (de nem kizárólag) a vezetést, munkafolyamatokat, eljárásokat és rendszereket – beleértve a HR-t, pénzügyet, beszerzést és még sok mást. A Scrum nem egy végcél, hanem egy soha véget nem érő, folyamatos fejlődéssel és javítással járó expedíció egy meghatározott irányban.

## Köszönetnyilvánítás

A Scrumot a Lean [20], a Toyota Termelési Rendszer [57–58], Hirotaka Takeuchi és Ikujiro Nonaka The New New Product Development Game című, a Harvard Business Review-ban megjelent cikke [18], valamint a DuPont-nál alkalmazott empirikus módszertan [59] inspirálta.

A Scrum az 1990-es évek elején került kidolgozásra. Ken Schwaber és Jeff Sutherland 1995-ben mutatták be közösen a Scrumot az OOPSLA konferencián [60]. A [Scrum Guide](https://scrumguides.org/) első verziója 2009-ben jelent meg [7]. A Scrum azóta is folyamatosan fejlődik.

Köszönetünket fejezzük ki mindazoknak is, akik visszajelzéseikkel hozzájárultak a korábbi vázlatok továbbfejlesztéséhez, többek között Daryn Bassonnak, Alex Benesnek, Kurt Bittnernek, Deb Bhattacharyának, Magdalena Firlitnek, Nichervan Fazelnek, Peter Fischbachnak, Michael Forninak, Tom Gilbnek, Martin Hinshelwoodnak, Jesse Houwingnak, Michael Huynhnak, Matthew Ijoginak, Marc Kaufmannnak, Tom Mellornak, Christian Neverdalnak, Stas Pavlovnak, Ian Sharpnak, Alisa Stolzénak, Mark Summersnek és Nader Talainak.

## A Scrum Guide Expansion Pack Collection szerzősége és forrásmegjelölése

> Ezt a gyűjteményt Ralph Jocham, John Coleman és Jeff Sutherland írta és állította össze. Az egyes fejezetek szerzője a megfelelő szakaszoknál külön feltüntetésre került, és mindegyik megőrzi az eredeti licencfeltételeit. A teljes gyűjtemény tájékoztató célt szolgál; kérjük, tartsa tiszteletben az egyes fejezetekre vonatkozó licencfeltételeket.

## References

[1] Langton, C.G. (ed.) (1989) Artificial Life: Proceedings of an Interdisciplinary Workshop on the Synthesis and Simulation of Living Systems, Los Alamos, New Mexico, September 1987. Santa Fe Institute Studies in the Sciences of Complexity, vol. VI. Redwood City, CA: Addison-Wesley.

[2] Langton, C.G. (1989) 'Life at the edge of chaos', in Langton, C.G. (ed.) Artificial Life: Proceedings of an Interdisciplinary Workshop on the Synthesis and Simulation of Living Systems. Santa Fe Institute Studies in the Sciences of Complexity, vol. VI. Redwood City, CA: Addison-Wesley, pp. 41–91.

[3] Holland, J.H. (1992) Complex Adaptive Systems. Daedalus, 121(1), pp. 17–30. Available at: https://www.jstor.org/stable/20025416 (Accessed: 17 May 2025).

[4] Axelrod, R. and Cohen, M.D. (2000) Harnessing Complexity: Organizational Implications of a Scientific Frontier. New York: Free Press.

[5] Juarrero, A. (1999) Dynamics in Action: Intentional Behavior as a Complex System. Cambridge, MA: MIT Press.

[6] Snowden, D.J. and Boone, M.E. (2007) 'A leader's framework for decision making', Harvard Business Review, 85(11), pp. 68–76. Available at: https://hbr.org/2007/11/a-leaders-framework-for-decision-making (Accessed: 17 May 2025)

[7] Schwaber, K. & Sutherland, J. (2020) The Scrum Guide: The definitive guide to Scrum: The rules of the game. Available at: https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf (Accessed: 17 May 2025)

[8] Schwaber, K. (2023) 'Scrum Guide', Ken Schwaber's Blog, 25 September. Available at: https://kenschwaber.wordpress.com/2023/09/25/scrum-guide/ (Accessed: 20 May 2025).

[9] Mayer, T. (2025) A Simple Guide to Scrum. [Online]. Available at: https://scrum.academy/guide/ (Accessed: 17 May 2025)

[10] Scrum.org (2025) Scrum Hexis. Available at: https://thecynefin.co/product/hexi-scrumorg/ (Accessed: 17 May 2025).

[11] LeSS.works (n.d.) Self-managing teams. Available at: https://less.works/less/management/self-managing-teams (Accessed: 17 May 2025).

[12] Cynefin.io, V. (2022) Cynefin wiki, Cynefin.io. At: https://cynefin.io/ (Accessed: April 4, 2023).

[13] Rancati, A. and Snowden, D. (2021) Managing complexity (and chaos) in a crisis - a field guide for decision makers inspired by the Cynefin framework. Luxembourg, Belgium: Publications Office of the European Union.

[14] Snowden, D. et al. (2022) Cynefin® weaving sense-making into the fabric of our world. 2nd edn. Edited by R. Greenberg and B. Bertsch. Singapore, Singapore: Cognitive Edge - The Cynefin Co.

[15] Snowden, D. (2023) Cynefin St David's 2023 1 of 2, Cynefin Co. https://thecynefin.co/cynefin-st-davids-2023-1-of-2/ (Accessed: April 20, 2023).

[16] Snowden, D. (2023) Managing for emergence through abduction, The Cynefin Co. At: https://thecynefin.co/managing-for-emergence/ (Accessed: June 24, 2023).

[17] Snowden, D. and Smith, N. (2023) Leadership discussion: Dave and Natalie - the Cynefin co, YouTube. At: https://youtu.be/WcPZ8ybDF0w (Accessed: April 7, 2023).

[18] Takeuchi, H. and Nonaka, I. (2014) The new new product development game, Harvard Business Review. At: https://hbr.org/1986/01/the-new-new-product-development-game (Accessed: 21 January 2024).

[19] Campbell, J. (2025) 'Empiricism', EBSCO Research Starters. Available at: https://www.ebsco.com/research-starters/religion-and-philosophy/empiricism (Accessed: 17 May 2025)

[20] Womack, J.P. and Jones, D.T. (1996) Lean Thinking: Banish Waste and Create Wealth in Your Corporation. New York: Simon & Schuster.

[21] Templeton Foundation (2023) 'What Is Emergence?' John Templeton Foundation. Available at: https://www.templeton.org/news/what-is-emergence (Accessed: 17 May 2025).

[22] Wolfram, S. (2002) A new kind of science. Champaign, IL: Wolfram Media.

[23] Sutherland, J., Coplien, J.O., Heasman, L., den Hollander, M., Ramos, C. and The Scrum Patterns Group (2019) A Scrum Book: The Spirit of the Game. Raleigh, NC: Pragmatic Press.

[24] Alexander, C. (1979) The timeless way of building. New York: Oxford University Press.

[25] Lewis, R. (2023) An operating model for business agility: Agile for managers of the digital age. Independently published.

[26] less.works (n.d.) Technical Excellence. Available at: https://less.works/less/technical-excellence (Accessed: 7 June 2025)

[27] Thurlow, N., Turner, J.R. and Podder, A. (2020) The Flow System: The Evolution of Agile and Lean Thinking in an Age of Complexity. Flow Consortium. Available at: https://flowguides.org/Flow_Guide.pdf (Accessed: 17 May 2025).

[28] Felderer, M. and Travassos, G.H. (2020) 'The Evolution of Empirical Methods in Software Engineering'. Available at: https://arxiv.org/pdf/1912.11512.pdf (Accessed: 17 May 2025).

[29] Creative Wisdom (n.d.) 'Abduction, Deduction and Induction'. Available at: https://www.creative-wisdom.com/teaching/WBI/abduction5.pdf (Accessed: 17 May 2025).

[30] Blackburn, S. (2003) Ethics: A Very Short Introduction. Oxford: Oxford University Press.

[31] Cagan, M., 2018. Inspired: How to Create Tech Products Customers Love. 2nd ed. Hoboken, NJ: Wiley.

[32] Cagan, M. & Jones, C., 2020. Empowered: Ordinary People, Extraordinary Products. Hoboken, NJ: Wiley.

[33] Cagan, M., 2024. Transformed: Moving to the Product Operating Model. Hoboken, NJ: Wiley.

[34] Moore, G.A., 1991. Crossing the Chasm: Marketing and Selling High-Tech Products to Mainstream Customers. New York: Harper Business.

[35] Davies, Dan. (2025) The Unaccountability Machine: Why Big Systems Make Terrible Decisions—and How the World Lost Its Mind. London: Profile Books Ltd. (Paperback edition).

[36] Ackoff, R.L. (1999) Ackoff's Best: His Classic Writings on Management. New York: John Wiley & Sons.

[37] LeSS (n.d.) 'Why LeSS? Achieving adaptiveness'. Available at: https://less.works/less/framework/why-less (Accessed: 17 May 2025).

[38] Gothelf, J. & Seiden, J. (2021) Lean UX: Designing great products with agile teams. 3rd edn. Sebastopol, CA: O'Reilly Media

[39] Torres, T. (2021) Continuous discovery habits: Discover products that create customer value and business value. North Charleston, SC: Product Talk

[40] 'Genchi Genbutsu' (2024) Wikipedia. Available at: https://en.wikipedia.org/wiki/Genchi_Genbutsu (Accessed: 18 May 2025).

[41] van der Bles, A.M., van der Linden, S., Freeman, A.L.J. and Spiegelhalter, D.J. (2019) 'Communicating uncertainty about facts, numbers and science', Royal Society Open Science, 6(5), 181870. Available at: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6549952/ (Accessed: 17 May 2025).

[42] NetSuite (2023) 'What Is Business to Business to Consumer (B2B2C)?' Available at: https://www.netsuite.com/portal/resource/articles/ecommerce/b2b2c.shtml (Accessed: 17 May 2025).

[43] Dictionary Marketing (2024) 'B2B2B'. Available at: https://dictionarymarketing.com/definition/b2b2b/ (Accessed: 17 May 2025).

[44] Patton, J. and Economy, P. (2014) User Story Mapping: Discover the Whole Story, Build the Right Product. Sebastopol, CA: O'Reilly Media.

[45] Kotter, J.P., 1996. Leading Change. Boston: Harvard Business School Press.

[46] Csíkszentmihályi, M. (1990) Flow: The Psychology of Optimal Experience. New York: Harper & Row

[47] Stripe (2025) 'Sir Jony Ive and Patrick Collison Fireside Chat \| Stripe Sessions 2025', YouTube video, 8 May. Available at: https://youtu.be/wLb9g_8r-mE (Accessed: 8 June 2025)

[48] Kanban Guides (2025) Available at: https://kanbanguides.org (Accessed: 17 May 2025)

[49] Scrum.org et al. (2021) The Kanban Guide for Scrum Teams. Available at: https://www.scrum.org/resources/kanban-guide-scrum-teams (Accessed: 17 May 2025)

[50] Scotland, K. (2023) Why strategy deployment? Here are three great reasons, AvailAgility. At: https://availagility.co.uk/2023/02/16/why-strategy-deployment-here-are-three-great-reasons/ (Accessed: April 3, 2023).

[51] Scotland, K. (2019) Deploying strategies as choices, AvailAgility. At: https://availagility.co.uk/2019/02/08/deploying-strategies-as-choices/ (Accessed: April 3, 2023).

[52] Scotland, K. (2017) Strategy deployment and playing to win, AvailAgility. At: https://availagility.co.uk/2017/07/14/strategy-deployment-and-playing-to-win/ (Accessed: April 3, 2023).

[53] Scotland, K. (2017) A strategy deployment cadence, AvailAgility. At: https://availagility.co.uk/2017/09/06/a-strategy-deployment-cadence/ (Accessed: April 3, 2023).

[54] Scotland, K. (2022) The ultimate X-matrix for your agile transformation is here, AvailAgility. At: https://availagility.co.uk/2022/11/03/the-ultimate-x-matrix-for-youragile-transformation-is-here/ (Accessed: April 5, 2023).

[55] Fuzzy Business: How to be roughly right rather than precisely wrong (unpublished).

[56] ScrumPlop, n.d. Illigitimus Non Interruptis. The Scrum Book: The Spirit of the Game. Available at: https://sites.google.com/a/scrumplop.org/published-patterns/product-organization-pattern-language/illegitimus-non-interruptus (Accessed: 18 May 2025).

[57] Ohno, T. (1988) Toyota Production System: Beyond Large-Scale Production. Portland, OR: Productivity Press.

[58] Toyota Motor Corporation (2024) Toyota Production System. Available at: https://global.toyota/en/company/vision-and-philosophy/production-system/index.html (Accessed: 17 May 2025).

[59] Hounshell, D.A. & Smith, J.K. (1988) Science and Corporate Strategy: DuPont R&D, 1902–1980. Cambridge: Cambridge University Press.

[60] Schwaber, K. and Sutherland, J. (1995) 'SCRUM Development Process', OOPSLA Business Object Design and Implementation Workshop. Austin, Texas, October 1995. Available at: http://jeffsutherland.org/oopsla/schwapub.pdf (Accessed: 17 May 2025).

[61] Members of The Scrum Patterns Group: Vervloed, E., Harrison, N., Harada, K., Yoder, J., Kim, J., O'Callaghan, A., Beedle, M., Bjørnvig, G., Friis, D., Reijonen, V., Benefield, G., Østergaard, J., Eloranta, V.-P., Leonard, E. & Aguiar, A.

[62] Boyd, J.R. (1995–1996) The Essence of Winning and Losing. Unpublished briefing slides. Note: Boyd's OODA was primarily disseminated through military briefings and unpublished manuscripts. His final conceptualization appears in The Essence of Winning and Losing, which emphasizes nonlinear decision-making and adaptation in complex environments.

[63] Turner, J.R., Thurlow, N. and Rivera, B. (2019) The Flow System Guide. Available at: https://flowguides.org/Flow_Guide.pdf (Accessed: 24 May 2025). Summary: This guide integrates Boyd's OODA with complexity theory and agile practices, framing it as a dynamic, non-linear decision-making process for organizational flow.
