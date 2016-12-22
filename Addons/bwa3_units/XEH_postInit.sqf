#include "script_component.h"

_fnc_applyInsignia = {
    private _unit = call CBA_fnc_currentUnit;

    if (uniform _unit select [0, 5] != "BWA3_") exitWith {};

    private _insignia = switch (profileNameSteam) do {
        case "commy2": {"BWA3_insignia_name_commy2"};
        case "Ghost": {"BWA3_insignia_name_Ghost"};
        case "Hambuger SV": {"BWA3_insignia_name_Hambuger_SV"};
        case "Hawkins": {"BWA3_insignia_name_Hawkins"};
        case "Ir0n1E": {"BWA3_insignia_name_ir0n1E"};
        case "Kickapoo": {"BWA3_insignia_name_Kickapoo"};
        case "KoffeinFlummi": {"BWA3_insignia_name_Koffeinflummi"};
        case "marc_book": {"BWA3_insignia_name_marc_book"};
        case "Snorri": {"BWA3_insignia_name_Snorri"};
        case "Tonic": {"BWA3_insignia_name_Tonic"};
        default {""};
    };

    if (_insignia != "") then {
        [_unit, _insignia] call BIS_fnc_setUnitInsignia;
    };
};

[missionNamespace, "arsenalClosed", _fnc_applyInsignia] call BIS_fnc_addScriptedEventHandler;

call _fnc_applyInsignia;
