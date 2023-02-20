# Konteeksamne PGR301

# Scenario

Du har fått en idé du selv mener er veldig god - et API som lager tilfeldige kakeoppskrifter basert på en rekke ingredienser. Etter en liten helg med koding har du det som ligger i dette repositoryet. Fordi du er helt sikker på at dette kommer til å slå an på et globalt nivå, tenker du det er best å starte med god DevOps praksis fra starten av.

## Krav til leveransen

* Eksamensoppgaven er gitt på GitHub repository ; https://github.com/pgr301-2022/konte-2022
* Du skal ikke lage en fork av dette repositoryet, men kopiere innholdet til et nytt. Årsaken er at sensor vil lage en fork av ditt repo, og arbeidsflyten blir lettere hvis ditt repo ikke er en fork.
* Du kan jobbe i et public-, eller privat repo, og deretter gjøre det public noen timer etter innleveringsfrist hvis du er bekymret for plagiat fra medstudenter.

Når sensor evaluerer oppgaven vil han/hun se på

* Ditt repository og "Actions" fanen i GutHub for å bekrefte at Workflows faktisk virker
* Vurdere drøftelsesoppgavene. Du må lage en  "Readme" for besvarelsen i ditt repo.
* Sensor vil Lage en fork av ditt repo og tester ut pipelines med egen Docker hub/github bruker.

# Om applikasjonen 

Du kan start applikasjonen lokalt ved å kjøre

```shell
mvn spring-boot:run
```

Og deretter åpne en nettleser med for eksempel - http://localhost:8080/cake-ingredients?numberOfIngredients=23

## Del 1 - Prinsipper

Forklar hvordan et større utviklingsteam kan samarbeide om videreutvikling av denne applikasjonen med tanke på:

* Hvordan man bruker branches
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
hub konto hver gang noen pusher en tag til repositoryet. 

For eksempel skal kommandoene under resultere i et nytt container image med tag 1.0.0 i Docker Hub

```sh
git tag 1.0.0
git push --tags
```

Beskriv hva sensor må gjøre for å få workflowen til å fungere i sin egen GitHub-konto.

### Oppgave 3 

Test din egen workflow, slik at du får minst ett container image i din Docker Hub konto.
Hvilken docker kommando kan sensor bruke for å laste ned og starte ditt container image fra docker hub?

Fullfør ```docker ..```
