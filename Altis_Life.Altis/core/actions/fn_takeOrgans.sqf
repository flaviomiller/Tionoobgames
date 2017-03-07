/*
	file: fn_takeOrgans.sqf
	author: [midgetgrimm] - www.grimmlife.com

	taken from the same idea of robbing script by tonic
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //if unit is null, than NO
if(!([false,"scalpel",1] call life_fnc_handleInv)) exitWith {"Você não tem um bisturi"};
if((_unit getVariable ["missingOrgan",FALSE])) exitWith {};//must not be missing organ already
if((player getVariable ["hasOrgan",FALSE])) exitWith {};//thief must not have already robbed an organ within last 5 mintues
if((animationState _unit != "Incapacitated")) exitWith {};//victim must be knocked out
if(player == _unit) exitWith {};//if the thief is the cursor target(dafuq) than NO
if(!isPlayer _unit) exitWith {};//iff the cursor target is not a player than NO
if(life_inv_kidney >= 2) exitWith {hint "Você possivelmente não precise se um rim"};
if(!([true,"kidney",1] call life_fnc_handleInv)) exitWith {hint "Você não tem espaço para armazenar qualquer órgão!"};//if no room for kidney, you cannot take their kidney, duh, waste not want not
life_action_inUse = true;//sets action to true as to prevent kidney spammming!!!!!!!!
player setVariable["hasOrgan",true,true];//sets variable on thief, so as not to consistently take organs, set to 5 minute cooldown
player playMove "AinvPknlMstpSnonWnonDnon_medic";//makes the thief do an animation as to seem like they are doing surgery
sleep 3;//length of action, had weird results with any higher - obv not realistic, but whatever
_unit setVariable["missingOrgan",true,true];//sets the missing organ variable so effects can take place
life_action_inUse = false;
[[player], "life_fnc_hasOrgan", _unit, false] spawn life_fnc_MP;