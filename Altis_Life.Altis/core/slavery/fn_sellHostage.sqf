/*
	File: fn_sellHostage.sqf
	@Foamy
	www.strainonline.com
	www.strainmod.com
	Description:
	Sells the targeted person into Slavery.
*/

private["_unit","_rate"];
_rate = 20000; // change this to change payout.
_unit = cursorTarget;
if(isNull _unit) exitWith {hint "null Target"};
if(!(_unit getVariable ["restrained",false])) exitWith {hint "O alvo não está algemado!"};
//if(!(_unit getVariable ["hostage",false])) exitWith {hint "Target is not a Hostage!"};
if((_unit getVariable ["enslaved",false])) exitWith { hint "Sua vitíma já foi escravizada recentemente, você deve aguardar para escraviza-la novamente."};
if((player getVariable ["slaver",false])) exitWith { hint "Você escravizou alguém recentemente e deve aguardar para escravizar novamente."};
//if(playerSide isEqualTo west) exitWith {hint "Policials não podem vender reféns!"};
//if(side _unit isEqualTo west) exitWith {hint "Policiais não podem ser vendidos!"};
if(side _unit isEqualTo independent) exitWith {hint "Médicos não podem ser escravizados"};
if(player isEqualTo _unit) exitWith {hint "Você não pode se escravizar!"};
if(!isPlayer _unit) exitWith {hint "Isto não é um jogador!"};
if(life_slaver) exitWith {hint "Você já escravizou alguém recentemente, é necessário aguardar mais um pouco!"}; 
if((player distance (getMarkerPos "slave_trader_marker") > 10)) exitWith {hint "Você não está proximo o suficiente do comprador de escravos."};
if((player distance (getMarkerPos "slave_trader_marker") < 10)) then
{
    [getPlayerUID player,player getVariable["realname",name player],"236"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
	detach _unit;
	[_unit,false] remoteExecCall ["life_fnc_sellHostageAction",_unit,false];
};
life_cash = life_cash + _rate;
hint "Você ganhou $ 20000 vendendo aquele tolo.";
life_slaver = true;
player setVariable["slaver",true,true];
sleep (30 * 60);
life_slaver = false;
player setVariable["slaver",false,true];
hint "Preciso de mais pessoas, se quiser mais alguma grana traga mais.";