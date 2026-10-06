# Interactive Design Spine

## Core model

The adaptation uses a **linear authored spine with variable-shaped experience**.

Jodie follows the same major route through the tower, but player decisions accumulate into a character build that affects later dialogue, trust, knowledge, available actions, and selected short branches.

## State categories

### Character attributes
- `curiosity`
- `defiance`
- `solidarity`

These describe the version of Jodie the player is creating.

### Relationship values
- `brooks_trust`
- `tyler_trust`

These influence how recurring characters treat Jodie and what they are willing to reveal or risk.

### Knowledge and action flags
- `learned_ropes_of_life`
- `told_truth_to_houdini`
- `told_tyler_mission`
- `flirted_with_tyler`
- `distribution_jumpsuit`

These remember specific discoveries and actions.

## Branching philosophy

Most choices alter state and reconverge quickly.

Real branches are reserved for moments where different content, risk, knowledge, or relationship payoff justifies the added complexity.

A useful target for this slice is:

- mostly authored spine
- frequent conditional variation
- a small number of substantial forks

The design rule is simple:

**Attributes change constantly. Dialogue changes frequently. Relationships and knowledge unlock things occasionally. Real plot branches happen selectively.**

## Current implementation milestone

Knot 1 proves the complete core loop:

1. scene
2. player choice
3. variable change
4. conditional callback
5. second choice
6. transition into the next knot

Future knots build on this same system rather than replacing it.
