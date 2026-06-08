# HANDOVER.md — Schichtübergabe

> **Konvention:**
> 1. **Session-Start:** Obersten Eintrag vollständig lesen, bevor du BACKLOG.md oder sonst etwas anfasst.
> 2. **Session-Ende:** Neuen Eintrag **oben** anfügen (direkt unter dieser Anleitung). Schablone steht unten.
> 3. Alte Einträge nicht löschen — sie sind der narrative Verlauf. Ab ~20 Einträgen älteste nach `HANDOVER-archive.md` auslagern.
> 4. Sprache: Deutsch.

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
