# 🧩 Life Backlog

> Operating Model: Du behandelst dein Leben wie ein Produkt. Jede Lebens-Verbesserung
> ist ein **Epic**, jede konkrete Routine ist ein **Ticket**. Dein einziges Werkzeug
> zur Umsetzung ist die **Routine** — du implementierst sie, bis sie ohne Willenskraft
> läuft, dann shippst du sie nach "Prod" und ziehst das nächste Ticket.

---

## ⚙️ Die Regeln (Definition of the System)

| Konzept | Dev-Begriff | Bedeutung |
|---|---|---|
| **WIP-Limit = 1** | Kanban WIP-Limit | Max. **eine** neue Routine gleichzeitig "In Progress". Erst wenn die in Prod läuft, ziehst du die nächste. Das ist die wichtigste Regel — sie verhindert das Scheitern an Überlast. |
| **Anker** | Trigger / Cue | Jede Routine hängt an einem bestehenden Event ("Nachdem ich X tue, mache ich Y"). Kein Anker = passiert nie. |
| **MVP** | Minimal lauffähige Version | Die lächerlich kleine Version, die du auch an einem miesen Tag schaffst. Erst Muster etablieren, dann skalieren. |
| **Definition of Done** | DoD | Routine läuft X Wochen ohne Willenskraft → Ticket wandert nach "Maintenance/Prod". |
| **Increment** | Story-Splitting | Erst nach Done darfst du hochskalieren. Nie das Increment vor dem MVP bauen. |
| **never miss twice** | Regressionsregel | Einmal aussetzen = Ausrutscher (ok). Zweimal in Folge = Bug, sofort fixen. |
| **Sprint Review** | Retro | 1×/Woche 10 Min: Was lief, was nicht, was passe ich an. |

**Board:** `Backlog → In Progress (max 1) → Maintenance (Prod)`

---

## 🔥 Sprint 0 — Infra-Setup (einmalig, zählt nicht gegen WIP)

Das ist deine "CI/CD & Observability" — Prozess, kein Willenskraft-Habit.

### LIFE-0 · Wöchentlicher Review aufsetzen  `infra` `P0`
- **Anker:** Sonntag, Abends vor dem Lesen
- **DoD:** 10-Min-Review steht als wiederkehrender Termin im Kalender
- **Inhalt:** aktuelles Ticket checken (lief es?), `never miss twice` prüfen, ggf. nächstes Ticket ziehen

### LIFE-00 · Tracking  `infra` `P1`
- **Anker:** —
- **DoD:** Ein simpler Tracker existiert (dein eigener Habit-Tracker, ein Blatt Papier, oder Garmin/Kalender). Sichtbar = ehrlich.

---

## 🚀 In Progress (WIP-Limit: 1)

### LIFE-1 · Schlaffenster fixieren  `P0` `KEYSTONE` `← START HIER`
- **Epic:** Recovery / Schlaf
- **Begründung:** Blockt fast alles andere. Schlaf entscheidet über Recovery, Laune und ob der Morgensport überhaupt stattfindet. Ohne dieses Ticket scheitern die nachgelagerten.
- **Anker:** 22:30 — Handy verlässt das Schlafzimmer
- **MVP / DoD:** Licht aus bis 23:00 an **5 von 7** Tagen, **3 Wochen** in Folge
- **Increment:** feste Aufstehzeit auch am Wochenende → Schlaffenster auf 7,5–8 h stabilisieren
- **Depends on:** —
- **Blocks:** LIFE-2, LIFE-4

---

## 📋 Backlog (priorisiert, gezogen sobald LIFE-1 in Prod ist)

### LIFE-2 · Morgen-Bewegungs-Anker  `P1`
- **Epic:** Bewegung
- **Begründung:** Klein und täglich — das ist die *Identitäts-Routine* ("ich bewege mich morgens"), **getrennt** von deinem echten Training. Genau hier liegt deine Falle: "6 Tage hart, jeden Morgen" als Startversprechen führt zu Übertraining → Abbruch.
- **Anker:** Direkt nach dem Aufstehen, vor dem Kaffee
- **MVP / DoD:** 5–10 Min Bewegung (Mobility / kurzer Spaziergang / Plank), 6×/Woche, 3 Wochen
- **Increment:** ausbauen, aber Volumen kommt über LIFE-3, nicht hier
- **Depends on:** LIFE-1

### LIFE-3 · Trainingsplan mit echten Ruhetagen  `P2`
- **Epic:** Bewegung
- **Begründung:** Ersetzt das naive "Sport an 6 Tagen". Schwimmen/Laufen/Rad periodisiert, mit geplanter Recovery — sonst zahlst du es mit Verletzung.
- **Anker:** feste Slots im Wochenkalender (z. B. Mo/Mi/Fr/Sa)
- **MVP / DoD:** 3 geplante Einheiten/Woche + min. 1 echter Ruhetag, 4 Wochen eingehalten
- **Increment:** Zone-2-Block / VO2-Max-Intervalle gezielt einbauen (dein Garmin-Setup kann das messen)
- **Depends on:** LIFE-1, LIFE-2

### LIFE-4 · Ernährungs-Baseline  `P1`
- **Epic:** Ernährung
- **Begründung:** Eine kleine, ankerbare Gewohnheit statt "iss gesund" (kein Trigger, scheitert sofort).
- **Anker:** Beim Frühstück / beim ersten Essen des Tages
- **MVP / DoD:** Protein + Wasser zu jeder Hauptmahlzeit, an 6 Tagen, 3 Wochen
- **Increment:** 1× Meal-Prep pro Woche (So) → reduziert Entscheidungen unter der Woche
- **Depends on:** LIFE-1

### LIFE-5 · Lese-Routine  `P2`
- **Epic:** Input / Lernen
- **Anker:** Im Bett, nachdem das Licht im Rest der Wohnung aus ist (koppelt an LIFE-1)
- **MVP / DoD:** 10 Seiten / 15 Min, 6×/Woche, 3 Wochen
- **Increment:** festes Buch-Backlog führen; Wechsel Fiction ↔ Fach (z. B. 40K ↔ S/4HANA-Stoff)
- **Depends on:** LIFE-1

### LIFE-6 · Karriere-Lernblock  `P3`
- **Epic:** Skill / Karriere
- **Begründung:** Gerichtetes Lernen auf S/4HANA-Architekt + C_TADM_23. Braucht stabilen Schlaf + Tagesstruktur, sonst frisst es Energie an der falschen Stelle.
- **Anker:** fester 45-Min-Block, gleiche Tageszeit
- **MVP / DoD:** 3 fokussierte Blöcke/Woche (Deep Work, Handy weg), 4 Wochen
- **Increment:** auf Prüfungs-Roadmap mit Meilensteinen umstellen
- **Depends on:** LIFE-1, LIFE-0

### LIFE-7 · Sozial-Rhythmus  `P2`
- **Epic:** Beziehungen
- **Begründung:** Freundschaften passen nicht ins Tages-Habit-Muster — sie laufen als **Cadence**, nicht als Daily.
- **Anker:** Kalendereintrag, nicht Stimmung
- **MVP / DoD:** 1 Nachricht/Anruf pro Woche + 1 Treffen pro Monat, 6 Wochen durchgehalten
- **Increment:** feste wiederkehrende Termine (z. B. monatlicher Spieleabend / Lauftreff)
- **Depends on:** —

### LIFE-8 · Schulter-Rehab  `P1`
- **Epic:** Recovery / Gesundheit
- **Begründung:** Unbehandelte Schulterprobleme blockieren langfristig das Training (LIFE-3) und erhöhen das Verletzungsrisiko. Rehab läuft parallel zum Rest, erfordert aber Konsequenz — kein einmaliges "kurz hinschauen".
- **Anker:** Direkt nach dem Morgen-Bewegungs-Anker (LIFE-2) oder als eigenständiger Abend-Slot
- **MVP / DoD:** Eigene Physio-Übungen 5×/Woche, 4 Wochen am Stück — wenn keine Verbesserung, Arzt aufsuchen
- **Increment:** Eigenständige Routine festigen; alle 4 Wochen reassessen ob Arzt nötig
- **Depends on:** —

### LIFE-10 · Positives Selbstgespräch  `P2`
- **Epic:** Mental / Mindset
- **Begründung:** Wie du innerlich mit dir redest, färbt alles andere — Motivation, Resilienz, Beziehungen. Kleine tägliche Dosis schlägt sporadische "Motivationsschübe".
- **Anker:** Direkt nach dem Aufstehen, als Teil von LIFE-2 (Morgen-Anker) — 1–2 Sätze laut oder im Kopf
- **MVP / DoD:** 1 bewusster positiver Gedanke / Satz an sich selbst pro Tag, 6×/Woche, 3 Wochen
- **Increment:** Abend-Reflexion ergänzen ("Was lief heute gut?") → koppelt an LIFE-5 (Lesen)
- **Depends on:** LIFE-1, LIFE-2

### LIFE-11 · Liebesbeziehung pflegen  `P1`
- **Epic:** Beziehungen
- **Begründung:** Romantische Beziehungen brauchen aktive Pflege — sie degenerieren still, wenn man sie "nebenbei laufen lässt". Cadence statt Stimmung, wie bei LIFE-7.
- **Anker:** Wöchentlicher fester Slot + tägliche kleine Geste (Nachricht, Lob, Dankbarkeit)
- **MVP / DoD:** 1 bewusster Quality-Time-Slot/Woche + täglich 1 kleine Geste, 4 Wochen
- **Increment:** gemeinsame Rituale etablieren (z. B. gemeinsames Abendessen ohne Handy, monatliches Date)
- **Depends on:** —

### LIFE-9 · Hüft-Mobilität  `P2`
- **Epic:** Recovery / Bewegung
- **Begründung:** Eingeschränkte Hüftmobilität limitiert Lauf- und Schwimmtechnik und ist ein häufiger Rücken-Trigger. Kleine tägliche Dosis schlägt seltenere lange Sessions.
- **Anker:** Direkt nach dem Aufstehen, als Teil von LIFE-2 (Morgen-Bewegungs-Anker)
- **MVP / DoD:** 5–10 Min Hüft-Dehn- und Mobilitätsroutine (z. B. 90/90, Weltrekord-Stretch, Hip Circles), 6×/Woche, 3 Wochen
- **Increment:** Routine auf 15 Min ausbauen; gezielt auf Beweglichkeits-Defizite aus LIFE-3 eingehen
- **Depends on:** LIFE-2

---

## ✅ Maintenance / Prod

> Hierher wandert jedes Ticket, das seine DoD erreicht hat. Läuft autonom,
> wird nur im wöchentlichen Review überwacht. `never miss twice` gilt weiter.

### LIFE-00 · Tracking  `infra` `P1` `✅ 2026-06-09`
- **Tool:** Streaks (iOS) — LIFE-1 als einziges aktives Habit, 5 von 7, Reminder 22:15

---

## 🗺️ Abhängigkeits-Graph (Reihenfolge)

```
LIFE-0 (Review)   ─── läuft sofort, parallel
LIFE-00 (Tracking) ─── läuft sofort, parallel
        │
LIFE-1 (Schlaf) ◄── KEYSTONE, alles hängt dran
        ├──► LIFE-2 (Morgen-Anker)
        │         └──► LIFE-3 (Trainingsplan)
        ├──► LIFE-4 (Ernährung)
        ├──► LIFE-5 (Lesen)
        └──► LIFE-6 (Karriere-Lernen)

LIFE-7 (Sozial) ─── unabhängig, jederzeit ziehbar
LIFE-8 (Schulter-Rehab) ─── unabhängig, parallel ziehbar
LIFE-11 (Liebesbeziehung) ─── unabhängig, jederzeit ziehbar
        │
LIFE-2 (Morgen-Anker)
        ├──► LIFE-9 (Hüft-Mobilität)
        └──► LIFE-10 (Positives Selbstgespräch)
```

---

### Merksatz
**Ziehe nie das zweite Ticket, bevor das erste in Prod läuft.** Das WIP-Limit
ist die einzige Regel, die zwischen "Plan funktioniert" und "Plan zerfällt nach
3 Wochen" steht.
