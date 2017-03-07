/*
file: fn_robShops.sqf
Author: MrKraken
Description:
Executes the rob shob action!
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_rip = false;

if(side _robber != civilian) exitWith { hint "Você não pode roubar este posto!" };
if(_robber distance _shop > 5) exitWith { hint "Você precisa estar pelo menos 5m do caixa para rouba-lo!" };
if (vehicle player != _robber) exitWith { hint "Desça do seu veículo!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber isEqualTo "") exitWith { hint "KKK! Vaza daqui trombadinha. Não tenho medo de você!" };
if (_rip) exitWith { hint "Roubo já em andamento!" };

_rip = true;
_kassa = 40000 + round(random 20000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 10) then {[1,format["ALARM! - Posto de Gasolina: %1 está sendo assaltado!", _shop]] remoteExec ["life_fnc_broadcast",west]; };
[_shop,"robberyalarm"] remoteExec ["life_fnc_say3D",0];

_cops = (west countSide playableUnits);
if(_cops < 3) exitWith{hint "Não há policiais suficientes para o roubo!";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Assalto em andamento, fique próximo em (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;

if(_rip) then
{
while{true} do
{
sleep 1;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Assalto em andamento, fique próximo em (10m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				                _marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
				                "Marker200" setMarkerColor "ColorRed";
				                "Marker200" setMarkerText "!Atenção! ASSALTO !Atenção!";
				                "Marker200" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "Você precisa ficar a 10m da caixa registradora! - Agora ela foi trancada."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["Você roubou $%1, vaza antes que os coxinhas cheguem!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "Marker200"; // by ehno delete maker
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"211"] remoteExec ["life_fnc_wantedAdd",2];
};
sleep 300;
_action = _shop addAction["Assaltar o posto.",life_fnc_robstore];
_shop switchMove "";