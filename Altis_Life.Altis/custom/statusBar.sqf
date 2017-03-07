waitUntil {
	!(isNull(findDisplay 46))
};
disableSerialization;
/*

File: fn_statusBar.sqf

Author: Some French Guy named Osef I presume, given the variable on the status bar

Edited by: [midgetgrimm]

Description: Puts a small bar in the bottom right of screen to display in-game information



*/

4 cutRsc["osefStatusBar", "PLAIN"];
//systemChat format["F.T.I ALTIS LIFE - CARREGANDO INFORMAÇÕES...", _rscLayer];

[] spawn {
	sleep 1;
	_fpscolour = '#008000';
	_counter = 180;
	_timeSinceLastUpdate = 0;
	_fps = round diag_fps;
	while {
		true
	}
	do {
		_fps = round diag_fps;
		if (_fps >= 30) then {
			_fpscolour = "color= '#008000'";
		} else {
			if (_fps >= 20) then {
				_fpscolour = "color= '#FFFF00'";
			} else {
				_fpscolour = "color= '#FF0000'";
			}
		};
		sleep 1;
		_counter = _counter - 1;
		if(playerSide == west OR playerSide == independent) then {
			((uiNamespace getVariable "osefStatusBar") displayCtrl 1000) ctrlSetStructuredText parseText format["<t %1 size='1' font='PuristaSemibold'>FPS: %2</t> | <t color='#0075FF' size='1' font='PuristaSemibold'>Cops: %3</t> | <t color='#660080' size='1' font='PuristaSemibold'>Civs: %4</t> | <t color='#008000' size='1' font='PuristaSemibold'>Medicos: %5</t> | <t color='#F06901' size='1' font='PuristaSemibold'>Carteira: %6</t> | <t color='#FF8C00' size='1' font='PuristaSemibold'>Banco: %7</t> | <t color='#FF0000' size='1' font='PuristaSemibold'>Tempo ON: %8</t>",_fpscolour, _fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, [life_cash] call life_fnc_numberText, [life_atmcash] call life_fnc_numberText, [serverTime, "HH:MM:SS"] call BIS_fnc_secondsToString];
		}else{
			((uiNamespace getVariable "osefStatusBar") displayCtrl 1000) ctrlSetStructuredText parseText format["<t %1 size='1' font='PuristaSemibold'>FPS: %2</t> | <t color='#0075FF' size='1' font='PuristaSemibold'>Cops: %3</t> | <t color='#660080' size='1' font='PuristaSemibold'>Civs: %4</t> | <t color='#008000' size='1' font='PuristaSemibold'>Medicos: %5</t> | <t color='#F06901' size='1' font='PuristaSemibold'>Carteira: %6</t> | <t color='#FF8C00' size='1' font='PuristaSemibold'>Banco: %7</t> | <t color='#FF0000' size='1' font='PuristaSemibold'>Tempo ON: %8</t>",_fpscolour, _fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, [life_cash] call life_fnc_numberText, [life_atmcash] call life_fnc_numberText, [serverTime, "HH:MM:SS"] call BIS_fnc_secondsToString];
		};
	};
};

"
<t color='#0000FF' size='1' font='PuristaSemibold'>COPS: %1</t>
",
west