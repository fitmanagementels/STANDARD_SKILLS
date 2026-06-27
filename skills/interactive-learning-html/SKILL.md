---
name: interactive-learning-html
description: Use when creating or improving HTML educational content, interactive lessons, quizzes, flashcards, simulations, guided activities, self-check exercises, or didactic pages for learners.
---

# Interactive Learning HTML

## Purpose

Use this skill to make didactic HTML content active, memorable, and usable by the learner. Interaction should teach, not distract.

## Learning Design

Start by defining:

- Audience and prior knowledge.
- Learning objective in observable terms.
- Core concept, misconception, or skill being practiced.
- Evidence of learning: answer, choice, explanation, classification, calculation, reflection, or completed task.

## Interaction Patterns

- Quiz: immediate feedback with explanation.
- Flashcards: recall first, reveal second, track confidence.
- Step-by-step activity: one decision at a time.
- Simulation: manipulate variables and observe effects.
- Sorting/classification: compare examples and non-examples.
- Scenario: choose an action and see consequence.
- Worked example: reveal reasoning progressively.

## Page Structure

1. Brief context.
2. Active task.
3. Feedback or consequence.
4. Reflection or explanation.
5. Next step or retry.

Keep instructions short and place them near the interaction.

## Feedback Rules

- Explain why an answer is right or wrong.
- Treat wrong answers as diagnostic information.
- Offer retry without shame.
- Show progress when there are multiple steps.
- Avoid only saying "correct" or "incorrect".
- Use examples when explaining abstract ideas.

## Technical Considerations

- Store progress locally when helpful.
- Make interactive controls keyboard accessible.
- Keep state visible: unanswered, selected, checked, correct, incorrect, complete.
- Avoid interactions that depend on precise dragging on mobile unless there is a fallback.
- Ensure content still makes sense if animations are disabled.

## Output Format

When designing, provide:

1. **Learning objective**: what the learner should be able to do.
2. **Interaction model**: quiz, simulation, guided activity, or other.
3. **Feedback plan**: responses for success, error, retry, and completion.
4. **State model**: progress, scoring, persistence, reset.
5. **Accessibility checks**: keyboard, labels, contrast, mobile.

## Avoid

- Turning text into decorative cards without adding learning value.
- Asking recall questions for material that needs practice or judgment.
- Long explanations before the learner tries something.
- Scorekeeping that obscures the actual learning goal.
