---
name: html-ui-ux-reviewer
description: Use when reviewing or improving HTML interfaces, PWAs, dashboards, forms, educational pages, or single-file tools for usability, navigation, hierarchy, states, and daily-use ergonomics.
---

# HTML UI UX Reviewer

## Purpose

Use this skill to turn a working HTML screen into a clearer, faster, more humane interface. Prioritize the user's real workflow over decoration.

## Review Order

1. Identify the primary job of the screen in one sentence.
2. Map the shortest successful path for the user.
3. Check whether the first viewport makes the job obvious.
4. Review navigation, controls, hierarchy, feedback states, and mobile ergonomics.
5. Recommend changes in priority order: blocking usability issues, high-impact clarity, then polish.

## Heuristics

- One screen should have one dominant next action unless it is a dashboard.
- Important actions must be visible where the decision happens.
- Repeated daily tasks should need fewer clicks than rare configuration tasks.
- Inputs need labels, helpful defaults, validation, and recovery paths.
- Every async action needs a state: idle, loading, success, empty, error.
- Destructive actions need confirmation or a reversible path.
- Data-dense views should support scanning before reading.
- Mobile layouts need reachable controls, touch targets of at least 44px, and no horizontal scrolling unless the content is a deliberate table.

## Common HTML Improvements

- Replace long explanatory text with concise labels, headings, helper text, and progressive disclosure.
- Group controls by decision, not by implementation detail.
- Move filters near the data they affect.
- Use sticky or persistent primary actions only when the action is frequent and context-safe.
- Preserve user input after validation errors.
- Add empty states that say what is missing and what to do next.
- Keep page sections unframed; use cards for repeated items, records, or tool panels.

## Output Format

When reviewing, respond with:

1. **Primary UX risk**: the biggest thing limiting use.
2. **Recommended changes**: ordered by impact.
3. **Concrete edits**: specific layout, copy, state, or interaction changes.
4. **Verification checklist**: what to test on desktop and mobile.

When implementing, make focused edits and verify that text fits, states are coherent, and the main workflow is shorter or clearer.

## Avoid

- Adding onboarding text instead of making the interface self-evident.
- Creating a landing page when the user asked for a usable tool.
- Hiding common actions inside menus.
- Using visual polish to compensate for unclear information architecture.
