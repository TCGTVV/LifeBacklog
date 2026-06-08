# AGENTS.md

Anweisungen für AI-Agents, die am LifeBacklog arbeiten.

## Schichtübergabe — IMMER ZUERST LESEN

**Session-Start:** Zuerst [HANDOVER.md](./HANDOVER.md) — den **obersten Eintrag** — vollständig lesen. Dort steht der letzte Stand, warum Entscheidungen so getroffen wurden, und was als nächstes ansteht.

**Session-Ende:** In HANDOVER.md **oben** einen neuen Eintrag anfügen (Schablone steht unten in der Datei). Direkt danach committen und pushen.

## Projekt

**LifeBacklog** — persönliches Lebens-Management nach dem Prinzip: Leben als Produkt. Jede Verbesserung ist ein Epic, jede konkrete Routine ein Ticket. Vollständige Referenz: [BACKLOG.md](./BACKLOG.md).

## Operating Model (Kurzfassung)

- **WIP-Limit = 1:** Nie zwei Tickets gleichzeitig "In Progress"
- **Anker:** Jede Routine hängt an einem bestehenden Event
- **MVP first:** Lächerlich kleine Version — erst Muster, dann skalieren
- **Definition of Done:** Routine läuft X Wochen ohne Willenskraft
- **never miss twice:** 1× aussetzen = ok. 2× in Folge = sofort fixen

## Ticket-Konventionen

- Nummerierung fortlaufend: nächstes freies `LIFE-N`
- Pflichtfelder: Epic, Anker, MVP / DoD, Depends on
- Priorität: `P0` (Keystone/blockiert alles) → `P3` (nice to have)
- Neue Tickets immer in BACKLOG.md **und** setup-issues.sh eintragen
- Nach Änderungen: committen und pushen

## Prüfen vor Abschluss

- BACKLOG.md und setup-issues.sh sind konsistent (gleiche Tickets, gleiche Felder)
- Abhängigkeits-Graph in BACKLOG.md aktualisiert
- Neuer HANDOVER-Eintrag angelegt
- Commit und Push erfolgt
