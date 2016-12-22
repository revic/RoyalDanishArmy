/*
 * Author: commy2
 * Add random BW glasses to BW soldiers.
 *
 * Arguments:
 * 0: unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Public: No
 */
#include "script_component.h"

params ["_unit"];

if !(local _unit && {_unit getVariable ["BIS_enableRandomization", true]}) exitWith {};

// select random glasses
private _allGoggles = getArray (configFile >> "CfgVehicles" >> typeOf _unit >> "BWA3_allowedFacewear");

if (count _allGoggles < 2) exitWith {};

private _random = _allGoggles select 0;

_allGoggles deleteAt 0;

if (random 1 < _random) then {
    _unit addGoggles (_allGoggles select floor random count _allGoggles);
} else {
    removeGoggles _unit;
};
