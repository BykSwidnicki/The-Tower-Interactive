# The Tower — Interactive Narrative Portfolio

**A playable Ink adaptation of an original long-form story project, focused on persistent choice, character state, and consequence.**

This portfolio slice follows **Jodie from Filtration 123 to Medical Intake** inside a failing vertical society. The route is intentionally bounded, but the player can change how Jodie moves through it, what she learns, who trusts her, which risks follow her, and what kind of person she is becoming.

> **Core design idea:** the player is not primarily choosing where the story goes. The player is shaping **who Jodie becomes while she gets there**.

## Play the portfolio slice

**View source:** [ink/The_Tower_Jodie.ink](ink/The_Tower_Jodie.ink)  
**Direct download:** [The_Tower_Jodie.ink](https://raw.githubusercontent.com/BykSwidnicki/The-Tower-Interactive/main/ink/The_Tower_Jodie.ink)

To play:

1. Open [**Inky Web**](https://dtsykunov.github.io/inky-web/).
2. Download and import `The_Tower_Jodie.ink`.
3. Start from the beginning and play through to **Medical Intake**.

The end of the slice includes a compact **Portfolio Profile** showing how the run changed Jodie's emerging identity and how those choices are designed to carry into later stages.

At the end, the player can stop cleanly or optionally open a **Developer Diagnostics** view showing the state tracked under the hood.

## Current route

**Filtration 123 → Rigging 122/121 → Living 120 → Spine 119 → Water 118–113 → Agro 112–106 → Distribution 105–103 → Elevator Shaft → Medical Intake 45**

Different runs can bypass, reinterpret, or alter parts of that route without breaking the authored destination.

## What the playable slice demonstrates

### Persistent character state

Choices build attributes, relationships, domain knowledge, reputation, institutional visibility, belonging, independence, risk, and injury state. Later scenes react to that accumulated history rather than treating each choice as isolated.

### Delayed consequence

Some actions create effects that may surface much later. A reckless intervention in Rigging can destabilize later systems; preparation can remain unused until an actual hazard calls for it.

The goal is causality rather than punishment: **the Tower remembers what you touch**.

### Knowledge as gameplay

Learning changes more than success percentages. Knowledge can alter:

- dialogue
- what Jodie notices
- available actions
- route options
- technical diagnosis
- preparation for later hazards

### Different scene grammars

Each major location is designed around a different interaction style rather than repeating one branching template:

- **Rigging:** cooperation, curiosity, and physical risk
- **Living:** trust, concealment, and social access
- **Spine:** belonging, cover, and crossing institutional space
- **Water:** timing, system knowledge, and maintenance logic
- **Agro:** social improvisation, labor, and work pressure
- **Distribution:** bureaucracy, quotas, and a small math/ethics problem
- **Elevator Shaft:** isolation, commitment, and preparation
- **Medical:** arrival, reflection, and portfolio payoff

### Choice changes state more often than destination

Most routes still converge on Medical. What changes is the Jodie who arrives there.

A cooperative, technically curious run can end **Worker-Trusted / Systems-Capable**. A riskier, more detached run can produce a much more **Self-Directed** Jodie. A plain, low-information run can arrive safely without forcing the player to optimize or solve every system.

## Stage 2 carryover concept

The portfolio slice ends at Medical, but Jodie's state is designed to persist.

**Stage 2: Medical Years** is planned around Jodie's three years in Medical. Stage 1 outcomes will affect her starting:

- relationships
- resources
- access
- institutional scrutiny
- technical options
- reasoning options

The larger design uses a future **5 × 5 identity model**: five broad archetypes with five expressions each. That system is intentionally not fully surfaced in this portfolio slice. The current build demonstrates the underlying state architecture without turning the ending into a character-class screen.

## Portfolio scope

This repository currently prioritizes the **employer-facing Stage 1 slice**.

The full project continues beyond the portfolio boundary:

- **Stage 1:** Filtration → Medical → return to Filtration
- **Stage 2:** Jodie's three years in Medical
- **Stage 3:** Sub-40 / Brood territory
- **Stage 4:** Joy settlement, eventually expanding toward civilization-scale decision making

Only the **Filtration → Medical** portion is part of the current portfolio presentation.

## Repository guide

- [`ink/The_Tower_Jodie.ink`](ink/The_Tower_Jodie.ink) — active playable portfolio source
- [`design/The_Tower_East_West_Floor_Bible_40-131.md`](design/The_Tower_East_West_Floor_Bible_40-131.md) — architectural authority for mapped Tower geography and route constraints
- [`backups/The_Tower_Jodie_PORTFOLIO_FREEZE_2026-10-08.ink`](backups/The_Tower_Jodie_PORTFOLIO_FREEZE_2026-10-08.ink) — frozen checkpoint from the final QA cycle; retained as a recovery copy while preflight polish continues
- `design/` — supporting interactive-narrative and world-architecture material
- `backups/` — protected portfolio checkpoints

## QA status

The current portfolio candidate has passed three end-to-end play styles:

1. **Cooperative / technically capable**
2. **Independent / risky**
3. **Plain / low-information**

All three reached Medical coherently while producing meaningfully different state profiles.

The active Ink source is in final preflight. New mechanics are being held back unless a genuine bug appears.

## Tools and workflow

- **Ink / Inky** for interactive narrative
- **Git / GitHub** for versioning and development history
- **AI-assisted ideation, continuity checking, system prototyping, and QA support**

The authored story, world, characters, and narrative decisions remain the creative source. AI is used as a development tool for implementation, testing, organization, and iteration.

## Skills demonstrated

Interactive narrative design · story architecture · branching discipline · persistent state · delayed consequence · systems writing · environmental storytelling · dialogue variation · worldbuilding · continuity management · prose-to-playable adaptation · QA-oriented iteration
