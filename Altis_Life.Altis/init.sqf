/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Load Briefing
};
    [] execVM "KRON_Strings.sqf";
    [] execVM "custom\safezone.sqf";
    [] execVM "custom\safezone_empresas.sqf";
    [] execVM "custom\safezone_rebeldes.sqf";
    [] execVM "custom\safezone_tribunal.sqf";
    [] execVM "custom\safezone_ilegais.sqf";
    [] execVM "custom\deletetask.sqf";
    [] execVM "custom\IntLight.sqf";
    [] execVM "custom\irstrobe.sqf";
    [] execVM "custom\clean.sqf";
    [] execVM "core\scripts\fn_statusBar.sqf";

//no rain please
[] spawn {
	while{true} do {
		sleep 10;
		200 setRain 0;
		sleep 590;
	};
};

StartProgress = true;
