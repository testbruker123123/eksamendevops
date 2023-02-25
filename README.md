
GitHub repository: https://github.com/VegardG/devopseksamen

Del 1:

Sammarbeid blant et større utvkiklingsteam er veldig viktig for å sikre kvalitet og suksess i videre utvikling av applikasjonen.
To svært viktige praksiser for å gjøre dette lettere er kontinuerlig integrasjon (CI) og kontinuerlig leveranse (CD).

Kontinuerlig integrasjon er å ofte integrere kodeendringer gjort av forskjellige utviklere til et delt repository.
Dette oppnås ved bruk av en autimatisert byggprosess som kompilerer endringer og kjører tester for å finne eventuelle feil med endringene.
Dette sikrer at kodeendringer integreres i applikasjonen så fort som mulig og konflikter kan bli løst tidlig, noe som reduserer sjansene for
integrasjonsproblemer senere. Dette kan hindre feil eller bugs å komme inn i koden som kan føre til mye bortkastet tid på debugging og lignende.

Kontinuerlig leveranse er er å automatisere utgivelsen av software endringer til produksjon. Dette sørger for at applikasjonen alltid er i en
utgivbar tilstand, med automatiserte test og utrullingsprosesser. Koden blir da integrert i applikasjonen så fort som mulig så lenge den består 
testene. Dette gjør at man kan legge til nye funksjoner eller fikse gamle med mye mindre risiko. 

CI og CD har da fordeler som at hele teamet har kodeendringer tilgjengelig som gjør det lettere å sammarbeide.
Med kjapp integrasjon og automatisk testing av kode blir det mye lettere å rette på bugs og feil tidlig.
Det kreves mer koordinering mellom utviklere som fører til bedre kommunikasjon mellom teamet.
Når man kan fikse bugs og legge til nye funskjoner raskere og enklere bruker man mindre tid på utvikling og applikasjonen bevege seg framover raskere.

Alt dette sammen gjør at CI og CD essensielt for sammarbeid mellom store utviklingsteam.

---

Det blir lettere å få innsikt i både forretningsmessige og tekniske aspekter sammenlignet med Waterfall-metoden hvor utviklere bygger applikasjonen
og driftsteamet er ansvarlige for å utgi og vedlikeholde. Denne seperasjonen skaper en avstand mellom teamene som kan gjøre det vanskelig å få innsikt.
Hvis det oppstår problemer kan f. eks utviklere ikke ha den nødvendige innsikten inn i miljøet for å løse problemet.

DevOps legger vekt på sammarbeid og kommunikasjon mellom drift og utviklingsteamet hvor de jobber sammen gjennom hele utviklingsyklusen.
Dette gjør at gjør at begge teamene har mye større og bedre innsikt i prosjektet.

Automatisering i DevOps i testing, utgivelse og overvåking gjør at teamene får mer innsikt i de tekniske aspektene som responstider, feilrate,
CPU og minnebruk osv. Automatiseringen gjør at teamene kan samle inn data kontinuerlig som kan brukes til å forbedre ytelse osv.

Med bruk av kontinuerlig leveranse blir det lett å få innsikt i applikasjonens brukere og hvordan de bruker den. Denne informasjonen kan da
brukes til hvordan man skal gå videre med applikasjonen fra en forretnings synsvinkel.

---

Her er hva man kan gjøre i AWS:

Bruke Amazon CloudWatch som er en obervasjonstjeneste som kan brukes til å samle inn og spore metrics, loggfiler og å sette alarmer. Man kan bruke
det til å overvåke både tekniske aspekter som response-tider, feilrater, CPU og minnebruk, og de forretningsmessige aspektene som antall brukere og 
genererte oppskrifter.

Amazon Simple Notification Service (SNS) er en meldingstjeneste som sender varsler fra applikasjonen til CloudWatch f.eks. Dette kan brukes til å sende
varsler om høy CPU bruk eller økning i feilrate eller antall brukere og oppskrifter. For å bruke dette må man opprette et emne og abonnere på det ved
å bruke de riktige protokollene som e-post, SMS eller HTTP.

For å få innsikt i applikasjonen må man gjøre at den sender ut metrikker og logger til CloudWatch og SNS ved å bruke enten CloudWatch agenten eller
AWS SDK.

Det finnes også noe som heter Amazon QuickSight som kan brukes til å visualisere og analysere data fra f.eks CloudWatch og SNS. Du kan lage et dashboard
som viser tilstanden til applikasjonen og aspektene som er nevnt. 

---

Del 2 oppgave 2:

For at det ikke skal være mulig å merge enn Pull Request i main branch uten at koden kompilerer, enhetstester er kjørt uten feil og minst en annen person
i teamet har godkjent endringen gjør man slik:

Inne på repositoryet på github trykk på 'Settings' tabben.
Trykk deretter på 'Branches' i menyen til venstre.
Trykk på 'Add branch protection rule' under Branch protection rules.
Navngi 'Branch name pattern' som din main branch.
Trykk på disse 2 boksene: 'Require status cheks to pass before merging' så 'Require branches to be up to date before merging'.
Legg til navnet til enhetstestene som kjører automatisk.
Trykk på boksen 'Require a pull request before merging' deretter 'Require approvals' og sett'Required number of approvals before merging' til 1.
Tykk på boksen 'Dismiss stale pull request approvals when new commits are pushed'.
Trykk så på 'Create' helt nederst.

---

Del 3 oppgave 2:
Gå inn på 'Actions' på forken aktiver workflows

Oppgave 3:

1. docker pull vegardg/bakemyday
2. docker run -p 9999:8080 vegardg/bakemyday











