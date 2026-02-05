/datum/outfit
	/// Slot for underwear like boxers and panties
	var/w_underwear = null
	/// Slot for socks, yes, the thing that usually goes before your shoes
	var/w_socks = null
	/// Slot for the undershirt (which is quite a foreign concept to me)
	var/w_shirt = null
	/// Slot for the bra.
	var/w_bra = null

/datum/outfit/apply_fingerprints(mob/living/carbon/human/user)
	. = ..()
	if(!.)
		return

	if(user.w_underwear)
		user.w_underwear.add_fingerprint(user, ignoregloves = TRUE)
	if(user.w_shirt)
		user.w_shirt.add_fingerprint(user, ignoregloves = TRUE)
	if(user.w_bra)
		user.w_bra.add_fingerprint(user, ignoregloves = TRUE)
	if(user.w_socks)
		user.w_socks.add_fingerprint(user, ignoregloves = TRUE)

/datum/outfit/get_types_to_preload()
	. = ..()
	. += w_underwear
	. += w_shirt
	. += w_bra
	. += w_socks

/datum/outfit/get_json_data()
	. = ..()
	.["w_underwear"] = w_underwear
	.["w_shirt"] = w_shirt
	.["w_bra"] = w_bra
	.["w_socks"] = w_socks

/datum/outfit/copy_from(datum/outfit/target)
	. = ..()
	w_underwear = target.w_underwear
	w_shirt = target.w_shirt
	w_bra = target.w_bra
	w_socks = target.w_socks

/datum/outfit/load_from(list/outfit_data)
	. = ..()
	w_underwear = text2path(outfit_data["w_underwear"])
	w_shirt = text2path(outfit_data["w_shirt"])
	w_bra = text2path(outfit_data["w_bra"])
	w_socks = text2path(outfit_data["w_socks"])
