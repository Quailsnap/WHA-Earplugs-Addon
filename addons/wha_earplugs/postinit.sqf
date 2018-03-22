//------------------------------------------------------------------------------------
//	Initializing for player.
//------------------------------------------------------------------------------------

//	Let the player initialize properly.
waitUntil{!isNull player};
waitUntil{player == player};

//	Wait for player to get ingame.
waitUntil {!isNull (findDisplay 46)};

//	Reducing volume if player has set that as default.
if WHA_EP_DEFAULT then { call wha_ep_fnc_insert };

//	Updating player eventhandlers for respawning and getting in vehicles.
call wha_ep_fnc_updateHandlers;

//	Script tracing.
diag_log "[WHA-EP] Initialization finished.";


//------------------------------------------------------------------------------------
//	Adding earplug actions to player.
//------------------------------------------------------------------------------------

//	Add earplug self-interact or addaction.
if WHA_EP_ACTION then { call wha_ep_fnc_updateAction; };
