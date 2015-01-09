// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_enemy_ac130_LMG_saw (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE ENEMYINFO
defaultmdl="body_complete_sp_spetsnaz_boris_sp_ac130"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
ENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
*/
main()
{
	self.animTree = "";
	self.team = "axis";
	self.type = "human";
	self.accuracy = 0.2;
	self.health = 150;
	self.weapon = "saw";
	self.secondaryweapon = "beretta";
	self.sidearm = "beretta";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	self setEngagementMinDist( 512.000000, 400.000000 );
	self setEngagementMaxDist( 1024.000000, 1250.000000 );

	character\character_sp_spetsnaz_ac130::main();
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\character_sp_spetsnaz_ac130::precache();

	precacheItem("saw");
	precacheItem("beretta");
	precacheItem("beretta");
	precacheItem("fraggrenade");
}
