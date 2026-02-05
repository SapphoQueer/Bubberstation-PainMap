//Underwear and extra slots
/// Slot to indicate it's an extra slot
#define ITEM_SLOT_EXTRA (1<<23) //this will work until TG decides to use this value for a slot for some reason
/// Underwear slot
#define ITEM_SLOT_UNDERWEAR ITEM_SLOT_EXTRA | (1<<0)
/// Socks slot
#define ITEM_SLOT_SOCKS ITEM_SLOT_EXTRA | (1<<1)
/// Shirt slot
#define ITEM_SLOT_SHIRT ITEM_SLOT_EXTRA | (1<<2)
/// Bra slot
#define ITEM_SLOT_BRA ITEM_SLOT_EXTRA | (1<<3)

/datum/bitfield/no_equip_flags/New()
	var/list/extra_flags = list(
		"BRIEFS" = ITEM_SLOT_UNDERWEAR,
		"SOCKS" = ITEM_SLOT_SOCKS,
		"SHIRT" = ITEM_SLOT_SHIRT,
		"BRA" = ITEM_SLOT_BRA,
	)
	flags += extra_flags
	. = ..()
