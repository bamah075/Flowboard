---
name: flowboard
display_name: FlowBoard
version: "1.0.0"
description: Free drag-and-drop Kanban board for website builds. No login, no server, auto-saves in browser.
author: Vel AI Consulting
homepage: https://flowboard.vel-ai-au.com
skills:
  - path: skills/flowboard
---

# FlowBoard Plugin

FlowBoard is a free, fully interactive Kanban board built for web projects.

When this plugin is active, Claude can:
- Generate a customised Kanban board as a single HTML file
- Pre-load it with your project pages, columns, and team members
- Provide deployment guidance for Cloudflare Workers, Netlify, and GitHub Pages

## Quick start

Ask Claude:
- "Create a kanban board for my website build"
- "Build a project tracker for my marketing campaign"
- "Make a board with columns: Design, Dev, Review, Live"

## Resources

- Live demo: https://flowboard.vel-ai-au.com
- Source: https://github.com/bamah075/Flowboard
- Deploy: `wrangler deploy` (wrangler.json included in repo root)
