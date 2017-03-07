/*
	File: fn_playSound.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_sound = [_this,1,"",[""]] call BIS_fnc_param;

if (isNil "_unit" OR isNull _unit OR _sound == "") exitWith {};

_unit say3D _sound;