# HANDOVER.md — Schichtübergabe

> **Konvention:**
> 1. **Session-Start:** Obersten Eintrag vollständig lesen, bevor du BACKLOG.md oder sonst etwas anfasst.
> 2. **Session-Ende:** Neuen Eintrag **oben** anfügen (direkt unter dieser Anleitung). Schablone steht unten.
> 3. Alte Einträge nicht löschen — sie sind der narrative Verlauf. Ab ~20 Einträgen älteste nach `HANDOVER-archive.md` auslagern.
> 4. Sprache: Deutsch.

---

## 2026-07-10 — LIFE-12 (Gehirnjogging) neu ins Backlog aufgenommen

### Was passierte

- User wollte ein neues Ticket für Gehirnjogging/Demenzprävention, inkl. Recherche zum besten Training und zu Apps/Ressourcen.
- Recherchiert: Lancet-Commission-2024-Report (14 modifizierbare Demenz-Risikofaktoren, ~45% potenziell vermeidbar), ACTIVE-Studie (RCT, n≈2.800, 20 Jahre Follow-up) — Speed-of-Processing-Training ("Double Decision" in BrainHQ) senkt mit Booster-Sessions das Demenzrisiko um 25%, während Gedächtnis-/Schlussfolgerungstraining aus derselben Studie keinen Effekt zeigten. Außerdem App-Landschaft verglichen (BrainHQ vs. Lumosity [schwache Evidenz, FTC-Bußgeld 2016] vs. Elevate) sowie Nicht-App-Alternativen mit eigenständiger Evidenz (Sprache lernen, Instrument, Tanzen).
- **LIFE-12 · Gehirnjogging (Kognitions-Training)** `P2` angelegt: Epic „Kognition / Prävention" (neues Label `epic:kognition`), Anker Mittagspause vor dem Essen, MVP BrainHQ/Double Decision 10 Min 4×/Woche 3 Wochen, 3-Phasen-Lernplan (MVP → Studien-Dosis hochskalieren → Booster-Erhalt), Depends on: LIFE-1. Eingetragen in BACKLOG.md, setup-issues.sh und als GitHub Issue [#14](https://github.com/TCGTVV/LifeBacklog/issues/14) (Label `epic:kognition` neu angelegt). Abhängigkeitsgraph aktualisiert (Zweig unter LIFE-1, wie LIFE-4/5/6).
- Anker-Zeitpunkt vorab mit User abgestimmt (Mittagspause bevorzugt gegenüber "nach LIFE-2" oder "vor LIFE-5").
- Board-Item konnte nicht automatisch in die GitHub-Project-Spalte "Backlog" gezogen werden — dem `gh`-Token fehlt der Scope `read:project`/`project`. **User muss Issue #14 manuell ins Board ziehen** (`gh auth refresh -s project` würde den Scope nachrüsten, dann ginge es auch automatisiert).

### Aktueller Kontext

- **In Progress bleibt unverändert:** LIFE-2 (Morgen-Bewegungs-Anker) — LIFE-12 wurde nur ins Backlog aufgenommen, nicht gezogen (WIP-Limit=1 respektiert).
- User ist an strukturierter Prävention über den Lancet-Rahmen interessiert — die meisten der 14 Risikofaktoren sind über bestehende Tickets abgedeckt (Schlaf/LIFE-1, Bewegung/LIFE-3, Sozial/LIFE-7+11); LIFE-12 schließt gezielt die kognitive Lücke.

### Gegencheck

- **Durchgeführt: ja**, durch zweiten Agent (general-purpose, unabhängig vom implementierenden Agent).
- **Befunde:**
  - *Kritisch:* Anker "direkt nach dem Essen" kollidiert physiologisch mit einer Reaktions-/Aufmerksamkeitsübung (postprandiale Müdigkeit) → **behoben**: Anker auf "vor dem Essen" geändert (BACKLOG.md, setup-issues.sh, GitHub Issue).
  - *Kritisch:* MVP/DoD nannte BrainHQ-Account-Einrichtung (Abo/Bezahlschranke) nicht explizit als Schritt, obwohl das eine reale Startbarriere ist → **behoben**: expliziter "Tag 1: Account/Trial einrichten"-Schritt ergänzt, als eigenes Akzeptanzkriterium aufgenommen.
  - *Sollte angepasst werden:* MVP-Dauer "10–15 Min" war die anspruchsvollste MVP-Einheit im Vergleich zu anderen Tickets (LIFE-2/9: 5–10 Min) → **behoben**: auf fixe 10 Min reduziert.
  - *Sollte angepasst werden:* Ticket ist deutlich ausführlicher als der sonstige Stil (Lernplan + 6 Ressourcen) → **bewusst nicht geändert**, da User explizit einen Lernplan und eine App-/Ressourcen-Recherche angefordert hatte (vergleichbar mit dem ausführlichen Routine-Text bei LIFE-2).
  - *Nice-to-have:* Priorität P2 vs. stärkere Einzel-Evidenz (RCT, 25%) als andere P2-Tickets → als bewusste Entscheidung bewertet (Fernziel ohne akuten Leidensdruck), nicht geändert.
- Abhängigkeitsgraph und Formatkonsistenz BACKLOG.md ↔ setup-issues.sh wurden vom Zweitagenten als korrekt bestätigt.

### Nächster Schritt

Issue #14 manuell ins GitHub-Board (Spalte "Backlog") ziehen. LIFE-2 weiterlaufen lassen bis DoD erreicht (3 Wochen 6×/Woche); LIFE-12 wird erst nach WIP-Regel gezogen, wenn ein Platz frei wird — nicht vorher starten, auch wenn die Recherche schon vorliegt.

---

## 2026-07-07 — LIFE-1 in Prod, LIFE-2 gezogen

### Was passierte

- LIFE-1 (Schlaffenster) war bereits am 2026-07-02 vom User direkt auf GitHub geschlossen worden (DoD erreicht: 5/7 Tage Licht aus bis 23:00, 3 Wochen in Folge) — Docs (BACKLOG.md, HANDOVER.md) und Board-Spalte hinkten hinterher.
- Nachgezogen: Board-Item LIFE-1 → Spalte "Maintenance", BACKLOG.md/README.md entsprechend aktualisiert (Ticket nach "Maintenance/Prod" verschoben, Abhängigkeitsgraph angepasst).
- Nächstes Ticket laut WIP-Limit=1 mit User abgestimmt: **LIFE-2 · Morgen-Bewegungs-Anker** gezogen (statt LIFE-4/LIFE-8/LIFE-11, die ebenfalls P1 und teils unabhängig gewesen wären). Board-Item LIFE-2 → Spalte "In Progress", BACKLOG.md aktualisiert.
- User möchte konkret eine Ganzkörper-Stretch/Mobility-Routine (~10 Min) als Anleitung. Recherchiert (Ready State / Kelly Starrett, BuiltLean — reißerische "Studien"-Zahlen einer SEO-Seite verworfen) und als 9-Stationen-Ablauf (~1 Min je Station, dynamisch → tiefer) ins GitHub-Ticket #4 sowie BACKLOG.md eingetragen, je Station um einen kurzen Ausführungssatz ergänzt.
- Repo gehärtet: Branch-Protection auf `main` (PR-Pflicht, kein Force-Push, kein Löschen). `enforce_admins: false`, damit der User als Repo-Admin weiter direkt pushen/mergen kann. Da er einziger Collaborator ist, können fremde Nutzer ohnehin nur forken + PR stellen.

### Aktueller Kontext

- **In Progress:** LIFE-2 (Morgen-Bewegungs-Anker) — Anker: direkt nach dem Aufstehen, vor dem Kaffee. MVP: 5–10 Min Bewegung, 6×/Woche, 3 Wochen.
- LIFE-1 läuft jetzt autonom in Prod; Increment (feste Aufstehzeit am WE, Schlaffenster 7,5–8h) steht noch offen, aber zählt nicht mehr gegen WIP.
- Lücke bemerkt: zwischen 2026-06-09 und 2026-07-02 gab es keine Session/HANDOVER-Einträge — der User hat LIFE-1 eigenständig durchgezogen und das Ticket ohne Agent-Hilfe geschlossen. Gut möglich, dass sowas öfter passiert; beim nächsten Session-Start lohnt sich ein kurzer Soll/Ist-Abgleich zwischen HANDOVER.md und dem tatsächlichen GitHub-Issue-Status, falls längere Zeit vergangen ist.

### Gegencheck

- Durchgeführt: nein — reine Status-Nachführung (Ticket war vom User bereits inhaltlich entschieden), keine neue Priorisierung oder Struktur geändert.

### Nächster Schritt

LIFE-2 mit der neuen Routine starten: 5–10 Min Ganzkörper-Stretch/Mobility direkt nach dem Aufstehen, 6×/Woche, 3 Wochen (Ablauf siehe Ticket #4 / BACKLOG.md). Tracking in Streaks ergänzen (aktuell trackt Streaks nur LIFE-1/Schlaf-Nachfolger — ggf. zweites Habit anlegen). Nächster Sonntags-Review prüft ersten Lauf.

---

## 2026-06-09 — LIFE-00 shipped: Streaks eingerichtet, Board live

### Was passierte

- GitHub Project Board angelegt (https://github.com/users/TCGTVV/projects/1): Spalten Backlog / In Progress / Maintenance, alle Issues eingetragen und korrekt zugeordnet.
- LIFE-0 in Apple Kalender als wiederkehrender Sonntags-Termin hinterlegt.
- LIFE-00: Streaks (iOS) als Tracker eingerichtet — LIFE-1 als einziges Habit, Ziel 5 von 7, Reminder 22:15. Issue geschlossen, nach Maintenance verschoben.

### Aktueller Kontext

- **In Progress:** LIFE-1 (Schlaffenster) — Anker 22:30, Streaks trackt ab heute.
- LIFE-0 (Sonntags-Review) läuft parallel als Infra, noch nicht formal geschlossen (erster Review steht noch aus).
- Schulter (LIFE-8) ist weiterhin offen und unabhängig — kein Physio-Termin bisher erwähnt.

### Gegencheck

- Durchgeführt: nein — Änderungen trivial (Issue schließen, BACKLOG.md Eintrag).

### Nächster Schritt

LIFE-1 läuft — heute Abend 22:30 ersten Anker setzen. LIFE-0 formal schließen sobald erster Sonntags-Review stattgefunden hat. LIFE-8 (Schulter): erstmal selbst mit eigenen Physio-Übungen beobachten — Arzt nur wenn keine Verbesserung.

---

## 2026-06-09 — LIFE-10 und LIFE-11 hinzugefügt

### Was passierte

- LIFE-10 (Positives Selbstgespräch, P2) und LIFE-11 (Liebesbeziehung pflegen, P1) in BACKLOG.md, setup-issues.sh und GitHub angelegt, ins Board eingetragen.
- Freundschaften pflegen ist bereits durch LIFE-7 abgedeckt — kein separates Ticket nötig.

### Aktueller Kontext

- LIFE-1 läuft seit heute Abend (erster Anker 22:30).
- LIFE-11 wurde als P1 eingestuft — Liebesbeziehungen brauchen aktive Pflege, unabhängig vom Rest des Systems.

### Gegencheck

- Durchgeführt: nein — neue Tickets, inhaltlich straightforward.

### Nächster Schritt

LIFE-1 durchhalten. Nächster Review: Sonntag.

---

## 2026-06-08 — Setup: Serena, LIFE-8, LIFE-9, Agent-Workflow

### Was passierte

- Serena als MCP-Server für Claude Code registriert (`serena setup claude-code`). Wird beim nächsten Claude-Code-Neustart aktiv.
- LIFE-8 (Schulter-Rehab, P1) und LIFE-9 (Hüft-Mobilität, P2) in BACKLOG.md und setup-issues.sh ergänzt.
- setup-issues.sh ausgeführt — alle 11 GitHub Issues (LIFE-0 bis LIFE-9) sind auf GitHub angelegt.
- AGENTS.md und HANDOVER.md (dieser Eintrag) aufgesetzt.

### Aktueller Kontext

- **In Progress:** LIFE-1 (Schlaffenster fixieren) — der Keystone, noch nicht in Prod.
- Schulterprobleme sind ein aktives Thema; LIFE-8 wurde bewusst als unabhängig markiert, damit es nicht auf LIFE-1 wartet.
- Hüft-Mobilität (LIFE-9) ist an LIFE-2 (Morgen-Anker) gekoppelt — erst relevant, wenn LIFE-1 in Prod läuft.

### Nächster Schritt

GitHub Project Board anlegen: Spalten `Backlog / In Progress / Maintenance`, Issues reinziehen, WIP-Limit auf "In Progress" auf **1** setzen (→ README.md, Abschnitt Setup).

---

## Schablone für neue Einträge

```
## YYYY-MM-DD — [Kurztitel]

### Was passierte

- ...

### Aktueller Kontext

- Was treibt den User gerade an / welche Lebensumstände haben Entscheidungen beeinflusst?
- Warum wurde Priorität X so gesetzt?

### Gegencheck

- Durchgeführt: ja / nein — wenn ja, von welchem Agent, welche Befunde, wie behandelt?

### Nächster Schritt

...
```
