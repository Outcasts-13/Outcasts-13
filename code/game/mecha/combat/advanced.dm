/obj/mecha/combat/advanced
	desc = "Enclave Power Armor"
	name = "\improper Advanced Power Armor"
	icon_state = "advanced"
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

/obj/mecha/combat/advanced/GrantActions(mob/living/user, human_occupant = 0)
	..()
	defense_action.Grant(user, src)

/obj/mecha/combat/advanced/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	defense_action.Remove(user)
