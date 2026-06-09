#!/usr/bin/env bash
#
# setup-issues.sh — legt Labels + alle Backlog-Tickets als GitHub Issues an.
# Voraussetzung: GitHub CLI (gh) installiert und authentifiziert (gh auth login).
# Ausführen innerhalb des geklonten Repos: ./setup-issues.sh
#
set -euo pipefail

# --- Sanity checks -----------------------------------------------------------
command -v gh >/dev/null 2>&1 || { echo "❌ 'gh' nicht gefunden. Installiere die GitHub CLI."; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "❌ Nicht authentifiziert. Führe 'gh auth login' aus."; exit 1; }

echo "🏷️  Labels anlegen…"
mklabel() { gh label create "$1" --color "$2" --description "$3" --force >/dev/null; }

mklabel "P0"               "B60205" "höchste Priorität"
mklabel "P1"               "D93F0B" "hoch"
mklabel "P2"               "FBCA04" "mittel"
mklabel "P3"               "C2E0C6" "niedrig"
mklabel "keystone"         "5319E7" "blockt andere Tickets"
mklabel "infra"            "0E8A16" "Prozess/Setup, kein Willenskraft-Habit"
mklabel "epic:recovery"    "1D76DB" "Schlaf / Erholung"
mklabel "epic:bewegung"    "1D76DB" "Sport / Bewegung"
mklabel "epic:ernaehrung"  "1D76DB" "Ernährung"
mklabel "epic:input"       "1D76DB" "Lesen / Input"
mklabel "epic:karriere"    "1D76DB" "Skill / Karriere"
mklabel "epic:beziehungen" "1D76DB" "Beziehungen"
mklabel "epic:gesundheit"  "1D76DB" "Gesundheit / Rehab"
mklabel "epic:mindset"     "1D76DB" "Mental / Mindset"
mklabel "epic:partnerschaft" "1D76DB" "Liebesbeziehung"

echo "🎫 Issues anlegen…"
mkissue() {
  # $1=title  $2=label-args (space separated, jeweils mit --label)  $3=body
  local title="$1"; local labels="$2"; local body="$3"
  # shellcheck disable=SC2086
  gh issue create --title "$title" $labels --body "$body" >/dev/null
  echo "   ✔ $title"
}

mkissue "LIFE-0 · Wöchentlicher Review aufsetzen" \
  "--label infra --label P0" \
'**Epic:** System / Infra · einmaliges Setup, zählt nicht gegen WIP.

- **Anker:** Sonntag, mit dem Abendkaffee
- **DoD:** 10-Min-Review steht als wiederkehrender Kalendertermin
- **Inhalt:** aktuelles Ticket prüfen, `never miss twice` checken, ggf. nächstes Ticket ziehen

### Akzeptanzkriterien
- [ ] wiederkehrender Termin steht
- [ ] erster Review durchgeführt'

mkissue "LIFE-00 · Tracking aufsetzen" \
  "--label infra --label P1" \
'**Epic:** System / Infra · "Observability". Sichtbar = ehrlich.

- **DoD:** simpler Tracker existiert (eigener Habit-Tracker / Garmin / Kalender / Blatt Papier)

### Akzeptanzkriterien
- [ ] Tracking-Methode gewählt
- [ ] erstes Ticket wird getrackt'

mkissue "LIFE-1 · Schlaffenster fixieren" \
  "--label P0 --label keystone --label epic:recovery" \
'**Epic:** Recovery / Schlaf · **KEYSTONE** — blockt fast alles andere. Schlaf entscheidet über Recovery, Laune und ob der Morgensport stattfindet.

- **Anker:** 22:30 — Handy verlässt das Schlafzimmer
- **MVP / DoD:** Licht aus bis 23:00 an 5/7 Tagen, 3 Wochen in Folge
- **Increment:** feste Aufstehzeit (auch am WE) → 7,5–8 h Schlaffenster
- **Depends on:** —
- **Blocks:** LIFE-2, LIFE-4

### Akzeptanzkriterien
- [ ] Anker steht
- [ ] 3 Wochen 5/7 erreicht
- [ ] `never miss twice` nie verletzt'

mkissue "LIFE-2 · Morgen-Bewegungs-Anker" \
  "--label P1 --label epic:bewegung" \
'**Epic:** Bewegung · die tägliche Identitäts-Routine ("ich bewege mich morgens"), **getrennt** vom echten Training.

- **Anker:** direkt nach dem Aufstehen, vor dem Kaffee
- **MVP / DoD:** 5–10 Min Bewegung (Mobility / kurzer Spaziergang / Plank), 6×/Woche, 3 Wochen
- **Depends on:** LIFE-1

### Akzeptanzkriterien
- [ ] Anker steht
- [ ] 3 Wochen 6×/Woche erreicht'

mkissue "LIFE-3 · Trainingsplan mit echten Ruhetagen" \
  "--label P2 --label epic:bewegung" \
'**Epic:** Bewegung · ersetzt das naive "Sport an 6 Tagen". Schwimmen/Laufen/Rad periodisiert, mit geplanter Recovery.

- **Anker:** feste Slots im Wochenkalender
- **MVP / DoD:** 3 geplante Einheiten/Woche + min. 1 echter Ruhetag, 4 Wochen
- **Increment:** gezielte Zone-2- / VO2-Max-Blöcke (Garmin)
- **Depends on:** LIFE-1, LIFE-2

### Akzeptanzkriterien
- [ ] Wochenplan steht
- [ ] 4 Wochen mit Ruhetag eingehalten'

mkissue "LIFE-4 · Ernährungs-Baseline" \
  "--label P1 --label epic:ernaehrung" \
'**Epic:** Ernährung · eine kleine ankerbare Gewohnheit statt "iss gesund".

- **Anker:** beim ersten Essen des Tages
- **MVP / DoD:** Protein + Wasser zu jeder Hauptmahlzeit, 6 Tage, 3 Wochen
- **Increment:** 1× Meal-Prep pro Woche (So)
- **Depends on:** LIFE-1

### Akzeptanzkriterien
- [ ] Anker steht
- [ ] 3 Wochen erreicht'

mkissue "LIFE-5 · Lese-Routine" \
  "--label P2 --label epic:input" \
'**Epic:** Input / Lernen

- **Anker:** im Bett, koppelt an LIFE-1
- **MVP / DoD:** 10 Seiten / 15 Min, 6×/Woche, 3 Wochen
- **Increment:** Buch-Backlog führen; Wechsel Fiction ↔ Fach
- **Depends on:** LIFE-1

### Akzeptanzkriterien
- [ ] Anker steht
- [ ] 3 Wochen erreicht'

mkissue "LIFE-6 · Karriere-Lernblock" \
  "--label P3 --label epic:karriere" \
'**Epic:** Skill / Karriere · gerichtetes Lernen (S/4HANA-Architekt, C_TADM_23).

- **Anker:** fester 45-Min-Block, gleiche Tageszeit
- **MVP / DoD:** 3 Deep-Work-Blöcke/Woche (Handy weg), 4 Wochen
- **Increment:** Prüfungs-Roadmap mit Meilensteinen
- **Depends on:** LIFE-1, LIFE-0

### Akzeptanzkriterien
- [ ] Block-Zeit steht
- [ ] 4 Wochen 3×/Woche erreicht'

mkissue "LIFE-7 · Sozial-Rhythmus" \
  "--label P2 --label epic:beziehungen" \
'**Epic:** Beziehungen · läuft als Cadence, nicht als Daily.

- **Anker:** Kalendereintrag, nicht Stimmung
- **MVP / DoD:** 1 Nachricht/Anruf pro Woche + 1 Treffen pro Monat, 6 Wochen
- **Increment:** feste wiederkehrende Termine (Spieleabend / Lauftreff)
- **Depends on:** —

### Akzeptanzkriterien
- [ ] Cadence im Kalender
- [ ] 6 Wochen eingehalten'

mkissue "LIFE-8 · Schulter-Rehab" \
  "--label P1 --label epic:gesundheit" \
'**Epic:** Recovery / Gesundheit · unbehandelte Schulterprobleme blockieren langfristig das Training und erhöhen das Verletzungsrisiko.

- **Anker:** direkt nach LIFE-2 (Morgen-Anker) oder als eigenständiger Abend-Slot
- **MVP / DoD:** Arzt/Physio aufsuchen + verschriebene Übungen 5×/Woche, 4 Wochen am Stück
- **Increment:** eigenständige Routine ohne Physio-Erinnerung weiterführen; alle 4 Wochen reassessen
- **Depends on:** —

### Akzeptanzkriterien
- [ ] Arzt/Physio-Termin wahrgenommen
- [ ] Übungsplan steht
- [ ] 4 Wochen 5×/Woche eingehalten'

mkissue "LIFE-9 · Hüft-Mobilität" \
  "--label P2 --label epic:bewegung" \
'**Epic:** Recovery / Bewegung · eingeschränkte Hüftmobilität limitiert Lauf- und Schwimmtechnik und ist ein häufiger Rücken-Trigger.

- **Anker:** direkt nach dem Aufstehen, als Teil von LIFE-2 (Morgen-Anker)
- **MVP / DoD:** 5–10 Min Hüft-Dehn- und Mobilitätsroutine (90/90, Weltrekord-Stretch, Hip Circles), 6×/Woche, 3 Wochen
- **Increment:** Routine auf 15 Min ausbauen; gezielt auf Beweglichkeits-Defizite aus LIFE-3 eingehen
- **Depends on:** LIFE-2

### Akzeptanzkriterien
- [ ] Routine definiert (feste Übungsauswahl)
- [ ] Anker an LIFE-2 gekoppelt
- [ ] 3 Wochen 6×/Woche erreicht'

mkissue "LIFE-10 · Positives Selbstgespräch" \
  "--label P2 --label epic:mindset" \
'**Epic:** Mental / Mindset · wie du innerlich mit dir redest, färbt alles andere.

- **Anker:** direkt nach dem Aufstehen, als Teil von LIFE-2 (Morgen-Anker)
- **MVP / DoD:** 1 bewusster positiver Gedanke / Satz an sich selbst pro Tag, 6×/Woche, 3 Wochen
- **Increment:** Abend-Reflexion ergänzen ("Was lief heute gut?") → koppelt an LIFE-5
- **Depends on:** LIFE-1, LIFE-2

### Akzeptanzkriterien
- [ ] Anker an LIFE-2 gekoppelt
- [ ] 3 Wochen 6×/Woche erreicht'

mkissue "LIFE-11 · Liebesbeziehung pflegen" \
  "--label P1 --label epic:partnerschaft" \
'**Epic:** Beziehungen · romantische Beziehungen brauchen aktive Pflege — Cadence statt Stimmung.

- **Anker:** wöchentlicher fester Slot + tägliche kleine Geste (Nachricht, Lob, Dankbarkeit)
- **MVP / DoD:** 1 Quality-Time-Slot/Woche + täglich 1 kleine Geste, 4 Wochen
- **Increment:** gemeinsame Rituale etablieren (Abendessen ohne Handy, monatliches Date)
- **Depends on:** —

### Akzeptanzkriterien
- [ ] Wöchentlicher Slot im Kalender
- [ ] 4 Wochen eingehalten'

echo "✅ Fertig. Issues siehst du mit: gh issue list"
