# Konteeksamne PGR301

# Scenario

Du har fått en idé du selv mener er veldig god - et API som lager tilfeldige kakeoppskrifter basert på en rekke ingredienser. Etter en liten helg med koding har du det som ligger i dette repositoryet. Fordi du er helt sikker på at dette kommer til å slå an på et globalt nivå, tenker du det er best å starte med god DevOps praksis fra starten av.

# Krav til leveransen 

Lag et nytt repository og kopier filene fra dette repositoryet. Du skal levere en lenke til ditt GitHub repository. Lenken skal være i en tekstfil i leveransen.

## Del 1 - Prinsipper

Forklar hvordan et større utviklingsteam kan samarbeide om videreutvikling av denne applikasjonen med tanke på:

* Hvordan man bruker av branches
* Sørge for at main branch alltid kompilerer og tester som er i orden
* Hindre noen i teamet å committe rett på main branch uten at noen andre også har sett på koden


## Del 2 - GitHub actions 

### Oppgave 2 - GitHub actions workflow

Lag en GitHub actions workflow som gjør følgende for hver pull request som lages i ditt repository:

* Kompilerer koden
* Kjører enhetstester

### Oppgave 3

Beskriv med ord eller skjermbilder hvordan man kan konfigurere GitHub på en slik måte at det ikke er mulig å merge en Pull Request inn i main branch, uten at koden kompilerer og enhetstester er kjørt uten feil.

## Del 3 Docker 

### Oppgave 1 

Skriv en multi stage ```Dockerfile``` for Java-applikasjonen, slik at kompileringen og byggingen kjører i selvstendige Docker containere.

### Oppgave 2 - Docker hub

Lag en GitHub actions workflow som bygger et container image og pusher det til din Docker 
hub konto hver gang noen pusher en tag til repositoryet. Container image i Docker hub skal ha 
samme tag som i Git.

Beskriv hva sensor må gjøre for å få din workflow til å fungere i sin egen GitHub-konto.
