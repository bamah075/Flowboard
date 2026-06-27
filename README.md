# FlowBoard

> Free drag-and-drop Kanban board for website builds. No login, no server, auto-saves in browser.

**Live:** [flowboard.vel-ai-au.com](https://flowboard.vel-ai-au.com) | **Source:** [github.com/bamah075/Flowboard](https://github.com/bamah075/Flowboard)

---

## Install as a Claude Plugin

```
/plugin marketplace add bamah075/Flowboard
```

Then ask Claude: *"Create a kanban board for my website build"*

---

## Repo structure

```
.claude-plugin/PLUGIN.md       Claude plugin manifest
skills/flowboard/SKILL.md      Skill definition + triggers
skills/flowboard/assets/       Board template used by the skill
dist/                          Production files for wrangler deploy
index.html                     Kanban board (standalone)
flowboard-dashboard.html       Multi-project dashboard
wrangler.json                  Cloudflare Workers config
```

---

## Quick start

**Option A — Use the live version**
Open [flowboard.vel-ai-au.com](https://flowboard.vel-ai-au.com) — no setup needed.

**Option B — Run locally**
Download `index.html` and open in any browser.

**Option C — Deploy your own instance**
```bash
npm install -g wrangler
wrangler login
wrangler deploy
```

---

## Features

- **Drag & Drop** — Move cards between columns with a single drag
- **Fully Editable** — Double-click any card to edit everything
- **Auto-Saves** — localStorage, no server needed
- **6 Templates** — Website Build, Campaign, Product Launch, Client Project, Content Calendar, Blank
- **Export / Import** — JSON backup and restore
- **No Login** — Open the link and you're instantly inside

---

Built by [Vel AI Consulting](https://vel-ai-au.com) — AI automation for small business.
Share freely. If it helps you ship something, tag us.
