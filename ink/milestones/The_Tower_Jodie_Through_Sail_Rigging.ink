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

Jodie drops through the duct and lands on a narrow maintenance platform.

Wind moves through the tower here.

Not outside wind. Tower wind.

Air pulled through broken passages, old vents, open shafts.

Across the chamber, workers in blue-and-white stripes move along hanging lines and patched catwalks.

One of them catches a rope with both hands and leans his whole weight into it.

"Hold the rope of life!"

Three others pull.

A suspended water sail shifts into place above the dark.

{curiosity >= 3:
    Jodie slows down. Nothing here is decorative. Every knot, pulley, and line is doing a job.
}

{solidarity >= 2:
    Nobody is working alone. Every movement depends on somebody else holding.
}

* [Ask what "rope of life" means.]
    ~ curiosity += 1
    ~ learned_ropes_of_life = true
    "Rope of life?"
    One of the sailors looks at her as if the answer should be obvious.
    "The line between water and no water."
    He points upward.
    "Sails catch it. Tanks hold it. Gravity does the rest."
    -> rigging_crossing

* [Help them pull before moving on.]
    ~ solidarity += 1
    ~ learned_ropes_of_life = true
    Jodie grabs the nearest line.
    It jerks hard enough to burn against her palm.
    "Now you know," the sailor says.
    "Rope of life."
    -> rigging_crossing

* [Keep moving. She has a job to do.]
    ~ defiance += 1
    Jodie ducks beneath the swinging line and keeps going.
    Someone behind her laughs.
    "Filtration."
    It is not a question.
    -> rigging_crossing


=== rigging_crossing ===

{learned_ropes_of_life:
    The phrase stays with her now: rope of life.
    Not poetry. Infrastructure.
}

{brooks_trust >= 2:
    Brooks sent her this way for a reason.
    Jodie is beginning to suspect the route itself is part of the lesson.
}

A sailor points toward a narrow passage cut through the west side of the level.

"Living quarters are through there."

Jodie looks once more at the suspended sails, then heads for the passage.

-> living_quarters


=== living_quarters ===

The passage tightens around her.

The next section begins here.

-> END
