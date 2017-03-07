#include "..\..\script_macros.hpp"
/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Retrains the client.
*/
private["_civ","_player"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
if (isNull _civ) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};

		if (!(player getVariable ["civrestrained",FALSE])) exitWith {};
		if ((player getVariable ["civrestrained",false])) exitWith {
			player setVariable ["civrestrained",FALSE,TRUE];
			player setVariable ["Escorting",FALSE,TRUE];
			player setVariable ["masked",false,true];
			player setVariable ["transporting",false,true];
			detach player;
			titleText[localize "STR_Civ_ExcessiveRestrain","PLAIN"];
		};
	};
};

titleText[format[localize "STR_Civ_Retrained",_civ getVariable["realname",name _civ]],"PLAIN"];

while {player getVariable "civrestrained"} do
{
	if (vehicle player isEqualTo player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};

	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getVariable "civrestrained") || vehicle player != _state};

	if (!alive player) exitWith
	{
		player setVariable ["civrestrained",false,true];
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		detach _player;
	};

	if (!alive _civ) exitWith {
		player setVariable ["Escorting",false,true];
		detach player;
	};

	if (vehicle player != player) then
	{
		//disableUserInput true;
		if (driver (vehicle player) isEqualTo player) then {player action["eject",vehicle player];};
	};
};

//disableUserInput false;

if (alive player) then
{
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	detach player;
};
