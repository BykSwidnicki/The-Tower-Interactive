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
VAR used_distribution_service_route = false
VAR water_instability = 0
VAR honey_platform_available = true
VAR elapsed_time = 0
VAR injury = 0
VAR recklessness = 0
VAR story_insight = 0
VAR tower_stress = 0

// Domain knowledge grows slowly from repeated, specific experiences.
VAR rigging_knowledge = 0
VAR water_knowledge = 0
VAR elevator_knowledge = 0
VAR studied_water_cycle = false
VAR studied_rigging_transfer = false
VAR studied_elevator_catch = false

// Route logging guards prevent internal decision loops from looking like travel.
VAR logged_rigging = false
VAR logged_water_storage = false
VAR logged_elevator_shaft = false

// Living Tower consequence system.
VAR karma_pending = 0
VAR karma_hits = 0
VAR dumb_luck_saves = 0
VAR rigging_consequence_pending = false
VAR rigging_system_insight = false

// TEMP QA FLAG: force redirected Karma test, then switch back to false.
VAR qa_force_redirected_karma = false
VAR qa_force_serious_water_injury = false

// Preparation is carried until a relevant hazard actually uses it.
VAR protection_water = false
VAR protection_houdini = false
VAR protection_brake = false
VAR protection_carried = 0
VAR mitigation_spent = 0

// Debug telemetry.
VAR recklessness_log = ""
VAR protection_log = ""
VAR mitigation_log = ""
VAR passive_mitigation_log = ""
VAR karma_log = ""
VAR dumb_luck_log = ""
VAR causal_log = ""
VAR random_event_log = ""
VAR route_block_log = ""

// Compact end-of-run testing log.
VAR route_log = "Filtration"
VAR choice_log = ""
VAR random_events = 0
VAR used_honey_route = false
VAR used_injury_route = false
VAR used_maintenance_ramp = false

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
    ~ elapsed_time += 1
    "Where?"
    Brooks gives her the route.
    -> filtration_decision

* [Ask why nobody else can go.]
    ~ defiance += 1
    ~ elapsed_time += 1
    "Why me?"
    Brooks looks at her.
    "Because you're already thinking about it."
    -> filtration_decision

* [Ask what happens if the leak gets worse.]
    ~ solidarity += 1
    ~ elapsed_time += 2
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

{logged_rigging == false:
    ~ route_log = route_log + " → Rigging"
    ~ logged_rigging = true
}

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
    ~ story_insight += 1
    ~ rigging_knowledge += 1
    ~ elapsed_time += 2
    ~ learned_ropes_of_life = true
    {protection_water == false:
        ~ protection_water = true
        ~ protection_carried += 1
        ~ protection_log = protection_log + "ROPES KNOWLEDGE / "
    }
    "Rope of life?"
    One of the sailors looks at her as if the answer should be obvious.
    "The line between water and no water."
    He points upward.
    "Sails catch it. Tanks hold it. Gravity does the rest."
    -> rigging_crossing

* [Help them pull before moving on.]
    ~ solidarity += 1
    ~ story_insight += 1
    ~ rigging_knowledge += 1
    ~ elapsed_time += 3
    ~ learned_ropes_of_life = true
    {protection_water == false:
        ~ protection_water = true
        ~ protection_carried += 1
        ~ protection_log = protection_log + "HANDS-ON RIGGING KNOWLEDGE / "
    }
    Jodie grabs the nearest line.
    It jerks hard enough to burn against her palm.
    "Now you know," the sailor says.
    "Rope of life."
    -> rigging_crossing

* [Test the unfamiliar control line to see what it does.]
    ~ recklessness += 1
    ~ rigging_knowledge += 1
    ~ recklessness_log = recklessness_log + "TEST RIGGING CONTROL / "
    ~ curiosity += 1
    ~ story_insight += 1
    ~ elapsed_time += 1
    ~ water_instability += 2
    ~ tower_stress += 2
    ~ karma_pending += 1
    ~ rigging_consequence_pending = true
    ~ rigging_system_insight = true
    ~ choice_log = choice_log + "TEST RIGGING CONTROL / "
    ~ causal_log = causal_log + "RIGGING INTERFERENCE > PENDING CONSEQUENCE / "

    Jodie gives the line a careful experimental pull.

    Somewhere above, a pulley answers with a hard metallic knock.

    The resistance tells her something useful: this line is tied into the water load.

    One of the sailors looks over.

    "Don't do that."

    Jodie lets go.

    Nothing obvious happens.

    That does not mean nothing happened.
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

{rigging_knowledge >= 1 && studied_rigging_transfer == false:
    * [Watch one load transfer before leaving.]
        ~ studied_rigging_transfer = true
        ~ rigging_knowledge += 1
        ~ story_insight += 1
        ~ elapsed_time += 1

        Jodie watches the sailors hand the load from one line to another.

        The trick is not strength. It is knowing which line becomes dangerous when the weight moves.

        -> rigging_crossing
}

A sailor points toward a narrow passage cut through the west side of the level.

{rigging_knowledge >= 2:
    He gives Jodie a second look.
    "You've been paying attention."
    He points out a safer handhold before she leaves.
- else:
    "Living quarters are through there."
}

Jodie looks once more at the suspended sails, then heads for the passage.

-> living_quarters


=== living_quarters ===

~ route_log = route_log + " → Living"

The passage tightens, then opens into a corridor crowded with doors that do not quite match.

Some are metal.
Some are plywood.
One is a curtain stitched from old uniforms.

A boy with a deck of bent cards is sitting on an overturned bucket.

He makes one card disappear.

"You're late," he says.

Jodie stops.

"For what?"

The boy grins.

"For whatever you're sneaking through here to do."

A second figure leans out from a doorway farther down the corridor.

Older. Watchful.

"Houdini," someone calls.

The boy looks over his shoulder.

"Not me. Him."

The older man sighs.

"Copperfield."

"Also not me."

Jodie looks from one to the other.

{curiosity >= 3:
    She cannot tell whether the names are jokes, titles, or camouflage.
}

{defiance >= 2:
    She is already tired of being examined by strangers.
}

Houdini steps into the corridor and looks at her work clothes.

"Filtration doesn't wander."

* [Tell him the truth. Brooks sent her for an O-ring.]
    ~ elapsed_time += 1
    ~ told_truth_to_houdini = true
    ~ solidarity += 1
    "Brooks sent me. Filtration needs an O-ring."
    Houdini studies her for a beat.
    "Then you're not wandering."
    He points down the corridor.
    "You're in a hurry."
    -> living_exit

* [Keep the mission vague.]
    ~ curiosity += 1
    ~ elapsed_time += 2
    "Maintenance."
    Houdini raises an eyebrow.
    "That's a large word for a small answer."
    Copperfield snorts into his cards.
    -> living_exit

* [Tell him it is none of his business.]
    ~ defiance += 1
    "It isn't your business."
    Houdini smiles without warmth.
    "Then I suppose I don't need to know."
    He steps aside anyway.
    -> living_exit


=== living_exit ===

{told_truth_to_houdini:
    Houdini lowers his voice before she passes.
    "Water storage is cycling. Watch the timing."
    {protection_houdini == false:
        ~ water_knowledge += 1
        ~ protection_houdini = true
        ~ protection_carried += 1
        ~ protection_log = protection_log + "HOUDINI WARNING / "
        ~ story_insight += 1
    }
}

{learned_ropes_of_life:
    Jodie hears water moving somewhere inside the walls.
    After Rigging, the sound means more than it did an hour ago.
}

{told_truth_to_houdini == false:
    Copperfield flips a card across his knuckles.
    "If anyone asks, you were never here."
}

The corridor narrows again.

Ahead, the air turns colder.

Water Storage.

-> water_storage


=== water_storage ===

{logged_water_storage == false:
    ~ route_log = route_log + " → Water Storage"
    ~ logged_water_storage = true
}

~ temp pressure_roll = RANDOM(1, 100)

// A delayed consequence exists only because an earlier action caused it.
// QA mode forces the unrelated failure first and deliberately leaves Karma pending.
{qa_force_redirected_karma:
    ~ honey_platform_available = false
    ~ random_events += 1
    ~ random_event_log = random_event_log + "QA FORCED UNCAUSED PRESSURE VARIATION / "
- else:
    {rigging_consequence_pending:
        ~ temp karma_roll = RANDOM(1, 100)

        {karma_roll <= 65:
            ~ rigging_consequence_pending = false
            ~ karma_pending -= 1
            ~ karma_hits += 1
            ~ tower_stress += 1
            ~ honey_platform_available = false
            ~ causal_log = causal_log + "RIGGING INTERFERENCE > WATER PRESSURE STUTTER / "
            ~ karma_log = karma_log + "WATER PRESSURE STUTTER / "
        }
    }

    {water_instability >= 2:
        ~ pressure_roll -= 10
    }

    {tower_stress >= 3:
        ~ pressure_roll -= 5
    }

    {pressure_roll <= 5:
        ~ honey_platform_available = false
        ~ random_events += 1
        ~ random_event_log = random_event_log + "UNCAUSED PRESSURE VARIATION / "
    }
}

A warning light blinks above the next hatch.

Behind it, Tank 4 is draining and Tank 5 is beginning to fill.

The passage between them opens for seconds at a time.

{honey_platform_available == false:
    The cycle stutters.

    Somewhere deeper in the system, pressure drops out of sequence.
}

{told_truth_to_houdini:
    Houdini's warning returns to her: watch the timing.
}

{learned_ropes_of_life:
    She can hear the system working now: water caught above, held, released, pulled downward by gravity.
}

{studied_water_cycle == false:
    * [Study one full cycle before deciding.]
        ~ studied_water_cycle = true
        ~ water_knowledge += 1
        ~ story_insight += 1
        ~ elapsed_time += 1
        Jodie stays still for one complete exchange between Tank 4 and Tank 5.

        The handoff is not simultaneous.

        There is a fraction of a second when neither tank fully owns the load.

        -> water_storage
}

* [Wait and count the cycle.]
    ~ water_knowledge += 1
    ~ recklessness = MAX(0, recklessness - 1)
    ~ recklessness_log = recklessness_log + "WAIT(-1) / "
    ~ choice_log = choice_log + "WAIT / "
    ~ curiosity += 1
    ~ elapsed_time += 3
    Jodie watches the warning light.
    One. Two. Three.
    The pressure falls.
    She moves on twelve.
    -> water_crossing

* {told_truth_to_houdini} [Trust Houdini's warning and move with the next cycle.]
    ~ water_knowledge += 1
    ~ choice_log = choice_log + "TRUST WARNING / "
    ~ solidarity += 1
    ~ elapsed_time += 1
    Jodie listens for the change in the pipes.
    When the sound drops, she goes.
    -> water_crossing

* {learned_ropes_of_life} [Read the water cycle by sound.]
    ~ water_knowledge += 1
    ~ choice_log = choice_log + "READ WATER / "
    ~ curiosity += 1
    ~ elapsed_time += 1
    Jodie closes her eyes.
    The pipes tell her when Tank 4 lets go and Tank 5 takes the load.
    She moves in the quiet between them.
    -> water_crossing

* {water_knowledge >= 2} [Use what she knows to cross on the pressure handoff.]
    ~ choice_log = choice_log + "PRESSURE HANDOFF / "
    ~ story_insight += 1
    ~ elapsed_time += 1
    Jodie waits for the instant Tank 4 gives up the load but before Tank 5 fully takes it.
    She moves through the system's weakest moment.
    -> water_crossing

* [Go now before she can think herself out of it.]
    ~ recklessness += 1
    ~ recklessness_log = recklessness_log + "GO NOW / "
    ~ choice_log = choice_log + "GO NOW / "
    ~ defiance += 1
    ~ temp rush_roll = RANDOM(1, 100)

    {water_instability >= 2:
        ~ rush_roll -= 20
    }

    {tower_stress >= 2:
        ~ rush_roll -= 5
    }

    {recklessness >= 2:
        ~ rush_roll -= 10
    }

    {curiosity >= 5:
        ~ rush_roll += 5
        ~ passive_mitigation_log = passive_mitigation_log + "HIGH CURIOSITY(+5) / "
    }

    {rigging_system_insight:
        ~ rush_roll += 5
        ~ passive_mitigation_log = passive_mitigation_log + "RIGGING SYSTEM INSIGHT(+5) / "
    }

    {protection_water:
        ~ rush_roll += 10
        ~ protection_water = false
        ~ protection_carried -= 1
        ~ mitigation_spent += 1
        ~ mitigation_log = mitigation_log + "ROPES KNOWLEDGE SPENT(+10) / "
    }

    {protection_houdini:
        ~ rush_roll += 10
        ~ protection_houdini = false
        ~ protection_carried -= 1
        ~ mitigation_spent += 1
        ~ mitigation_log = mitigation_log + "HOUDINI WARNING SPENT(+10) / "
    }

    ~ temp dumb_roll = RANDOM(1, 200)

    {qa_force_serious_water_injury:
        ~ injury += 2
        ~ random_events += 1
        ~ random_event_log = random_event_log + "QA FORCED SERIOUS WATER INJURY / "
        ~ elapsed_time += 2
    - else:
        {rush_roll <= 10:
            {dumb_roll == 1:
                ~ dumb_luck_saves += 1
                ~ dumb_luck_log = dumb_luck_log + "WATER GAP OPENED AT THE EXACT SECOND / "
                The pressure drops at exactly the impossible second Jodie needs.
            - else:
                ~ injury += 2
                ~ random_events += 1
                ~ random_event_log = random_event_log + "SERIOUS WATER INJURY / "
                ~ elapsed_time += 2
            }
        - else:
            {rush_roll <= 25:
                ~ injury += 1
                ~ random_events += 1
                ~ random_event_log = random_event_log + "LIGHT WATER INJURY / "
            }
        }
    }

    {mitigation_spent > 0:
        She is still taking a chance, but not blindly.
    }

    Jodie grips the rail and runs.
    -> water_crossing

=== water_crossing ===

Tank 4 empties.

Tank 5 answers.

The corridor shudders.

There is no time to scream.

Jodie throws herself through the narrowing gap.

{injury >= 2:
    The edge catches her hard across the hip.

    Pain flashes white.

    Her leg almost folds under her.

    ~ water_knowledge += 1
    ~ story_insight += 1

    That pain teaches her one narrow thing: where the load shifts too late.

    She keeps moving because stopping here would be worse.
- else:
    {injury == 1:
        The edge clips her hip hard enough to leave a bruise.

        ~ water_knowledge += 1

        She knows exactly which beat she mistimed.

        She keeps moving.
    - else:
        For half a second, the tower is nothing but water, steel, and noise.
    }
}

Then she is through.

-> agro


=== agro ===

~ route_log = route_log + " → Agro"

{rigging_consequence_pending:
    ~ rigging_consequence_pending = false
    ~ karma_pending -= 1
    ~ karma_hits += 1
    ~ tower_stress += 1
    ~ honey_platform_available = false
    ~ causal_log = causal_log + "RIGGING INTERFERENCE > AGRO TRANSFER FAILURE / "
    ~ karma_log = karma_log + "AGRO TRANSFER FAILURE / "
}

{elapsed_time >= 7:
    ~ honey_platform_available = false
    ~ route_block_log = route_block_log + "HONEY:CLOSED_BY_TIME / "
}

{injury >= 2:
    Jodie is favoring one side before she even hits Agro.
- else:
    {injury == 1:
        Her hip aches, but she can still move normally.
    }
}

Jodie comes out too fast.

Her boot skids on damp metal.

For one terrible second there is nothing beneath her.

Then—

"Wheeeee—"

CRASH.

She lands hard among trays, pipes, and startled workers.

Someone nearby shouts.

A young man is already talking over the noise.

"Pipe slip," he says, loudly enough for everyone to hear.

He looks at Jodie.

"Right?"

His name is Tyler.

* [Back up his lie.]
    ~ tyler_trust += 1
    ~ solidarity += 1
    "Pipe slip."
    Tyler nods like they rehearsed it.
    -> agro_talk

* [Ask why he is covering for her.]
    ~ curiosity += 1
    "Why are you helping me?"
    Tyler shrugs.
    "Because nobody else has asked what happened yet."
    -> agro_talk

* [Tell him she can handle herself.]
    ~ defiance += 1
    "I don't need covering."
    "Great," Tyler says. "Then I was talking to myself."
    -> agro_talk


=== agro_talk ===

Tyler studies the grime on her clothes.

{honey_platform_available:
    Somewhere beyond the racks, a transfer motor hums steadily.
- else:
    Somewhere beyond the racks, a transfer motor tries to start and dies.

    Tyler glances toward the sound.

    "Honey platform's down."
}

"You're a long way from Filtration."

* [Tell Tyler about the O-ring.]
    ~ told_tyler_mission = true
    ~ tyler_trust += 1
    "Brooks sent me for a part."
    "That explains the suicidal sightseeing."
    -> agro_exit

* [Keep Brooks's assignment to herself.]
    ~ curiosity += 1
    "I'm passing through."
    Tyler looks unconvinced.
    "Sure you are."
    -> agro_exit

* [Tease him for being so interested.]
    ~ flirted_with_tyler = true
    ~ tyler_trust += 1
    "You ask a lot of questions for somebody who just lied for me."
    Tyler smiles.
    "Occupational hazard."
    -> agro_exit


=== agro_exit ===

{injury >= 2:
    ~ route_block_log = route_block_log + "HONEY:BLOCKED_BY_INJURY / "
}

{tyler_trust < 2:
    ~ route_block_log = route_block_log + "TYLER_ROUTE:TRUST_TOO_LOW / "
}

{honey_platform_available == false:
    ~ route_block_log = route_block_log + "HONEY:UNAVAILABLE / "
}

{tyler_trust >= 2:
    Tyler points toward a service transfer.
    "Distribution is faster this way. Try not to fall through anything else."
- else:
    Tyler jerks his chin toward the far passage.
    "Distribution's that way."
}

* {tyler_trust >= 2 && honey_platform_available && injury < 2} [Take the honey platform with Tyler.]
    ~ choice_log = choice_log + "HONEY ROUTE / "
    ~ used_honey_route = true
    ~ elapsed_time += 1
    -> tyler_honey_platform

* {tyler_trust >= 2 && injury >= 2} [Let Tyler help her through the lower service transfer.]
    ~ choice_log = choice_log + "TYLER DETOUR / "
    ~ used_injury_route = true
    ~ elapsed_time += 2
    ~ tyler_trust += 1
    -> tyler_injury_route

* [Head for Distribution.]
    -> distribution


=== tyler_injury_route ===

~ route_log = route_log + " → Tyler Injury Detour"

Tyler watches Jodie take one step and wince.

"No honey platform."

"I can manage."

"Great. Manage the handrail."

He takes her through a lower service transfer instead.

It is slower, narrower, and much less dramatic.

At one steep section, Tyler offers his arm without commenting on it.

Jodie takes it.

They reach Distribution late, but upright.

-> distribution


=== tyler_honey_platform ===

~ route_log = route_log + " → Honey Platform"

Tyler leads Jodie onto a narrow transfer platform above the honey handling line.

"Faster," he says.

The platform jerks forward.

A valve coughs.

Honey spatters both of them from shoulder to boot.

Tyler wipes his face.

"Still faster."

Jodie stares at him.

"This better have been worth unlocking."

"What?"

"Nothing."

They reach Distribution together.

-> distribution


=== distribution ===

~ route_log = route_log + " → Distribution"

{elapsed_time >= 7:
    The shift has moved on without her.
}

{honey_platform_available:
    By the time Jodie reaches Distribution, she is sticky with honey and tower grime.
- else:
    With the honey platform down, Jodie reaches Distribution by the dry service transfer instead.

    She is dusty, sweaty, and considerably less sticky.
}

A worker takes one look at her and points toward a rinse station.

"No."

Jodie looks down at herself.

"No what?"

"No entering my floor looking like that."

Beyond the rinse station hang spare Distribution jumpsuits.

A quota board clicks overhead.

* [Take the offered jumpsuit.]
    ~ distribution_jumpsuit = true
    ~ solidarity += 1
    Jodie changes fast.
    The uniform smells faintly of soap and old sugar.
    -> distribution_exit

* [Rinse off and keep her Filtration clothes.]
    ~ curiosity += 1
    Jodie scrubs the honey from her sleeves and keeps moving.
    -> distribution_exit

* [Ignore the complaint and head for the exit.]
    ~ defiance += 1
    "I'm not staying."
    "That was obvious," the worker says.
    -> distribution_exit


=== distribution_exit ===

{distribution_jumpsuit:
    In Distribution gray, fewer people look twice at her.
}

{told_tyler_mission:
    Tyler's directions line up with the service markings ahead.
}

At the far edge of the floor, Jodie finds two ways toward the last visible route down.

* {distribution_jumpsuit} [Use the staff service corridor.]
    ~ choice_log = choice_log + "SERVICE CORRIDOR / "
    ~ used_distribution_service_route = true
    -> distribution_service_route

* {injury < 2} [Cross the open Distribution floor.]
    ~ choice_log = choice_log + "OPEN FLOOR / "
    -> distribution_open_route

* {injury >= 2} [Take the slower maintenance ramp.]
    ~ choice_log = choice_log + "MAINTENANCE RAMP / "
    ~ used_maintenance_ramp = true
    ~ elapsed_time += 2
    -> distribution_injury_route


=== distribution_service_route ===

~ route_log = route_log + " → Service Corridor"

The gray jumpsuit does its work.

Jodie joins the flow of workers moving behind the quota boards and through a narrow service corridor.

{told_tyler_mission:
    Tyler's directions make sense here. Left at the split. Down past the locked cage.
}

Nobody stops her.

The corridor empties beside the elevator shaft.

-> elevator_shaft


=== distribution_injury_route ===

~ route_log = route_log + " → Maintenance Ramp"

The open floor is faster.

It is also full of carts, ladders, and people moving at shift speed.

Jodie looks at her hip and chooses the maintenance ramp instead.

It doubles back twice and costs her time, but nothing here asks her to jump.

She reaches the elevator shaft from the lower side.

-> elevator_shaft


=== distribution_open_route ===

~ route_log = route_log + " → Open Floor"

Jodie crosses the working floor in full view.

Carts cut across her path.
Names are shouted.
Numbers change on the quota board overhead.

{defiance >= 4:
    She keeps moving like she belongs wherever she decides to stand.
}

{solidarity >= 4:
    When a worker nearly loses a crate, Jodie catches one corner without breaking stride.
}

She reaches the elevator shaft from the exposed side.

-> elevator_shaft


=== elevator_shaft ===

{logged_elevator_shaft == false:
    ~ route_log = route_log + " → Elevator Shaft"
    ~ logged_elevator_shaft = true
}

The shaft drops farther than Jodie can see.

The regular car is dead.

The service cage is not.

Barely.

She steps inside.

The gate rattles shut.

* [Inspect the emergency brake before descending.]
    ~ elevator_knowledge += 1
    ~ recklessness = MAX(0, recklessness - 1)
    ~ recklessness_log = recklessness_log + "INSPECT BRAKE(-1) / "
    ~ curiosity += 1
    ~ story_insight += 1
    {protection_brake == false:
        ~ protection_brake = true
        ~ protection_carried += 1
        ~ protection_log = protection_log + "BRAKE INSPECTION / "
    }
    Jodie checks the lever, cable, and catch.
    None of it inspires confidence.
    -> elevator_after_inspection

* [Brace herself and trust the machinery.]
    ~ solidarity += 1
    Jodie wraps one hand around the rail and thinks about every worker keeping systems like this alive.
    -> shaft_descent

* [Hit the control and get it over with.]
    ~ recklessness += 1
    ~ recklessness_log = recklessness_log + "HIT ELEVATOR CONTROL / "
    ~ defiance += 1
    Jodie slaps the switch.
    "Come on."
    -> shaft_descent


=== elevator_after_inspection ===

{studied_elevator_catch == false:
    * [Trace how the catch engages before descending.]
        ~ studied_elevator_catch = true
        ~ elevator_knowledge += 1
        ~ story_insight += 1
        ~ elapsed_time += 1

        Jodie follows the catch from lever to pawl to rail.

        It is crude, but now she knows where the delay comes from.

        -> elevator_after_inspection
}

* {elevator_knowledge >= 2} [Set the brake catch before descending.]
    ~ choice_log = choice_log + "SET BRAKE CATCH / "
    ~ story_insight += 1
    ~ protection_brake = true
    Jodie adjusts the catch to engage sooner if the cage drops too hard.
    -> shaft_descent

* [Leave it as she found it and descend.]
    -> shaft_descent


=== shaft_descent ===

The cage drops.

Levels smear past.

Some lit.
Some dark.
Most gone before Jodie can make sense of them.

~ temp shaft_roll = RANDOM(1, 100)

{tower_stress >= 3:
    ~ shaft_roll -= 10
}

{recklessness >= 3:
    ~ shaft_roll -= 10
}

Metal screams somewhere below.

{shaft_roll <= 20:
    The cage lurches harder than it should.

    {protection_brake:
        ~ protection_brake = false
        ~ protection_carried -= 1
        ~ mitigation_spent += 1
        ~ mitigation_log = mitigation_log + "BRAKE INSPECTION SPENT / "
        Jodie is already reaching for the emergency catch.

        The brakes bite before the cage can build full speed.
    - else:
        ~ temp shaft_dumb_roll = RANDOM(1, 200)
        {shaft_dumb_roll == 1:
            ~ dumb_luck_saves += 1
            ~ dumb_luck_log = dumb_luck_log + "SHAFT CABLE SNAGGED ON ITS OWN / "
            A loose cable snags against the frame and steals just enough speed.
        - else:
            ~ injury += 1
            ~ random_events += 1
            ~ random_event_log = random_event_log + "SHAFT IMPACT INJURY / "
            The emergency brakes catch late.

            ~ elevator_knowledge += 1
            ~ story_insight += 1

            Jodie slams into the rail.

            Now she knows what a late catch sounds like.
        }
    }
- else:
    Emergency brakes catch.

    Jodie is thrown against the rail, but the cage stops where it should.
}

Then silence.

A final mechanical groan.

The doors twitch open.

-> medical_intake

=== medical_intake ===

~ route_log = route_log + " → Medical"

Guardian Medical.

Bright enough to hurt.

Clean enough to feel suspicious.

For the first time since leaving Filtration, Jodie stops moving.

{curiosity >= 5:
    She immediately starts cataloguing exits, equipment, people.
}

{defiance >= 4:
    Nobody here is going to tell her she took the wrong route.
}

{solidarity >= 4:
    The first thing she notices is how many people are waiting to be helped.
}

{tyler_trust >= 2:
    Tyler's directions got her here faster than she wants to admit.
}

{distribution_jumpsuit:
    A medical worker glances at the Distribution uniform and waves her farther inside without question.
}

{used_distribution_service_route:
    She arrived through a staff corridor most visitors never see.
}

{injury >= 2:
    A medical worker notices how carefully Jodie is standing before Jodie says a word.
    "Water Storage?"
    Jodie does not answer.
- else:
    {injury == 1:
        A bruise is beginning to darken along her hip.
    }
}

* [Ask where to find the part.]
    "I need an O-ring for Filtration."
    -> medical_end

* [Catch her breath before speaking.]
    Jodie puts one hand against the wall.
    One breath.
    Then another.
    -> medical_end

* {curiosity >= 5} [Look around before revealing why she is here.]
    ~ curiosity += 1
    Jodie studies the room first.
    -> medical_end


=== medical_end ===

She made it to Medical.

But the route changed what she knows, who trusts her, and how she moves through the tower.

--- DEBUG RUN SUMMARY ---
QA redirected Karma force: {qa_force_redirected_karma}
QA serious water injury force: {qa_force_serious_water_injury}
Route: {route_log}
Choices: {choice_log}
Random events: {random_events}
Random event log: {random_event_log}
Injury: {injury}
Time: {elapsed_time}
Story insight: {story_insight}
Rigging knowledge: {rigging_knowledge}
Studied rigging transfer: {studied_rigging_transfer}
Water knowledge: {water_knowledge}
Studied water cycle: {studied_water_cycle}
Elevator knowledge: {elevator_knowledge}
Studied elevator catch: {studied_elevator_catch}
Curiosity: {curiosity}
Tyler trust: {tyler_trust}

Recklessness: {recklessness}
Recklessness sources: {recklessness_log}
Tower stress: {tower_stress}

Protection carried at ending: {protection_carried}
Protection sources: {protection_log}
Mitigation spent on actual danger: {mitigation_spent}
Mitigation sources: {mitigation_log}
Passive mitigation: {passive_mitigation_log}

Karma pending: {karma_pending}
Karma hits: {karma_hits}
Karma log: {karma_log}
Dumb luck saves: {dumb_luck_saves}
Dumb luck log: {dumb_luck_log}

Causality: {causal_log}
Route blocks: {route_block_log}
Gate snapshot: TYLER={tyler_trust >= 2:OPEN|CLOSED} / HONEY={honey_platform_available:OPEN|CLOSED} / OPEN_FLOOR={injury < 2:OPEN|CLOSED}
Water instability: {water_instability}
Honey platform available: {honey_platform_available}
Ending reached: {injury >= 2: INJURED ARRIVAL|SAFE ARRIVAL}
--- END DEBUG ---

-> END
