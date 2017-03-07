/*
 File: fn_ceintureSecurite.sqf
 Author: Igore
 Description:
 Ceinture de Securite + Ejection au crash si pas de ceinture
*/

while {true} do
{
	if(vehicle player != player) then
	{
		if (!life_ceinturesecurite) then
		{
			if(speed vehicle player > 60) then
			{
				oldVehVelocity = velocity (vehicle player);
				sleep 0.5;
				if(speed vehicle player < 4) then
				{
					moveOut player;
					player setVelocity [(oldVehVelocity select 0) * 2,(oldVehVelocity select 1) * 2,((oldVehVelocity select 2) * 2) + 5];
				};
			};
		};
	} else {
	life_ceinturesecurite = false;
	};
	sleep 0.3;
};