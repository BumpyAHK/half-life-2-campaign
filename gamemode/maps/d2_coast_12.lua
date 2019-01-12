INFO_PLAYER_SPAWN = { Vector( 4830, -12136, 300 ), 90 }

NEXT_MAP = "d2_prison_01"


-- Player initial spawn
function hl2cPlayerInitialSpawn( ply )

	ply:SendLua( "table.insert( FRIENDLY_NPCS, \"npc_antlion\" )" )

end
hook.Add( "PlayerInitialSpawn", "hl2cPlayerInitialSpawn", hl2cPlayerInitialSpawn )


-- Player spawns
function hl2cPlayerSpawn( ply )

	ply:Give( "weapon_crowbar" )
	ply:Give( "weapon_pistol" )
	ply:Give( "weapon_smg1" )
	ply:Give( "weapon_357" )
	ply:Give( "weapon_frag" )
	ply:Give( "weapon_physcannon" )
	ply:Give( "weapon_shotgun" )
	ply:Give( "weapon_ar2" )
	ply:Give( "weapon_rpg" )
	ply:Give( "weapon_crossbow" )
	ply:Give( "weapon_bugbait" )

end
hook.Add( "PlayerSpawn", "hl2cPlayerSpawn", hl2cPlayerSpawn )


-- Initialize entities
function hl2cMapEdit()

	game.SetGlobalState( "antlion_allied", GLOBAL_ON )

	ents.FindByName( "player_spawn_items_maker" )[ 1 ]:Remove()

	table.insert( FRIENDLY_NPCS, "npc_antlion" )

end
hook.Add( "MapEdit", "hl2cMapEdit", hl2cMapEdit )
