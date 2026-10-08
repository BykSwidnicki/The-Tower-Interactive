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
VAR distribution_quota_solved = false
VAR distribution_quota_corrected = false
VAR distribution_quota_left_inflated = false
VAR distribution_quota_exploited = false
VAR distribution_math_missed = false
VAR used_distribution_service_route = false
VAR water_instability = 0
VAR honey_platform_available = true
VAR elapsed_time = 0
VAR injury = 0
VAR recklessness = 0
VAR story_insight = 0
VAR tower_stress = 0

// Long-term identity/reputation tracks.
// Local choices feed patterns that later chapters can react to.
VAR worker_reputation = 0
VAR institutional_visibility = 0
VAR cross_department_competence = 0
VAR belonging = 0
VAR independence = 0

// Domain knowledge grows slowly from repeated, specific experiences.
VAR rigging_knowledge = 0
VAR water_knowledge = 0
VAR elevator_knowledge = 0
VAR studied_water_cycle = false
VAR studied_rigging_transfer = false
VAR studied_elevator_catch = false
VAR learned_water_from_houdini = false
VAR pending_water_lesson = 0
VAR used_water_maintenance_bypass = false
VAR water_dispatch_insight = false
VAR water_feed_stabilized = false
VAR agro_arrival_controlled = false
VAR agro_cover_intact = true
VAR agro_joined_shift = false
VAR agro_saved_crop_lane = false
VAR agro_hid_in_workflow = false
VAR agro_supervisor_attention = 0
VAR agro_broken_bridge_seen = false
VAR tyler_water_recognized = false
VAR rigging_direct_water_access = false
VAR used_rigging_water_descent = false
VAR asked_rope_meaning = false
VAR helped_riggers = false
VAR passed_rigging_untouched = false
VAR rigging_crew_favor = 0
VAR rigging_121_problem_resolved = false
VAR rigging_121_problem_helped = false
VAR rigging_121_problem_warned = false
VAR visited_living = false
VAR living_clinic_favor = 0
VAR used_living_service_cut = false
VAR carrying_clinic_supply = false
VAR spine_crossed_with_water_crew = false
VAR spine_crossed_with_clinic_run = false
VAR spine_crossed_service_gap = false
VAR water_maintainer_outfit = false

// Route logging guards prevent internal decision loops from looking like travel.
VAR logged_rigging = false
VAR logged_rigging_121 = false
VAR logged_spine_119 = false
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
    ~ route_log = route_log + " → Rigging 122"
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
    ~ asked_rope_meaning = true
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
    -> rigging_121

* [Help them pull before moving on.]
    ~ helped_riggers = true
    ~ solidarity += 1
    ~ worker_reputation += 1
    ~ belonging += 1
    ~ story_insight += 1
    ~ rigging_knowledge += 1
    ~ elapsed_time += 3
    ~ learned_ropes_of_life = true
    ~ rigging_direct_water_access = true
    {protection_water == false:
        ~ protection_water = true
        ~ protection_carried += 1
        ~ protection_log = protection_log + "HANDS-ON RIGGING KNOWLEDGE / "
    }
    Jodie grabs the nearest line.
    It jerks hard enough to burn against her palm.
    "Now you know," the sailor says.
    "Rope of life."

    He jerks his chin toward a maintenance ladder disappearing beside the water lines.

    "If you're going down, that drops toward Storage. Faster than cutting through the sleepers."
    -> rigging_121

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
    -> rigging_121

* [Keep moving. She has a job to do.]
    ~ passed_rigging_untouched = true
    ~ defiance += 1
    Jodie ducks beneath the swinging line and keeps going.
    Someone behind her laughs.
    "Filtration."
    It is not a question.
    -> rigging_121


=== rigging_121 ===

{logged_rigging_121 == false:
    ~ route_log = route_log + " → Rigging 121"
    ~ logged_rigging_121 = true
}

The lower Rigging level is tighter.

The great hanging sails are mostly above her now. Here the load resolves into guides, tension lines, pulleys, and maintenance runs disappearing toward the water system.

{helped_riggers:
    Her palms still sting from the pull upstairs.

    A line she helped tension snakes through the lower guides ahead of her. For a moment, she can literally follow the work she touched.
}

{asked_rope_meaning && helped_riggers == false:
    "Rope of life" makes more sense down here.

    The grand phrase upstairs becomes a hundred ugly little jobs keeping weight, water, and gravity from disagreeing.
}

{rigging_consequence_pending:
    Somewhere in the lower guides, a pulley gives a hard little shudder.

    Jodie recognizes the sound.

    The line she tested upstairs is still talking to the system.
}

{passed_rigging_untouched:
    Jodie keeps her hands to herself.

    The lower level lets her pass without learning her name.
}

{learned_ropes_of_life:
    The phrase stays with her now: rope of life.
    Not poetry. Infrastructure.
}

{brooks_trust >= 2:
    Brooks sent her this way for a reason.
    Jodie is beginning to suspect the route itself is part of the lesson.
}

{rigging_121_problem_resolved == false:
    A loaded guide wheel begins to walk sideways in its bracket.

    Metal complains.

    {rigging_consequence_pending:
        The shudder is sharper than it should be.

        Jodie knows exactly which upstairs experiment is feeding into it.
    - else:
        One of the sailors swears and reaches for a brace.

        Routine here is only another word for danger everyone already knows by name.
    }

    * {rigging_knowledge >= 1} [Warn the nearest rigger that the lower guide is walking.]
        ~ rigging_121_problem_resolved = true
        ~ rigging_121_problem_warned = true
        ~ rigging_crew_favor += 1
        ~ story_insight += 1
        ~ worker_reputation += 1
        ~ cross_department_competence += 1
        ~ elapsed_time += 1
        ~ rigging_direct_water_access = true
        ~ choice_log = choice_log + "RIGGING 121 WARN / "

        "Left guide."

        The sailor looks where she is looking, then moves before the wheel can climb any farther.

        "Good eye."

        {rigging_consequence_pending:
            {water_instability > 0:
                ~ water_instability -= 1
            }
            {tower_stress > 0:
                ~ tower_stress -= 1
            }
            ~ passive_mitigation_log = passive_mitigation_log + "RIGGING WARNING SOFTENED LOAD(-1 WATER/-1 STRESS) / "

            She has not undone what she touched upstairs.

            She has stopped it from getting worse here.
        }

        -> rigging_121

    * {helped_riggers || solidarity >= 3} [Take the brace when the sailor shoves it toward her.]
        ~ rigging_121_problem_resolved = true
        ~ rigging_121_problem_helped = true
        ~ rigging_crew_favor += 2
        ~ solidarity += 1
        ~ story_insight += 1
        ~ worker_reputation += 1
        ~ belonging += 1
        ~ elapsed_time += 2
        ~ rigging_direct_water_access = true
        ~ choice_log = choice_log + "RIGGING 121 BRACE / "
        {rigging_knowledge < 2:
            ~ rigging_knowledge += 1
        }

        Jodie plants the brace against the frame.

        The wheel bucks once.

        The sailor takes the load. Jodie holds the metal steady until the line settles back into its groove.

        "All right, Filtration," he says.

        This time it sounds less like an accusation.

        {rigging_consequence_pending:
            {water_instability > 0:
                ~ water_instability -= 1
            }
            {tower_stress > 0:
                ~ tower_stress -= 1
            }
            ~ passive_mitigation_log = passive_mitigation_log + "RIGGING BRACE SOFTENED LOAD(-1 WATER/-1 STRESS) / "

            The system still remembers the mistake upstairs.

            It just has less momentum behind it now.
        }

        -> rigging_121

    * [Stay clear and keep moving.]
        ~ rigging_121_problem_resolved = true
        ~ choice_log = choice_log + "RIGGING 121 PASS / "

        Jodie gives the moving line the space it deserves.

        The sailors close around the problem behind her.

        -> rigging_121
}

{rigging_knowledge >= 1 && studied_rigging_transfer == false:
    * [Watch one load transfer before leaving.]
        ~ studied_rigging_transfer = true
        ~ rigging_knowledge += 1
        ~ story_insight += 1
        ~ elapsed_time += 1
        ~ rigging_direct_water_access = true

        Jodie watches the sailors hand the load from one line to another.

        The trick is not strength. It is knowing which line becomes dangerous when the weight moves.

        Following the loaded line with her eyes, she spots a maintenance ladder dropping beside the water pipes. It bypasses the west passage entirely.

        -> rigging_121
}

-> rigging_121_exit


=== rigging_121_exit ===

A sailor points toward a narrow passage cut through the west side of Rigging 121.

{rigging_crew_favor >= 2:
    "You ever come back through here, ask before you grab anything."

    He jerks his chin toward the maintenance run.

    "But we'll remember you."
- else:
    {rigging_knowledge >= 2:
        He gives Jodie a second look.
        "You've been paying attention."
        He points out a safer handhold before she leaves.
    - else:
        "Living quarters are through there."
    }
}

{rigging_direct_water_access:
    Jodie has two ways down now.

    * [Take the west passage through Living Quarters.]
        ~ choice_log = choice_log + "LIVING ROUTE / "
        -> living_quarters

    * [Follow the maintenance descent toward Water Storage.]
        ~ choice_log = choice_log + "RIGGING WATER DESCENT / "
        ~ used_rigging_water_descent = true
        -> rigging_water_descent
- else:
    Jodie looks once more at the suspended sails, then heads for the west passage.
    -> living_quarters
}

=== rigging_water_descent ===

~ route_log = route_log + " → Rigging Service Descent"

The ladder drops beside sweating water pipes.

No bedrooms. No doors. No people asking where she belongs.

Just steel rungs, valve housings, and the sound of water moving behind the walls.

{learned_ropes_of_life:
    She can follow the system by sound now.
}

Jodie keeps descending until the air turns colder.

A stenciled maintenance arrow points through a narrow hatch:

WATER STORAGE.

She has saved herself the crossing through Living.

She has also passed everyone who might have helped her there.

-> water_storage


=== living_quarters ===

~ visited_living = true
~ route_log = route_log + " → Living 120"

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

{rigging_crew_favor >= 2:
    Copperfield studies the fresh rope burn on her palm.

    "Rigging already knows you."

    Houdini looks mildly impressed.

    "That was quick."
}

{curiosity >= 3:
    She cannot tell whether the names are jokes, titles, or camouflage.
}

{defiance >= 2:
    She is already tired of being examined by strangers.
}

Houdini steps into the corridor and looks at her work clothes.

{rigging_knowledge >= 2:
    Houdini glances at the rope marks on her hands.

    "Rigging let you touch the load lines?"

    Jodie says nothing.

    "Then you listened."
- else:
    "Filtration doesn't wander."
}

* {rigging_knowledge >= 2} [Mention the load transfer she saw in Rigging.]
    ~ choice_log = choice_log + "HOUDINI: RIGGING TALK / "
    {learned_water_from_houdini == false:
        ~ water_knowledge += 1
        ~ learned_water_from_houdini = true
    }
    ~ story_insight += 1

    "The load does not move all at once. There is a handoff."

    Houdini's expression changes.

    "Good. Then watch for the same thing in Water Storage. Tank 4 gives up before Tank 5 fully takes it."

    {protection_houdini == false:
        ~ protection_houdini = true
        ~ protection_carried += 1
        ~ protection_log = protection_log + "HOUDINI TECHNICAL WARNING / "
    }

    ~ told_truth_to_houdini = true
    -> living_exit

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

    "Water Storage is cycling. Watch the timing."

    {protection_houdini == false:
        {learned_water_from_houdini == false:
            ~ water_knowledge += 1
            ~ learned_water_from_houdini = true
        }
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

Farther down the corridor, a door stands open beneath a hand-painted white stripe.

Inside are two cots, a birthing chair made from welded pipe, shelves of bandages, and a woman arguing with a leaking water canister.

Nobody calls it a hospital.

It is simply where this part of the Tower brings people who cannot make the trip to Medical.

Houdini looks toward the central spine.

"You're not crossing dressed like Filtration."

* [Wait for François and cross with the Water Maintainers.]
    ~ elapsed_time += 1

    A few minutes later, François appears with a mask and a water-maintenance suit.

    {water_maintainer_outfit == false:
        ~ water_maintainer_outfit = true
    }

    Jodie pulls the borrowed gear on.

    ~ choice_log = choice_log + "FRANCOIS DISGUISE / "
    -> spine_119

* {told_truth_to_houdini || solidarity >= 2} [Help carry the infirmary's water and leave with its supply run.]
    ~ elapsed_time += 2
    ~ solidarity += 1
    ~ living_clinic_favor += 1
    ~ carrying_clinic_supply = true
    ~ worker_reputation += 1
    ~ belonging += 1
    ~ choice_log = choice_log + "CLINIC SUPPLY RUN / "

    Jodie takes the leaking canister before the woman can ask who she is.

    "Not like that," the woman says.

    She turns the cracked seam upward and wraps it with a strip of rubber.

    "Now carry it."

    By the time the little supply group moves toward the Spine, Jodie is carrying something people expect to see moving between sections.

    -> spine_119

* {rigging_crew_favor >= 2} [Take the maintenance cut Copperfield points out.]
    ~ elapsed_time += 1
    ~ curiosity += 1
    ~ used_living_service_cut = true
    ~ independence += 1
    ~ choice_log = choice_log + "LIVING SERVICE CUT / "
    ~ route_log = route_log + " → Living Service Cut"

    Copperfield palms a card, then taps the wall behind him.

    The panel beside the pipe chase is already loose.

    "Rigging likes you," he says.

    "That buys exactly one bad idea."

    Jodie slips into the service cut.

    -> spine_119


=== spine_119 ===

{logged_spine_119 == false:
    ~ route_log = route_log + " → Spine 119"
    ~ logged_spine_119 = true
}

The corridor opens all at once.

For the first time since leaving Filtration, Jodie can see the Tower's split clearly.

West behind her.

East across the central gap.

Between them: the Spine.

People move through in controlled bursts. Water crews. Carts. Repair teams. A Guardian at a narrow checkpoint watches uniforms, loads, faces.

The crossing is not forbidden.

Belonging to the wrong place is.

{water_maintainer_outfit:
    The mask hides part of Jodie's face.

    The suit does the rest.

    François joins a Water Maintainer group without looking back to see whether she follows.

    * [Stay in formation and cross with them.]
        ~ spine_crossed_with_water_crew = true
        ~ choice_log = choice_log + "SPINE: WATER CREW / "

        Jodie keeps the same pace as everyone around her.

        Nobody asks her name.

        -> spine_119_exit

    * {curiosity >= 3} [Watch the checkpoint pattern before joining the next group.]
        ~ elapsed_time += 1
        ~ story_insight += 1
        ~ choice_log = choice_log + "SPINE: STUDY CHECKPOINT / "

        Jodie waits long enough to see the rule.

        The Guardian checks people.

        The clerk checks loads.

        Everyone watches the wrong authority.

        She joins the next Water crew when both are occupied.

        ~ spine_crossed_with_water_crew = true
        -> spine_119_exit

- else:
    {carrying_clinic_supply:
        The woman from the infirmary takes the front of the little supply group.

        Nobody has given Jodie a uniform.

        They have given her a reason to be here.

        * [Keep carrying the canister and let the errand explain her.]
            ~ spine_crossed_with_clinic_run = true
            ~ choice_log = choice_log + "SPINE: CLINIC RUN / "

            The Guardian looks at Jodie.

            Then at the water canister.

            Then at the white-striped medical bundle tucked under the woman's arm.

            "Move."

            Jodie moves.

            -> spine_119_exit
    - else:
        {used_living_service_cut:
            The maintenance cut ends behind a grated access panel overlooking the crossing.

            Jodie can see the checkpoint from the wrong side of its assumptions.

            * [Wait for a service cart to block the sightline.]
                ~ elapsed_time += 2
                ~ curiosity += 1
                ~ spine_crossed_service_gap = true
                ~ independence += 1
                ~ choice_log = choice_log + "SPINE: SERVICE GAP / "

                A cart stacked with filter housings squeals into the crossing.

                For three seconds, the Guardian cannot see the maintenance wall.

                Jodie uses all three.

                -> spine_119_exit

            * [Cross immediately before anyone notices the panel move.]
                ~ recklessness += 1
                ~ recklessness_log = recklessness_log + "SPINE DASH / "
                ~ tower_stress += 1
                ~ spine_crossed_service_gap = true
                ~ choice_log = choice_log + "SPINE: DASH / "

                Jodie pushes the grate just wide enough and goes.

                Someone shouts behind her.

                Not her name.

                Good enough.

                -> spine_119_exit
        }
    }
}


=== spine_119_exit ===

The East-side corridor closes around her.

The air is colder here.

Storage racks give way to valve housings, condensation, and the deep metal shapes of tanks packed too close together.

{spine_crossed_with_water_crew:
    François peels away without ceremony.

    The disguise got Jodie across.

    It will not get her through the machinery.
}

{spine_crossed_with_clinic_run:
    The infirmary group turns toward a service locker.

    The woman takes the patched canister back.

    "You carried it straight," she says.

    In this part of the Tower, that seems to count as thanks.
}

{spine_crossed_service_gap:
    Jodie reaches the mechanical side without a uniform, escort, or permission.

    That works exactly once.
}

Water Storage.

-> water_storage


=== water_storage ===

{logged_water_storage == false:
    ~ route_log = route_log + " → Water 118-113"
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

The Water complex is not one room.

It descends through the East side in stacked galleries: tank shells above, valve decks below, ladders and pipe risers threading the levels together.

Condensation turns every handrail cold.

{water_maintainer_outfit:
    The borrowed Water Maintenance gear gets her past the first glances. It does nothing about the machinery.
- else:
    In Filtration clothes, Jodie feels conspicuous before she even reaches the tanks.
}

{spine_crossed_with_clinic_run:
    A white stripe painted beside one service door matches the infirmary mark on the bundle she carried.

    For the first time, Jodie can see how the little clinic plugs into the same water network as everyone else.
}

{used_living_service_cut || used_rigging_water_descent:
    The maintenance logic is beginning to repeat itself: ladders beside risers, access panels where the formal corridor pretends there is only wall.
}

A warning light blinks above the Tank 4 gallery.

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
        ~ cross_department_competence += 1
        ~ elapsed_time += 1

        Jodie stays still for one complete exchange between Tank 4 and Tank 5.

        The handoff is not simultaneous.

        There is a fraction of a second when neither tank fully owns the load.

        -> water_storage
}

* [Wait and count the twelve-second cycle.]
    ~ pending_water_lesson += 1
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
    ~ pending_water_lesson += 1
    ~ choice_log = choice_log + "TRUST WARNING / "
    ~ solidarity += 1
    ~ elapsed_time += 1

    Jodie listens for the change in the pipes.

    When the sound drops, she goes.

    -> water_crossing

* {learned_ropes_of_life} [Read the water cycle by sound.]
    ~ pending_water_lesson += 1
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

* {water_knowledge >= 1 || used_living_service_cut || used_rigging_water_descent} [Take the inspection ladder around the purge throat.]
    ~ used_water_maintenance_bypass = true
    ~ cross_department_competence += 1
    ~ independence += 1
    ~ choice_log = choice_log + "WATER MAINTENANCE BYPASS / "
    ~ route_log = route_log + " → Water Inspection Ladder"
    ~ elapsed_time += 2
    ~ curiosity += 1

    The ladder is not a shortcut.

    It is what workers use when the main throat cannot be trusted.

    Jodie climbs down beside Tank 4, crosses a grated valve deck one level below the purge gate, then climbs again beside Tank 5.

    She never enters the twelve-second gap.

    She does learn why the gap exists.

    {water_knowledge < 2:
        ~ water_knowledge += 1
    }

    -> water_dispatch_113

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
        For half a second, the Tower is nothing but water, steel, and noise.
    }
}

Then she is through.

-> water_dispatch_113


=== water_dispatch_113 ===

The tank galleries narrow into the bottom of the node.

Level 113 is less dramatic than the rooms above it.

That makes it more important.

Feed pipes leave in bundles. Old belt housings disappear through concrete. Hand-painted arrows point toward AGRO, RESERVE, and WEST BALANCE.

Jodie can hear one line knocking out of rhythm.

{water_knowledge >= 2:
    She recognizes it as a feed problem, not a tank problem.

    Whatever is wrong is already traveling toward Agro.
}

{water_dispatch_insight == false && water_knowledge >= 1:
    * [Trace the knocking feed line before leaving.]
        ~ water_dispatch_insight = true
        ~ water_knowledge += 1
        ~ story_insight += 1
        ~ cross_department_competence += 1
        ~ elapsed_time += 1
        ~ choice_log = choice_log + "TRACE AGRO FEED / "

        Jodie follows the vibration through three brackets and one patched elbow.

        The line is not blocked.

        It is hunting for pressure.

        Agro is about to inherit whatever Water cannot smooth out.

        -> water_dispatch_113
}

* {water_knowledge >= 2 && water_feed_stabilized == false} [Reset the sticking feed valve before entering Agro.]
    ~ water_feed_stabilized = true
    ~ agro_arrival_controlled = true
    ~ elapsed_time += 1
    ~ solidarity += 1
    ~ worker_reputation += 1
    ~ cross_department_competence += 1
    ~ choice_log = choice_log + "STABILIZE AGRO FEED / "

    Jodie waits for the pressure to fall, then turns the valve only as far as the pipe will tolerate.

    The knocking softens.

    Not fixed.

    Stable enough to hand the problem to the next system without making it worse.

    -> water_dispatch_113

* {used_water_maintenance_bypass || water_knowledge >= 2} [Use the feed-service ladder into Agro.]
    ~ agro_arrival_controlled = true
    ~ elapsed_time += 1
    ~ choice_log = choice_log + "AGRO SERVICE ENTRY / "
    ~ route_log = route_log + " → Agro Feed Ladder"

    A maintenance ladder follows the outgoing water line through a hatch marked for service crews.

    Jodie takes it.

    -> agro

* [Take the normal hatch into Agro.]
    ~ choice_log = choice_log + "AGRO NORMAL HATCH / "

    Jodie shoulders through the ordinary transfer hatch.

    -> agro


=== agro ===

~ route_log = route_log + " → Agro 112-106"

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

{water_feed_stabilized:
    The transfer line beside the hatch is still trembling, but the ugly knocking has stopped.

    Whatever Jodie did in Water has arrived here before she has.
}

{agro_arrival_controlled:
    Jodie comes down the feed-service ladder onto a narrow maintenance rail near the top of the grow bay.

    Workers look up because she is somewhere she should not be, not because she has fallen.
- else:
    The normal hatch opens onto a service catwalk inside the upper grow bay.

    Jodie comes through too fast.

    Her wet boot skids.

    The catwalk edge disappears beneath her.

    She drops less than a story through hanging irrigation lines, catches one with both arms, swings badly, and tears through a rack of seedling trays below.

    "Wheeeee—"

    CRASH.

    Soil, leaves, and one offended watering nozzle come down with her.

    It hurts.

    It is not a six-floor fall.
}

A young man is already talking before anyone can decide what they saw.

{agro_arrival_controlled:
    "Service inspection," he says, loudly enough for the nearby workers to hear.

    He looks at Jodie.

    "Right?"
- else:
    "Pipe slip," he says.

    He points at the wet catwalk above her as if it has confessed.

    "Right?"
}

His name is Tyler.

{water_maintainer_outfit:
    Tyler's eyes flick over the borrowed Water Maintenance gear.

    He understands enough not to ask the obvious question first.
- else:
    His eyes pause on the Filtration clothes.
}

A whistle cuts through the grow bay.

Not an alarm.

Worse.

A supervisor is coming down the aisle, counting damaged trays.

Tyler lowers his voice.

"Pick a story and live in it."

* [Back Tyler's lie and start helping with the mess.]
    ~ agro_joined_shift = true
    ~ tyler_trust += 1
    ~ solidarity += 1
    ~ worker_reputation += 1
    ~ belonging += 1
    ~ elapsed_time += 1
    ~ choice_log = choice_log + "AGRO: JOIN SHIFT / "

    {agro_arrival_controlled:
        "Service inspection."
    - else:
        "Pipe slip."
    }

    Jodie is already lifting a tray before the supervisor reaches them.

    Tyler does not smile.

    That would ruin it.

    -> agro_supervisor

* {water_feed_stabilized} [Say Water sent her down because the Agro feed was hunting.]
    ~ agro_supervisor_attention += 1
    ~ institutional_visibility += 1
    ~ cross_department_competence += 1
    ~ tyler_trust += 1
    ~ story_insight += 1
    ~ choice_log = choice_log + "AGRO: WATER COVER / "

    "Water feed was hunting. I stabilized it upstairs."

    Tyler's eyebrows rise.

    The useful thing about the truth is that sometimes it sounds like permission.

    -> agro_supervisor

* [Ask Tyler why he is covering for her.]
    ~ curiosity += 1
    ~ agro_supervisor_attention += 1
    ~ choice_log = choice_log + "AGRO: QUESTION TYLER / "

    "Why are you helping me?"

    "Because we're out of time for philosophy."

    The supervisor is almost there.

    -> agro_supervisor

* [Slip into the workers moving the undamaged trays.]
    ~ agro_hid_in_workflow = true
    ~ independence += 1
    ~ elapsed_time += 1
    ~ curiosity += 1
    ~ choice_log = choice_log + "AGRO: HIDE IN WORKFLOW / "

    Jodie takes the handles of an intact tray cart and moves with it.

    Nobody announces that she belongs.

    For the next thirty seconds, nobody has time to prove that she doesn't.

    -> agro_supervisor


=== agro_supervisor ===

The supervisor arrives with a grease pencil tucked behind one ear.

Her eyes move from Tyler, to Jodie, to the broken trays.

"What happened?"

{agro_joined_shift:
    Tyler answers without looking up.

    "Pipe slip. We have it."

    The supervisor watches Jodie working.

    "Then have it faster."

    She moves on.

    ~ agro_cover_intact = true
}

{water_feed_stabilized && agro_joined_shift == false && agro_hid_in_workflow == false:
    Jodie points toward the feed line.

    "Pressure hunt from Water. It's stable now."

    The supervisor puts two fingers against the pipe and feels the softened vibration.

    "You're Water?"

    Jodie does not answer quickly enough.

    Tyler does.

    "Temporary."

    The supervisor gives both of them the kind of look that creates future paperwork.

    "Then be temporary somewhere useful."

    ~ agro_cover_intact = true
}

{agro_hid_in_workflow:
    The supervisor looks straight past Jodie.

    A worker shoves another tray cart into her hands.

    "Row six."

    Jodie goes to row six.

    ~ agro_cover_intact = true
}

{agro_joined_shift == false && water_feed_stabilized == false && agro_hid_in_workflow == false:
    Tyler opens his mouth.

    Jodie is still standing there in the wrong clothes with no useful object in her hands.

    The supervisor's eyes narrow.

    "Who are you?"

    ~ agro_cover_intact = false
    ~ agro_supervisor_attention += 2
    ~ institutional_visibility += 2

    Tyler drops a tray on purpose.

    The crash turns every head.

    "Now she's helping me clean that up."

    The supervisor swears at both of them and moves toward the fresh disaster.

    Tyler looks at Jodie.

    "You're welcome."

    ~ tyler_trust += 1
}

-> agro_work_pressure


=== agro_work_pressure ===

Agro is taller than it looked from the hatch.

Levels overlap inside the production volume: grow lights above, hanging lines below them, catwalks crossing open air, trays stepping down through the bay.

They are moving through a system that happens to contain floors, not a stack of identical rooms.

A worker shouts from the next lane.

One of the nutrient lines has kinked where a tray rack shifted.

Young plants are already beginning to sag.

Tyler looks at the line, then at Jodie.

"You can keep moving."

He says it like he means it.

* [Stop and help save the crop lane.]
    ~ agro_saved_crop_lane = true
    ~ solidarity += 1
    ~ tyler_trust += 1
    ~ worker_reputation += 1
    ~ belonging += 1
    ~ elapsed_time += 2
    ~ story_insight += 1
    ~ choice_log = choice_log + "AGRO: SAVE CROP / "

    Jodie grabs the rack while Tyler clears the kink.

    Someone farther down the line opens the feed.

    Water snaps through the hose.

    The leaves lift almost immediately.

    Nobody applauds.

    There are too many other things to do.

    -> agro_descend

* [Keep moving. Filtration still needs the part.]
    ~ defiance += 1
    ~ independence += 1
    ~ choice_log = choice_log + "AGRO: PRIORITIZE MISSION / "

    Jodie looks at the sagging plants.

    Then at the route down.

    She keeps moving.

    Tyler does not judge her.

    That almost makes it worse.

    -> agro_descend

* {agro_cover_intact} [Stay inside the shift until the supervisor loses track of her.]
    ~ agro_hid_in_workflow = true
    ~ worker_reputation += 1
    ~ belonging += 1
    ~ elapsed_time += 2
    ~ curiosity += 1
    ~ choice_log = choice_log + "AGRO: WORK THE SHIFT / "

    For a few minutes, Jodie becomes whatever hands are missing.

    Move trays.

    Hold a line.

    Duck under lights.

    Pass a tool.

    Nobody asks where Filtration ends and Agro begins while everybody is busy.

    -> agro_descend


=== agro_descend ===

The work lanes step downward through the node.

At Level 108, the old skybridge ends in open air.

Half of it is still attached to the East side, doors hanging crooked over the gap.

No choice menu appears.

Nobody uses it.

The workers route around it automatically, down a service gantry scarred by decades of boots.

~ agro_broken_bridge_seen = true

{agro_saved_crop_lane:
    The worker from row six catches up long enough to press a wrapped nutrient bar into Jodie's hand.

    "For the save."

    Then she is gone again.
}

{water_knowledge >= 2:
    ~ tyler_water_recognized = true

    Tyler watches Jodie glance at the feed pipe running beside the gantry.

    "You came through Water and you still know what that sound means?"

    "Mostly."

    His tone changes.

    Less teasing.

    More assessment.
}

By Level 106 the grow bays give way to transfer machinery and staging lanes.

Raw material is moving toward Distribution.

{honey_platform_available:
    The honey transfer platform is loading.
- else:
    The honey transfer motor tries to start and dies.

    Tyler glances toward it.

    "Honey platform's down."
}

{agro_cover_intact == false:
    "We should get you out before she remembers your face," Tyler says.
}

"You're a long way from Filtration."

* {water_knowledge >= 2} [Tell Tyler what she heard in the Water feed.]
    ~ choice_log = choice_log + "TYLER: WATER READ / "
    ~ curiosity += 1
    ~ story_insight += 1
    ~ cross_department_competence += 1
    ~ tyler_trust += 1

    "That transfer motor is slipping under load."

    Tyler looks at her properly now.

    "You hear that?"

    "I hear enough."

    "Then don't use the upper transfer if it starts hunting."

    -> agro_exit

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

* {tyler_trust >= 1} [Tease him for being so interested.]
    ~ flirted_with_tyler = true
    ~ tyler_trust += 1

    "You ask a lot of questions for somebody who just lied for me."

    Tyler smiles.

    "Occupational hazard."

    -> agro_exit


=== agro_exit ===

{pending_water_lesson > 0:
    ~ water_knowledge += pending_water_lesson
    ~ pending_water_lesson = 0
}

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

~ route_log = route_log + " → Distribution 105-103"

{elapsed_time >= 7:
    The shift has moved on without her.
}

{honey_platform_available:
    By the time Jodie reaches Distribution, she is sticky with honey and Tower grime.
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

Above them, a quota board clicks like an insect with a grudge.

* [Take the offered jumpsuit.]
    ~ distribution_jumpsuit = true
    ~ solidarity += 1
    ~ belonging += 1

    Jodie changes fast.

    The uniform smells faintly of soap and old sugar.

    -> distribution_quota

* [Rinse off and keep her Filtration clothes.]
    ~ curiosity += 1

    Jodie scrubs the honey from her sleeves and keeps moving.

    -> distribution_quota

* [Ignore the complaint and head for the floor.]
    ~ defiance += 1
    ~ independence += 1

    "I'm not staying."

    "That was obvious," the worker says.

    -> distribution_quota


=== distribution_quota ===

The board snaps to a new line.

ROW C — SIX CARTS
EIGHT CRATES EACH
PROCESSED: 52

A woman at the tally desk stares at it.

"That can't be right."

Four workers nearby stop pretending they are not listening.

If the count stays at fifty-two, their section clears quota and avoids overtime.

If the count is wrong, somebody will eventually discover inventory that does not exist.

{cross_department_competence >= 3:
    Jodie looks at the cart marks before she looks at the total.

    Six groups of eight.

    One returned cart has four crates still ghosted in the count.
- else:
    Jodie counts the loads in her head.

    Six carts.

    Eight crates on each.
}

What is the real total?

* [48]
    ~ distribution_quota_solved = true
    ~ cross_department_competence += 1
    ~ choice_log = choice_log + "DISTRIBUTION MATH:48 / "

    "Forty-eight."

    The tally woman looks at Jodie.

    Then at the board.

    "So we're four over on paper."

    -> distribution_quota_ethics

* [52]
    ~ distribution_math_missed = true
    ~ institutional_visibility += 1
    ~ choice_log = choice_log + "DISTRIBUTION MATH:52 WRONG / "

    "Fifty-two."

    The tally woman points at the carts.

    "That's what the board says. I'm asking what exists."

    A worker mutters, "Forty-eight."

    Jodie gets the answer a second late.

    -> distribution_quota_ethics

* [56]
    ~ distribution_math_missed = true
    ~ institutional_visibility += 1
    ~ choice_log = choice_log + "DISTRIBUTION MATH:56 WRONG / "

    "Fifty-six."

    The tally woman closes her eyes for one patient second.

    "Six times eight."

    "Right."

    "Forty-eight."

    -> distribution_quota_ethics


=== distribution_quota_ethics ===

The board still says fifty-two.

Nobody touches it.

The discrepancy is no longer a math problem.

It is a people problem.

* [Correct the tally before the error moves downstream.]
    ~ distribution_quota_corrected = true
    ~ worker_reputation += 1
    ~ cross_department_competence += 1
    ~ institutional_visibility += 1
    ~ choice_log = choice_log + "QUOTA: CORRECT / "

    Jodie taps the correction key.

    52 becomes 48.

    A groan moves through the workers.

    The tally woman does not thank her.

    "Inventory won't eat us tomorrow," she says.

    Someone else answers, "Overtime might eat us tonight."

    -> distribution_floor_pressure

* [Leave the inflated count alone so the section clears quota.]
    ~ distribution_quota_left_inflated = true
    ~ worker_reputation += 1
    ~ belonging += 1
    ~ choice_log = choice_log + "QUOTA: LEAVE INFLATED / "

    Jodie takes her hand off the board.

    Nobody celebrates.

    One worker simply exhales.

    "Four crates we don't have," the tally woman says.

    "Four crates of sleep," someone answers.

    -> distribution_floor_pressure

* [Use the four-crate mismatch as cover and move while the system thinks the space is occupied.]
    ~ distribution_quota_exploited = true
    ~ independence += 1
    ~ curiosity += 1
    ~ choice_log = choice_log + "QUOTA: EXPLOIT GAP / "

    Four crates exist on paper and nowhere on the floor.

    Jodie steps into that absence.

    A cart tag goes onto her wrist for less than a minute.

    To the tally system, she is freight already accounted for.

    -> distribution_floor_pressure

* [Leave the argument to Distribution and keep moving.]
    ~ independence += 1
    ~ choice_log = choice_log + "QUOTA: WALK AWAY / "

    Jodie lets the board keep clicking.

    Not every problem she understands belongs to her.

    -> distribution_floor_pressure


=== distribution_floor_pressure ===

The rest of the department moves around the quota board as if nothing happened.

Crates slide.

Names are shouted.

Numbers change.

People become counts and counts become permission.

{distribution_quota_corrected:
    The tally desk now knows Jodie's face.
}

{distribution_quota_left_inflated:
    A worker nudges an empty cart into her path, shielding her from the supervisor's view.

    A tiny favor.

    No speech attached.
}

{distribution_quota_exploited:
    The false cart tag opens a narrow service gate before the system notices that Jodie is not a crate.
}

{distribution_jumpsuit:
    In Distribution gray, fewer people look twice at her.
}

{told_tyler_mission:
    Tyler's directions line up with the service markings ahead.
}

At the far edge of the floor, Jodie finds the last visible routes toward the shaft.

* {distribution_jumpsuit || distribution_quota_exploited} [Use the staff service corridor.]
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

{distribution_quota_exploited:
    The false cart tag gets Jodie through the first gate.

    It dies at the second.

    Long enough.
- else:
    The gray jumpsuit does its work.
}

Jodie joins the flow behind the quota boards and through a narrow service corridor.

{told_tyler_mission:
    Tyler's directions make sense here.

    Left at the split.

    Down past the locked cage.
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

{distribution_quota_corrected:
    The tally woman sees her pass and gives the smallest possible nod.
}

{distribution_quota_left_inflated:
    The section has already gone back to work.

    Fifty-two glows above forty-eight real crates.
}

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
Visited Living: {visited_living}
Living clinic favor: {living_clinic_favor}
Living service cut used: {used_living_service_cut}
Spine crossing: {spine_crossed_with_water_crew:WATER_CREW|{spine_crossed_with_clinic_run:CLINIC_RUN|{spine_crossed_service_gap:SERVICE_GAP|NONE}}}
Rigging direct Water descent used: {used_rigging_water_descent}
Rigging 122 action: {helped_riggers:HELPED|{asked_rope_meaning:ASKED_ROPE|{rigging_consequence_pending:TESTED_CONTROL|{passed_rigging_untouched:TOUCHED_NOTHING|OTHER}}}}
Water Maintainer disguise obtained: {water_maintainer_outfit}
Random events: {random_events}
Random event log: {random_event_log}
Injury: {injury}
Time: {elapsed_time}
Story insight: {story_insight}
Rigging knowledge: {rigging_knowledge}
Rigging crew favor: {rigging_crew_favor}
Rigging 121 response: {rigging_121_problem_helped:BRACED|{rigging_121_problem_warned:WARNED|PASSED}}
Studied rigging transfer: {studied_rigging_transfer}
Water knowledge: {water_knowledge}
Water maintenance bypass: {used_water_maintenance_bypass}
Water dispatch insight: {water_dispatch_insight}
Water feed stabilized: {water_feed_stabilized}
Agro arrival controlled: {agro_arrival_controlled}
Agro cover intact: {agro_cover_intact}
Agro joined shift: {agro_joined_shift}
Agro crop lane saved: {agro_saved_crop_lane}
Agro hid in workflow: {agro_hid_in_workflow}
Agro supervisor attention: {agro_supervisor_attention}
Agro broken bridge seen: {agro_broken_bridge_seen}
Distribution quota solved: {distribution_quota_solved}
Distribution math missed: {distribution_math_missed}
Distribution quota outcome: {distribution_quota_corrected:CORRECTED|{distribution_quota_left_inflated:LEFT_INFLATED|{distribution_quota_exploited:EXPLOITED|WALKED_AWAY}}}
Learned Water from Houdini: {learned_water_from_houdini}
Pending Water lesson: {pending_water_lesson}
Studied water cycle: {studied_water_cycle}
Elevator knowledge: {elevator_knowledge}
Studied elevator catch: {studied_elevator_catch}
Curiosity: {curiosity}
Tyler trust: {tyler_trust}
Character recognition: HOUDINI_RIGGING={rigging_knowledge >= 2:ON|OFF} / TYLER_WATER_RECOGNIZED={tyler_water_recognized:ON|OFF}

Long-term tracks: WORKER_REP={worker_reputation} / VISIBILITY={institutional_visibility} / COMPETENCE={cross_department_competence} / BELONGING={belonging} / INDEPENDENCE={independence}
Emerging identity: {worker_reputation >= 4:WORKER-TRUSTED|{cross_department_competence >= 5:SYSTEMS-CAPABLE|{belonging >= 4:EMBEDDED|{independence >= 4:SELF-DIRECTED|UNFORMED}}}}
Institutional profile: {institutional_visibility >= 4:KNOWN|{institutional_visibility >= 2:NOTICED|LOW}}

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
