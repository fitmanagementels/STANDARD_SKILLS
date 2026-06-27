---
name: html-pwa-appscript
description: Use when building simple daily-use HTML PWAs or mobile web apps backed by Google Apps Script, Google Sheets, recurring event logs, quantitative tracking, forms, offline behavior, or lightweight sync.
---

# HTML PWA Apps Script

## Purpose

Use this skill for lightweight apps that people use repeatedly: logging events, monitoring routines, checking status, collecting measurements, and syncing with Google Sheets through Apps Script.

## Architecture

- Frontend: HTML, CSS, JavaScript, manifest, optional service worker.
- Backend: Apps Script web app with `doGet` and `doPost`.
- Storage: Google Sheets as append-only log, configuration table, or simple records table.
- Sync: optimistic UI when safe, retry queue when offline, clear error recovery.

## App Shape

1. Home screen focused on the frequent action.
2. Quick entry form with defaults and minimal typing.
3. Recent activity or current status.
4. Simple analysis: counts, averages, trend, streak, target, or alert.
5. Settings only when needed.

## Apps Script API Pattern

Return JSON consistently:

```js
{ ok: true, data: result, meta: { updatedAt: new Date().toISOString() } }
{ ok: false, error: { code: "VALIDATION_ERROR", message: "Missing value" } }
```

For writes:

- Validate required fields.
- Add server timestamp.
- Use `LockService` for concurrent writes.
- Append immutable log rows when possible.
- Return the saved record or row id.

## PWA Requirements

- Include a manifest with name, short name, theme color, start URL, display mode, and icons.
- Use a service worker only when it helps: static cache, offline shell, or queued submissions.
- Make offline status visible.
- Avoid caching API responses unless freshness rules are explicit.
- Test installability and mobile viewport behavior.

## Data And Analysis

- Use stable event names and typed fields.
- Keep raw log data separate from derived statistics.
- For recurring events, support period filters and recent history.
- Show uncertainty or low sample warnings when calculations are sparse.

## Output Format

When designing, provide:

1. **Daily workflow**: the repeated action and fastest path.
2. **Sheet schema**: tabs, columns, types, and identifiers.
3. **API contract**: endpoints/actions, payloads, success and error responses.
4. **Offline/sync plan**: what works offline and how failures recover.
5. **Analysis view**: metrics and interpretation.

## Avoid

- Building a heavy SPA for a small routine tool.
- Making configuration more prominent than daily use.
- Silent sync failures.
- Client-only validation for important data.
