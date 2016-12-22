/*
 * Author: commy2
 * Add Task Force Arma Radio backpacks to radioman classes if TFAR is loaded.
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: backpack radio <STRING>
 *
 * Return Value:
 * None
 *
 * Public: No
 */
#include "script_component.h"

if (!isServer) exitWith {};

params ["_unit", "_backpack"];

if (!isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) exitWith {};

if (backpack _unit == "") then {
    _unit addBackpack _backpack;
};
