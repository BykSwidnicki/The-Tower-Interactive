VAR curiosity = 2
VAR defiance = 1
VAR solidarity = 1

VAR brooks_trust = 1
VAR tyler_trust = 0

VAR learned_ropes_of_life = false
VAR told_truth_to_houdini = false
VAR told_tyler_mission = false
VAR flirted_with_tyler = false
VAR distribution_jumpsuit = false

-> filtration_123


=== filtration_123 ===

The hiss is coming from Brooks's gauge.

He wipes the glass.
Checks the needle.
Listens.

Jodie watches him.

"This isn't holding," Brooks says.

He looks toward the others, then back at her.

"We need an O-ring."

* [Ask where it is.]
    ~ curiosity += 1
    "Where?"
    Brooks gives her the route.
    -> filtration_decision

* [Ask why nobody else can go.]
    ~ defiance += 1
    "Why me?"
    Brooks looks at her.
    "Because you're already thinking about it."
    -> filtration_decision

* [Ask what happens if the leak gets worse.]
    ~ solidarity += 1
    "What happens if this fails?"
    Brooks glances at the gauge.
    "Everybody notices."
    -> filtration_decision


=== filtration_decision ===

{curiosity >= 3:
    Jodie is already trying to picture the route in her head.
}

{defiance >= 2:
    She still does not like the fact that Brooks chose her.
}

{solidarity >= 2:
    Behind Brooks, the others keep working.
    Every one of them is depending on the repair.
}

Brooks lowers his voice.

"Filtration. Sail Rigging. Living. Water. Agro. Distribution. Then down."

Jodie looks toward the duct.

* [Take the assignment.]
    ~ brooks_trust += 1
    "Fine."
    Brooks nods once.
    -> sail_rigging

* [Tell Brooks this is a terrible plan.]
    ~ defiance += 1
    "This is a terrible plan."
    "Yes," Brooks says.
    "Go."
    -> sail_rigging


=== sail_rigging ===

Jodie drops through the duct.

Below her, something enormous shifts in the dark.

The next section begins here.

END
