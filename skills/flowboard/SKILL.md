---
name: flowboard
description: Build a fully interactive drag-and-drop Kanban board as a single self-contained HTML file. Triggers on: create a kanban board, build a project tracker, make a website build board, track my website, kanban, project board, task board, build tracker, website progress tracker, create a board, trello alternative, free project management. No login or server required - auto-saves in browser localStorage.
---

# FlowBoard Skill

Generate fully functional self-contained Kanban boards as single HTML files.
No server, no login — auto-saves everything in the user's browser.

## Step 1 — Gather requirements

Ask the user in one message:
1. **Project name** — what is this board for?
2. **Columns** — default if not specified: Backlog, Planning, Design, In Dev, Review, Live
3. **Initial cards** — pages or tasks to pre-load
4. **Team members** — initials for assignees (optional)

## Step 2 — Generate the board

Read `assets/index.html` from this skill directory as the base template.

Customise:
- `<input id="projectName">` default value → project name
- `DEFAULT_COLUMNS` array → user's columns with colours (see guide below)
- `DEFAULT_CARDS` array → cards with: `id, col, title, type, priority, assignee, due, progress, notes`
- `<title>` tag → project name

## Step 3 — Deliver

Save as `[project-name]-board.html` and present with `present_files`.

Tell the user:
- Open in any browser — works immediately, no install
- All data auto-saves in the browser
- Drag cards between columns; double-click any card to edit
- **Export** button backs up everything as JSON

## Column colour guide

| Column       | Colour    |
|--------------|-----------|
| Backlog      | `#9ca3af` |
| Planning     | `#6366f1` |
| Design       | `#8b5cf6` |
| In Dev       | `#F06A35` |
| Review / QA  | `#f59e0b` |
| Live         | `#10b981` |
| On Hold      | `#ef4444` |
| Testing      | `#14b8a6` |

## Field values

- **priority**: `high` · `med` · `low`
- **type**: `page` · `design` · `dev` · `content` · `seo` · `feature`
- **progress**: `0`–`100`

## Deploy options (offer if user wants to share publicly)

**Cloudflare Workers** (wrangler.json already configured in repo root):
```bash
npm install -g wrangler
wrangler login
wrangler deploy
```

**Netlify** (drag & drop, free):
Go to [netlify.com/drop](https://netlify.com/drop) and drag the HTML file.

**GitHub Pages** (free):
Push to a repo → Settings → Pages → Deploy from branch → main.
