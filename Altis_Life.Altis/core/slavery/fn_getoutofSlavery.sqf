/*
	File: fn_getoutofSlavery.sqf
	@Foamy
	www.strainonline.com
	www.strainmod.com	
	Description:
	Gets the player out of Slavery.
*/

if(playerSide == west) then {
    if(life_inv_cigarette != 70) exitWith {hint "Aprenda a contar! Quero no mínimo 70 cigarros, fedor."};
	if(life_inv_cigarette >= 70) then 
	{
		[false,"cigarette",70] call life_fnc_handleInv;
		player setPos (getMarkerPos "slave_trader_release");
		slave_task1 setTaskState "Você ganhou sua liberdade!";
		player removeSimpleTask slave_task1;
	}
} else {
        if(life_inv_cigarette != 40) exitWith {hint "Aprenda a contar!! Quero no mínimo 40 cigarros, fedor."};
	if(life_inv_cigarette >= 40) then 
	{
		[false,"cigarette",40] call life_fnc_handleInv;
		player setPos (getMarkerPos "slave_trader_release");
		slave_task1 setTaskState "Você ganhou sua liberdade!!";
		player removeSimpleTask slave_task1;
	}
};

life_enslaved = false;
player setVariable["enslaved",true,true];
sleep (30 * 60);
player setVariable["enslaved",false,true];
hint "Fica esperto, vamos te pegar novamente!";