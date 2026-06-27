---
name: data-storytelling-dashboard
description: Use when designing or improving dashboards, reports, KPI pages, monitoring tools, or spreadsheet-based analyses that need clearer interpretation, comparison, decision support, and narrative from data.
---

# Data Storytelling Dashboard

## Purpose

Use this skill to make dashboards answer questions, not merely display charts. A good dashboard helps the user notice change, compare meaningfully, and decide what to do.

## Start With Questions

Identify:

- What decision or monitoring habit this dashboard supports.
- Which metric is primary, secondary, and diagnostic.
- What period, baseline, target, or comparison gives each number meaning.
- What action the user should take when a value is good, bad, missing, or unusual.

## Dashboard Structure

1. Lead with the current state: headline KPI, status, and short interpretation.
2. Show trend next: time series, rolling average, or recent change.
3. Show drivers: categories, rankings, distribution, or segmentation.
4. Show detail last: table, records, notes, or export.
5. Keep filters visible and show active filter state.

## Analysis Patterns

- Use deltas with context: absolute change and percent change.
- Compare current period against previous period, target, or historical average.
- Use rolling averages for noisy recurring measurements.
- Flag outliers, missing data, and low sample sizes.
- Separate leading indicators from lagging results.
- Prefer small multiples or ranked bars over cluttered multi-series charts.

## Narrative Layer

Add concise insight text when it helps:

- "Above target for 3 consecutive weeks."
- "Largest increase came from category X."
- "Data is incomplete for the current period."
- "Variation is normal compared with the last 12 observations."

Do not invent causality. Use cautious language when the data only shows association.

## Output Format

When advising, provide:

1. **Dashboard question**: what the page should answer.
2. **Metric hierarchy**: primary, secondary, diagnostic.
3. **Recommended visuals**: chart/table choices and why.
4. **Insight text**: examples of useful interpretation.
5. **Data cautions**: missingness, sample size, outliers, bias.

## Avoid

- Starting with a chart library before defining the question.
- Showing every available metric at the same visual weight.
- Pie charts for many categories.
- Percentages without denominators.
- Trend claims from too few observations.
