# 🌍 Atlante dei Paesi

Applicazione nativa **iOS** per l'esplorazione geografica, demografica e la gestione offline dei preferiti dei Paesi del mondo.

Progetto di gruppo per il corso di Progettazione e Sviluppo iOS (Secondo Anno - Software Architect) presso l'ITS Angelo Rizzoli.

| | |
|---|---|
| **Team** | Andrea Biscaldi, Lorenzo Cenderelli, Federico Chiappa, Pietro Gallo, Thomas Palomba |
| **Piattaforma** | iOS · Swift · SwiftUI |

---
## 1. Visione del progetto

L'obiettivo è realizzare un'app per consultare i Paesi del mondo: bandiera, capitale, popolazione e posizione su mappa.

L'app **non necessita di un backend proprietario**. Adotta un'architettura client-side nativa, basata sul pattern **MVVM** e sulla **Protocol-Oriented Programming (POP)**, che:

- consuma l'API REST pubblica e gratuita [restcountries.com](https://restcountries.com/) per mostrare dati aggiornati sui Paesi del mondo;
- salva i Paesi preferiti in locale con **CoreData**, così restano consultabili offline;
- usa **MapKit** e **CoreLocation** per mappe e geolocalizzazione.

---

## 2. Funzionalità principali

1. 🌐 **Esplorazione globale**: lista di tutti i Paesi del mondo recuperati in tempo reale via API REST, con barra di ricerca integrata.
2. 📖 **Scheda dettaglio**: vista approfondita con bandiera, capitale, popolazione, moneta, lingue e mini-mappa centrata sulle coordinate geografiche del Paese, con pulsante per aggiungerlo ai preferiti.
3. ⭐ **Gestione preferiti offline**: salvataggio dei Paesi preferiti in locale con CoreData, per la consultazione anche senza connessione di rete.
4. 🗺️ **Mappa**: pin per i Paesi salvati.
5. 📍 **Geolocalizzazione GPS**: rilevazione della posizione attuale dell'utente e calcolo della distanza geografica dalla capitale del Paese selezionato.

---

## 3. Architettura e tech stack

- **Linguaggio**: Swift 5+
- **UI framework**: SwiftUI (`TabView`, `NavigationStack`, `List`, `AsyncImage`, `.searchable`)
- **Architettura**: MVVM (Model-View-ViewModel) + Protocol-Oriented Programming
- **Networking e API**: `URLSession` con `async/await`, REST API ([restcountries.com](https://restcountries.com/)), `Codable` / `JSONDecoder`
- **Database locale**: CoreData (`@FetchRequest`, `NSPersistentContainer`)
- **Mappe e GPS**: MapKit (`Map`, `Marker`), CoreLocation (`CLLocationManager`)
- **IDE**: Xcode

---

## 4. Copertura del programma di corso

Il progetto copre i moduli didattici previsti dal programma d'esame (escluso il modulo 15 su AR).

| Modulo | Argomento | Implementazione nel progetto |
|---|---|---|
| 1-3 | Fondamenti e Swift | `struct`, `enum`, optional, MVVM, concorrenza (`async/await`) |
| 4 | Protocolli | `Codable`, `Identifiable`, `ObservableObject`, protocolli per i servizi |
| 5 | Framework | Foundation, SwiftUI, CoreData, MapKit, CoreLocation |
| 6-9 | SwiftUI e navigazione | `TabView`, `NavigationStack`, `List`, `AsyncImage`, `@State`, `@StateObject` |
| 7 | Ciclo di vita | Gestione degli stati dell'app con `scenePhase` |
| 10 | CoreData | Entità `FavoriteCountry` per salvataggio e lettura offline |
| 11-13 | WebService, REST e JSON | `URLSession` asincrono e parsing JSON con `JSONDecoder` |
| 14 | Mappe e localizzazione | Mappe interattive con MapKit e posizione utente con CoreLocation |
| 16 | Release e pubblicazione | Configurazione `Info.plist` (permessi GPS) e archivio Xcode |

---

## 5. Struttura del progetto

```
Da fare alla fine del progetto
```

Ogni componente vive in file separati, per ridurre al minimo i conflitti Git.

---

## 6. Installazione e requisiti

### Requisiti

- macOS Sonoma 14.0 o superiore
- Xcode 15.0+ / iOS 17.0+

### Setup

1. Clona il repository:
   ```bash
   git clone https://github.com/0Pit0/ProgettoFinaleIOS.git
   ```
2. Apri il file `WorldAtlas.xcodeproj` in Xcode.
3. Seleziona un simulatore iOS (es. iPhone 15) e premi **Cmd + R** per avviare l'applicazione.

> L'API REST Countries è pubblica e non richiede chiavi di accesso.

---

## 7. Piano di lavoro incrementale

Il progetto segue una strategia di sviluppo incrementale a **Milestone**, sincronizzata con il programma delle lezioni in aula.

| Milestone | Contenuto |
|---|---|
| **1 · UI e navigazione** | Struttura UI e navigazione con dati mock (SwiftUI, `TabView`, `NavigationStack`) |
| **2 · Networking e REST** | Layer di rete e REST API (`URLSession`, `Codable`) con parsing del JSON reale |
| **3 · CoreData** | Persistenza locale e gestione dei preferiti offline |
| **4 · MapKit e GPS** | Mappe e geolocalizzazione (MapKit, CoreLocation) |

---

## 8. Credits

|  |
|---|
| [Andrea Biscaldi](https://www.linkedin.com/in/andreabiscaldi/) | 
| [Lorenzo Cenderelli](https://www.linkedin.com/in/lorenzo-cende/) |
| [Federico Chiappa](https://www.linkedin.com/in/federico-chiappa/) |
| [Pietro Gallo](https://www.linkedin.com/in/pietro-gallo-pit) |
| [Thomas Palomba](https://www.linkedin.com/in/thomas-palomba/) |
