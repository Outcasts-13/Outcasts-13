/obj/mecha/combat/t51
	desc = "The most common power armour before the outbreak of the war."
	name = "\improper T51 Power Armour"
	icon_state = "t51"
	step_in = 4
	dir_in = 1 //Facing North.
	obj_integrity = 400
	max_integrity = 400
	deflect_chance = 20
	armor = list(melee = 40, bullet = 35, laser = 15, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 100, acid = 100)
	max_temperature = 30000
	infra_luminosity = 8
	force = 40
	wreckage = /obj/structure/mecha_wreckage/durand

/obj/mecha/combat/t51/GrantActions(mob/living/user, human_occupant = 0)
	..()
	defense_action.Grant(user, src)

/obj/mecha/combat/t51/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	defense_action.Remove(user)
