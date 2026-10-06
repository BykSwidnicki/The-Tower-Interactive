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
    ~ elapsed_time += 2
    ~ learned_ropes_of_life = true
    "Rope of life?"
    One of the sailors looks at her as if the answer should be obvious.
    "The line between water and no water."
    He points upward.
    "Sails catch it. Tanks hold it. Gravity does the rest."
    -> rigging_crossing

* [Help them pull before moving on.]
    ~ solidarity += 1
    ~ elapsed_time += 3
    ~ learned_ropes_of_life = true
    Jodie grabs the nearest line.
    It jerks hard enough to burn against her palm.
    "Now you know," the sailor says.
    "Rope of life."
    -> rigging_crossing

* [Touch the unfamiliar control line to clear her path.]
    ~ curiosity += 1
    ~ elapsed_time += 1
    ~ water_instability += 2
    Jodie gives the line a quick pull.

    Somewhere above, a pulley answers with a hard metallic knock.

    One of the sailors looks over.

    "Don't do that."

    Jodie lets go.

    Nothing obvious happens.
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

~ temp pressure_roll = RANDOM(1, 100)

{water_instability >= 2:
    ~ pressure_roll -= 10
}

{pressure_roll <= 5:
    ~ honey_platform_available = false
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

* [Wait and count the cycle.]
    ~ curiosity += 1
    ~ elapsed_time += 3
    Jodie watches the warning light.
    One. Two. Three.
    The pressure falls.
    She moves on twelve.
    -> water_crossing

* {told_truth_to_houdini} [Trust Houdini's warning and move with the next cycle.]
    ~ solidarity += 1
    ~ elapsed_time += 1
    Jodie listens for the change in the pipes.
    When the sound drops, she goes.
    -> water_crossing

* {learned_ropes_of_life} [Read the water cycle by sound.]
    ~ curiosity += 1
    ~ elapsed_time += 1
    Jodie closes her eyes.
    The pipes tell her when Tank 4 lets go and Tank 5 takes the load.
    She moves in the quiet between them.
    -> water_crossing

* [Go now before she can think herself out of it.]
    ~ defiance += 1
    ~ temp rush_roll = RANDOM(1, 100)

    {water_instability >= 2:
        ~ rush_roll -= 15
    }

    {rush_roll <= 10:
        ~ injury += 2
        ~ elapsed_time += 2
    - rush_roll <= 25:
        ~ injury += 1
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

    She keeps moving because stopping here would be worse.
- injury == 1:
    The edge clips her hip hard enough to leave a bruise.

    She keeps moving.
- else:
    For half a second, the tower is nothing but water, steel, and noise.
}

Then she is through.

-> agro


=== agro ===

{elapsed_time >= 7:
    ~ honey_platform_available = false
}

{injury >= 2:
    Jodie is favoring one side before she even hits Agro.
- injury == 1:
    Her hip aches, but she can still move normally.
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

{tyler_trust >= 2:
    Tyler points toward a service transfer.
    "Distribution is faster this way. Try not to fall through anything else."
- else:
    Tyler jerks his chin toward the far passage.
    "Distribution's that way."
}

* {tyler_trust >= 2 && honey_platform_available && injury < 2} [Take the honey platform with Tyler.]
    ~ elapsed_time += 1
    -> tyler_honey_platform

* {tyler_trust >= 2 && injury >= 2} [Let Tyler help her through the lower service transfer.]
    ~ elapsed_time += 2
    ~ tyler_trust += 1
    -> tyler_injury_route

* [Head for Distribution.]
    -> distribution


=== tyler_injury_route ===

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
    ~ used_distribution_service_route = true
    -> distribution_service_route

* {injury < 2} [Cross the open Distribution floor.]
    -> distribution_open_route

* {injury >= 2} [Take the slower maintenance ramp.]
    ~ elapsed_time += 2
    -> distribution_injury_route


=== distribution_service_route ===

The gray jumpsuit does its work.

Jodie joins the flow of workers moving behind the quota boards and through a narrow service corridor.

{told_tyler_mission:
    Tyler's directions make sense here. Left at the split. Down past the locked cage.
}

Nobody stops her.

The corridor empties beside the elevator shaft.

-> elevator_shaft


=== distribution_injury_route ===

The open floor is faster.

It is also full of carts, ladders, and people moving at shift speed.

Jodie looks at her hip and chooses the maintenance ramp instead.

It doubles back twice and costs her time, but nothing here asks her to jump.

She reaches the elevator shaft from the lower side.

-> elevator_shaft


=== distribution_open_route ===

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

The shaft drops farther than Jodie can see.

The regular car is dead.

The service cage is not.

Barely.

She steps inside.

The gate rattles shut.

* [Inspect the emergency brake before descending.]
    ~ curiosity += 1
    Jodie checks the lever, cable, and catch.
    None of it inspires confidence.
    -> shaft_descent

* [Brace herself and trust the machinery.]
    ~ solidarity += 1
    Jodie wraps one hand around the rail and thinks about every worker keeping systems like this alive.
    -> shaft_descent

* [Hit the control and get it over with.]
    ~ defiance += 1
    Jodie slaps the switch.
    "Come on."
    -> shaft_descent


=== shaft_descent ===

The cage drops.

Levels smear past.

Some lit.
Some dark.
Most gone before Jodie can make sense of them.

Metal screams somewhere below.

The cage lurches.

Emergency brakes catch.

Jodie is thrown against the rail.

Then silence.

A final mechanical groan.

The doors twitch open.

-> medical_intake


=== medical_intake ===

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
- injury == 1:
    A bruise is beginning to darken along her hip.
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

-> END
