/*
file: fn_robBank.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob bank action!
Idea developed by PEpwnzya v1.0
Revised by Igore - Cheetah-Games.com
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "Você não pode sair de perto" };
if(_robber distance _shop > 5) exitWith { hint "Você tem que está a pelo menos 5 metros" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Você está roubando." };
if (vehicle player != _robber) exitWith { hint "Saia do seu veículo!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "Você quer me assaltar sem uma arma? Suma daqui antes que eu te mande pro inferno." };
if (_kassa == 0) exitWith { hint "O banco está vazio. Acabamos de enviar o dinheiro para a Reserva Federal!" };

_rip = true;
_kassa = 100000 + round(random 50000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance < 100) then { hint "O funcionario do banco ligou o alarme, a polícia foi alertada!"; [1,format["ALERTA DE ROUBO: %1 Está sendo roubado!", _shop]] remoteExecCall ["life_fnc_broadcast",west]; }; //une chance sur 2 que la police sois contacter pendant le braquage

_cops = (west countSide playableUnits);
if(_cops < 4) exitWith{[_vault,-1] remoteExecCall ["disableSerialization"]; hint "Não há policiais suficientes! (Mínimo: 4)";}; 
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Tempo para abertura do cofre (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
while{true} do
{
sleep 0.8;
_cP = _cP + 0.003;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Tempo para abertura do cofre (10m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				                _marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
				                "Marker200" setMarkerColor "ColorRed";
				                "Marker200" setMarkerText "ROUBO A BANCO: FIQUE LONGE";
				                "Marker200" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "Você precisa ficar 10m para o roubo continua!"; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["Você roubou $%1, Agora saia, os policiais estão vindo.",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "Marker200"; // by ehno delete maker
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (60 + random(300));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"211"] remoteExecCall ["life_fnc_wantedAdd"];
};
sleep 7200;
_action = _shop addAction["Braquer le guichet",life_fnc_robBank];
_shop switchMove "";