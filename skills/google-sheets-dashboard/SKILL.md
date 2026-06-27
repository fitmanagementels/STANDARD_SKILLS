---
name: google-sheets-dashboard
description: Use when building HTML dashboards or analytical views from Google Sheets, CSV-like tabular data, or Apps Script endpoints that need KPIs, filters, charts, tables, and spreadsheet-friendly data handling.
---

# Google Sheets Dashboard

## Purpose

Use this skill to build dashboards from spreadsheet data without overengineering. Treat the sheet as a simple data source with messy real-world constraints.

## Data Contract

Before building visuals, define:

- Sheet/tab name or endpoint.
- Header row and required columns.
- Column types: date, category, number, currency, percent, text, notes.
- Unique identifier if records are editable.
- Refresh behavior: manual, on load, interval, or cached.
- Timezone and date format.

## Implementation Pattern

1. Fetch or receive rows as structured objects.
2. Normalize headers and parse values once.
3. Validate missing required fields and invalid numbers/dates.
4. Derive metrics in a separate transformation layer.
5. Render KPI cards, filters, charts, and detail tables from derived data.
6. Keep raw rows available for drilldown and export.

## Dashboard Components

- KPI strip: total, average, count, target progress, recent change.
- Filters: date range, category, status, owner, search.
- Trend: line or bar by period.
- Breakdown: ranked bar, grouped table, or heatmap.
- Detail: sortable table with search and empty state.
- Notes: data freshness, missing fields, and applied filters.

## Google Sheets Constraints

- Expect blank cells, mixed date formats, localized decimals, duplicate labels, and manually edited text.
- Do not trust row order unless sorted explicitly.
- Show the last updated timestamp when available.
- For Apps Script, return JSON with `ok`, `data`, and `error` fields.
- Use cache where data is read often and changes slowly.

## Output Format

When designing, provide:

1. **Data assumptions**: required columns and types.
2. **Transformation plan**: parsing, grouping, filtering, metrics.
3. **View plan**: KPIs, charts, tables, filters.
4. **Edge cases**: blanks, invalid rows, empty filters, failed fetch.
5. **Verification**: sample rows and expected calculated results.

## Avoid

- Binding charts directly to raw sheet rows.
- Mixing parsing, calculation, and DOM rendering in the same function.
- Hiding data quality problems.
- Using complex backend infrastructure for a simple spreadsheet dashboard.
