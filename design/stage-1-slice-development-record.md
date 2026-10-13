# Stage 1 Slice Development Record

## Purpose and scope

This record documents how *The Tower*'s first playable slice moved from a prose route to the current QA-tested Ink build. It is a development record, not a claim that the larger story is already playable.

**Current playable boundary:** Filtration 123 through Medical Intake.

**Planned continuation:** Medical Years, Sub-40 / Brood territory, and settlement. Those later stages are design direction only at this point.

## 1. The source route

The draft established a repair errand with a fixed dramatic purpose: Jodie leaves West Filtration 123 to retrieve an O-ring gasket and returns changed by the people and systems she encounters.

The authored route is:

**Filtration 123 -> Sail Rigging 122/121 -> Living 120 -> Spine 119 -> Water 118-113 -> Agro 112-106 -> Distribution 105-103 -> Elevator Shaft -> Medical Intake 45.**

This geography remained the structural spine. The adaptation did not turn the story into a map where every decision sends Jodie to a different ending. It asks how the player changes the person who reaches Medical.

## 2. Adaptation rule: variable-shaped experience

The first decision was to preserve a mostly linear authored route while giving each location a distinct question:

| Location | Player-facing question | Persistent result |
| --- | --- | --- |
| Filtration | What kind of risk is Jodie willing to accept for Brooks? | Starting attributes, trust, assignment framing |
| Rigging | Help, observe, warn, or pass by? | Crew favor, technical knowledge, later Water access |
| Living / Spine | Who does she trust, and how does she cross institutional space? | Social access, cover, information |
| Water | Learn the timing, use preparation, or rush? | Water knowledge, injury risk, Guardian exposure |
| Agro | Accept help and work with Tyler, or keep the mission narrow? | Tyler trust, injury routing, practical context |
| Distribution | Use cover, confront a quota problem, or move openly? | Route access, reputation, time cost |
| Elevator Shaft | Prepare, inspect, or commit quickly? | Hazard outcome and information |
| Medical | What has the route made visible? | Arrival reflection and Stage 1 profile |

The guiding rule is: **attributes change often, dialogue changes frequently, knowledge and relationships unlock things selectively, and major route forks are earned.**

## 3. Development questions

The slice was built around a set of narrative-design questions rather than a single "right" path:

- Can technical knowledge feel like story knowledge rather than a bonus number?
- Can a safer-looking action still carry a cost, and can a risky action teach something useful?
- Can systems such as water timing, quotas, and medical transfer reveal power through action instead of exposition?
- Can injury change the story without ending the playthrough?
- Can intervention feel institutional rather than like a guaranteed rescue?

The resulting design separates three kinds of outcome:

- **Causality:** a prior action creates a later consequence.
- **Mitigation:** preparation reduces a later danger, sometimes by being spent.
- **Chance:** rare, clearly bounded randomness keeps the Tower alive without disguising cause and effect.

## 4. Meaningful revisions during implementation

### Re-entry and fallthrough repair

Early return routes could re-enter a consumed one-shot choice list, leaving Ink with no further content. Rigging 121 now has a dedicated return path with repeat-safe choices and a clear exit to Water. The Guardian return preserves what Jodie learned and who she helped; it is a setback, not a reset of character state.

### Guardian intervention narrowed and randomized

The Guardian was deliberately changed from a predictable rescue to a limited institutional response.

- Only a **new Water injury** can trigger the event.
- A **light injury** has a 50% chance of a Guardian response. If noticed, Jodie returns to Filtration; if not, she continues with the Water crew's work happening elsewhere.
- A **serious Water injury** sends her directly to Medical by staffed transfer.
- Neither route is a game over. The ending records the state that arrived at Medical.

Medical evacuation is the fastest way to the Stage 1 destination, but it bypasses Agro, Distribution, and the elevator shaft. That means less knowledge, fewer relationships, and fewer practical choices to carry into the planned Medical Years stage. The current build records that tradeoff; Stage 2 is not yet implemented.

### Injury now persists beyond Water

The original route already included physical danger. The playable slice was revised so that later harm does not vanish between scenes:

- An Agro hatch fall adds injury and changes later route availability.
- A shaft impact can add injury on arrival at Medical.
- Serious injury blocks the exposed Distribution floor and opens the slower maintenance-ramp route.
- Tyler can offer a lower service transfer when Jodie is hurt.
- Medical acknowledges both bruises and serious injury, including evacuation where it occurred.

### Clarity and continuity passes

Repeated return prose was condensed so choices do not replay a complete scene after a short observation. The route documentation was also corrected to keep Sail Rigging above Filtration and to represent the elevator shaft as rapid passage across unnamed levels rather than a duplicate named stop.

## 5. What the current slice proves

The playable build currently demonstrates:

- prose-to-interaction adaptation from a fixed dramatic route;
- a coherent state model for attributes, relationships, knowledge, risk, mitigation, visibility, and injury;
- choice text whose consequences are not always obvious;
- injury that changes later play instead of ending it;
- an intervention system with bounded chance and visible institutional cost;
- convergence at Medical without erasing the player’s history.

It does **not** claim that the later story stages, long-term identity grid, or Stage 2 carryover content are already playable.

## 6. Verification record

The current Ink source compiles cleanly and is covered by automated route checks. The suite verifies a fresh restart after every route and requires a coherent Medical arrival and profile.

| Route | What it verifies |
| --- | --- |
| Cooperative / normal arrival | Knowledge, mitigation, relationships, and ordinary Medical arrival |
| Reckless | Risk-heavy choices still complete coherently |
| Guardian return | Light injury, forced Guardian response, safe return to Rigging, and preserved state |
| Serious Water evacuation | Direct Medical transfer and evacuation state |
| Light injury / no response | 50% intervention can fail to appear; play continues |
| Agro fall injury | Agro harm persists to Medical without forced evacuation |
| Prepared hazard | Carried mitigation is spent only when a later hazard needs it |
| Shaft injury arrival | A late injury is retained and recognized at Medical |

The GitHub workflow compiles with `inkjs` and runs these routes deterministically with QA-only flags where randomness would otherwise make a route nondeterministic.

## 7. Change-control rule going forward

Every material addition to Stage 1 should update this record with:

1. the narrative or player-experience problem;
2. the direction chosen and why;
3. state, canon, or route effects;
4. the test added or revised;
5. the current scope status: playable, planned, or rejected.

This protects the larger story from accidental drift while keeping the portfolio slice honest about what has been built and what remains design intent.
