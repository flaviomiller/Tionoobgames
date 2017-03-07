#include "..\..\script_macros.hpp"

private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "siren3"}) exitWith {};

For "_i" from 0 to 1 step 0 do {
    if(!(_vehicle getVariable "siren3")) exitWith {};
    if(count (crew (_vehicle)) isEqualTo 0) then {_vehicle setVariable["siren3",false,true]};
    if(!alive _vehicle) exitWith {};
    if(isNull _vehicle) exitWith {};
    _vehicle say3D "SirenPers";
    sleep 8.0;
    if(!(_vehicle getVariable "siren3")) exitWith {};
};