/obj/mecha/combat/advanced
	desc = "Enclave Power Armor"
	name = "\improper Advanced Power Armor"
	icon_state = "advancedup"
	step_in = 5
	obj_integrity = 500
	max_integrity = 500
	deflect_chance = 25
	armor = list(melee = 50, bullet = 55, laser = 40, energy = 30, bomb = 30, bio = 0, rad = 0, fire = 100, acid = 100)
	max_temperature = 60000
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	infra_luminosity = 3
	wreckage = /obj/structure/mecha_wreckage/marauder
	internal_damage_threshold = 25
	force = 1
	max_equip = 4
	bumpsmash = 1


/obj/mecha/combat/advanced/GrantActions(mob/living/user, human_occupant = 0)
	..()
	defense_action.Grant(user, src)

/obj/mecha/combat/advanced/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	defense_action.Remove(user)

/obj/mecha/combat/advanced/loaded/New()
	..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/energy/pulse(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/launcher/missile_rack(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay(src)
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/antiproj_armor_booster(src)
	ME.attach(src)