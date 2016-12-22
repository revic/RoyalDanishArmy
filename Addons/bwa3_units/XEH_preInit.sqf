#include "script_component.h"

ADDON = false;

#include "XEH_PREP.sqf"

["CAManBase", "InitPost", BWA3_fnc_randomizeFacewear] call CBA_fnc_addClassEventHandler;

["BWA3_recon_Radioman_Fleck", "Init", {
    [_this select 0, "tf_rt1523g_big_bwmod"] call BWA3_fnc_addBackpackRadio;
}, true, ["BWA3_recon_Radioman_Tropen"]] call CBA_fnc_addClassEventHandler;

["BWA3_recon_Radioman_Tropen", "Init", {
    [_this select 0, "tf_rt1523g_big_bwmod_tropen"] call BWA3_fnc_addBackpackRadio;
}] call CBA_fnc_addClassEventHandler;

ADDON = true;
