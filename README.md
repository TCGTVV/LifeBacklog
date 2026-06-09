# 🧩 life-backlog

Mein Leben als Produkt: jede Verbesserung ist ein **Epic**, jede konkrete Routine
ist ein **Issue**. Werkzeug zur Umsetzung = die **Routine**. Ich implementiere sie,
bis sie ohne Willenskraft läuft, shippe sie nach "Maintenance", dann ziehe ich das
nächste Ticket.

Vollständige Referenz: [`BACKLOG.md`](./BACKLOG.md)

## ⚙️ Operating Model

| Regel | Bedeutung |
|---|---|
| **WIP-Limit = 1** | Max. **eine** neue Routine gleichzeitig "In Progress". Wichtigste Regel — verhindert Überlast. |
| **Anker** | Jede Routine hängt an einem bestehenden Event ("nachdem ich X tue, mache ich Y"). |
| **MVP** | Lächerlich kleine Version, schaffbar an einem miesen Tag. |
| **Definition of Done** | Läuft X Wochen ohne Willenskraft → Ticket nach "Maintenance". |
| **never miss twice** | 1× aussetzen = ok. 2× in Folge = Bug, sofort fixen. |
| **Sprint Review** | 1×/Woche 10 Min Retro. |

## 🔁 Abbildung auf GitHub

- **Issues** = Tickets (`LIFE-1`, `LIFE-2`, …)
- **Labels** = Priorität (`P0`–`P3`) + Typ (`keystone`, `infra`) + `epic:*`
- **GitHub Project (Board)** = Spalten `Backlog → In Progress → Maintenance`
- **WIP-Limit** = Project-Setting auf der Spalte "In Progress" auf **1** setzen

## 🚀 Setup

```bash
# 1. Repo anlegen + pushen (siehe unten)
# 2. GitHub CLI authentifizieren
gh auth login

# 3. Labels + alle Issues automatisch anlegen
./setup-issues.sh
```

Danach in der GitHub-Oberfläche: **Projects → New project → Board**, Spalten
`Backlog / In Progress / Maintenance` anlegen, Issues reinziehen, und auf
"In Progress" das WIP-Limit auf **1** setzen.

## 🗺️ Abhängigkeits-Graph

→ [`BACKLOG.md` — Abhängigkeits-Graph](./BACKLOG.md#abhängigkeits-graph-reihenfolge)

## 🗓️ Workflow

1. **Sonntag-Review** (`LIFE-0`): aktuelles Ticket prüfen, `never miss twice` checken.
2. Läuft das Ticket in Prod? → nächstes aus dem Backlog nach "In Progress" ziehen.
3. Start-Ticket: **`LIFE-1` (Schlaf)** — der Keystone, an dem fast alles hängt.
