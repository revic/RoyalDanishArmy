/*
 * Author: commy2
 * Prints all BW soldier classes in RPT file. Used for debugging.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Public: No
 */
#include "script_component.h"

private ["_allSoldiers", "_inventory"];

_allSoldiers   = "configName _x find ""BWA3_"" == 0 && {getNumber (_x >> ""scope"") == 2} && {getText (_x >> ""simulation"") == ""soldier""}" configClasses (configFile >> "Cfgvehicles");

_inventory = [];

{
    private ["_weapons", "_magazines", "_uniform", "_items", "_linkedItems"];

    _weapons = getArray (_x >> "weapons");
    _magazines = getArray (_x >> "magazines");
    _uniform = getText (_x >> "uniformClass");
    _items = getArray (_x >> "items");
    _linkedItems = getArray (_x >> "linkedItems");

    _inventory pushBack [_weapons, _magazines, [_uniform] + _items + _linkedItems];
    false
} count _allSoldiers;

diag_log text "[table]";

{
    diag_log text "[tr]";

    _soldier = configName (_allSoldiers select _forEachIndex);
    diag_log text format ["[td]%1[/td]", _soldier];

    params ["_weapons", "_magazines", "_items"];

    _weapons = + _weapons;
    _magazines = + _magazines;
    _items = + _items;

    private _max = count _weapons max count _magazines max count _items;

    {
        for "_i" from 0 to (_max - 1) do {
            if (isNil {_x select _i}) then {
                _x set [_i, ""];
            };
        };
        false
    } count [_weapons, _magazines, _items];

    for "_i" from 0 to (_max - 1) do {
        diag_log text "[tr]";
        diag_log text format ["[td][/td] [td]%1[/td] [td]%2[/td] [td]%3[/td]", _weapons select _i, _magazines select _i, _items select _i];
        diag_log text "[/tr]";
    };
    false
} count _inventory;

diag_log text "[/table]";
