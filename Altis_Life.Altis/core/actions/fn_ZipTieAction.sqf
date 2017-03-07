#include "..\..\script_macros.hpp"
/*
	File: fn_ZipTieAction.sqf
	Author: Bryan "Tonic" Boardwine
	Description: Retrains the target.
*/
private["_unit", "_ziptied"];
_unit = cursorTarget;
if (isNull _unit) exitWith {}; //Not valid
if ((_unit getVariable "restrained")) exitWith {};
if (player isEqualTo _unit) exitWith {};
if (playerside isEqualTo civilian or playerside isEqualTo west) then
{
	if (life_inv_zipties < 1) then
	{
		_ziptied = false;
	}
	else
	{
		_ziptied = true;
		life_inv_zipties = life_inv_zipties - 1;
		_unit setVariable["ziptied",true,true];
		hint "You have cuffed him.";
	}
};

if ( (!_ziptied) && (side player isEqualTo civilian or side player isEqualTo west) ) exitWith { hint "You have no zipties."; };
if (!isPlayer _unit) exitWith {};
//Broadcast!
player say3D "cuff";

_unit setVariable["restrained",true,true];
[player] remoteExec ["life_fnc_restrain",_unit];
[0,"STR_NOTF_Ziptied",true,[_unit GetVariable["realname", name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",civilian];