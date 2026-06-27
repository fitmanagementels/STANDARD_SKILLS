---
name: visual-design-polish
description: Use when improving the visual quality of HTML, CSS, dashboards, PWAs, educational pages, or information displays through typography, spacing, color, contrast, layout rhythm, and professional polish.
---

# Visual Design Polish

## Purpose

Use this skill when the interface works but feels plain, crowded, inconsistent, or visually unconvincing. Polish should clarify meaning, not add noise.

## Design Pass

1. Decide the product mood: utilitarian, academic, clinical, playful, executive, editorial, or instructional.
2. Establish hierarchy: page title, section titles, labels, values, helper text.
3. Normalize spacing with a small scale such as 4, 8, 12, 16, 24, 32.
4. Choose a restrained palette with neutral surfaces, one primary accent, and semantic colors.
5. Tune typography for reading: line length, weight, size, and contrast.
6. Add depth only where it explains layering: panels, popovers, modals, selected states.

## Practical Rules

- Use fewer colors, but give each color a job.
- Prefer readable contrast over fashionable low-contrast text.
- Keep border radii consistent; cards and panels should usually be 8px or less unless the existing design says otherwise.
- Avoid one-note palettes dominated by a single hue family.
- Use icons for recognizable actions and text for ambiguous commands.
- Align related content to the same grid.
- Give tables enough row height, sticky headers when useful, and clear numeric alignment.
- Use whitespace to separate concepts, not decorative dividers everywhere.

## CSS Checklist

- Define tokens for colors, spacing, radius, shadow, and font sizes.
- Set stable dimensions for buttons, tiles, toolbar controls, and counters.
- Prevent text overflow in buttons, cards, and table cells.
- Use responsive constraints instead of viewport-scaled font sizes.
- Ensure focus, hover, active, disabled, selected, loading, and error states all look intentional.

## Output Format

When advising, include:

- **Visual diagnosis**: what makes the screen feel weaker.
- **Design direction**: mood, palette, typography, spacing.
- **Concrete CSS/UI changes**: specific edits.
- **Before shipping**: desktop and mobile checks.

When implementing, update the smallest reasonable set of CSS and markup needed to make the interface feel coherent.

## Avoid

- Decorative gradient blobs, floating orbs, or generic stock-like decoration.
- Oversized hero treatment for operational tools.
- Cards inside cards.
- Using color alone to communicate state.
