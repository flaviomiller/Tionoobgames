#include "..\..\script_macros.hpp"

private["_unit", "_blindfold"];
_unit = cursorTarget;
if (isNull _unit) exitWith {}; //Not valid
if (player isEqualTo _unit) exitWith {};
if (side player isEqualTo civilian) then
{
	if (life_inv_blindfold < 1) then
	{
		_blindfold = false;
	}
	else
	{
		_blindfold = true;
		life_inv_blindfold = life_inv_blindfold - 1;
		hint "Usou saco de sequestro! A vitima está desesperada!.";
	}
};

if ( (!_blindfold) && (side player isEqualTo civilian) ) exitWith { hint "You have no blindfold."; };
if (!isPlayer _unit) exitWith {};

//Broadcast!
player say3D "zip";

_unit setVariable["masked",true,true];
[_unit] remoteExecCall ["life_fnc_masked",_unit];
[0,"STR_NOTF_Blindfold",true,[_unit getVariable ["realname", name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",civilian];