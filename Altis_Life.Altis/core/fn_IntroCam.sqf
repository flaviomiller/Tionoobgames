/*
	File: fn_welcomeNotification.sqf

	Description:
	Called upon first spawn selection and welcomes our player.
*/
disableUserInput true;
_fadeIn = [] spawn BIS_fnc_VRFadeIn;
waitUntil {scriptDone _fadeIn};
3 cutFadeOut 0;

_sound = ["Intro","Intro2","Intro3","Intro4"] call BIS_fnc_selectRandom;
playSound _sound;

_introCam = "camera" camCreate (player modelToWorldVisual [-5,0,1250]);
_introCam cameraEffect ["internal","back"];
_introCam camSetFov 2.000;
_introCam camSetTarget vehicle player;
_introCam camSetRelPos [0,-1,1250];
_introCam camCommit 0;
waitUntil {camCommitted _introCam};

_introCam camSetFov 2;
_introCam camSetRelPos [0,-5,1.85];
_introCam camCommit 2;
8 cutFadeOut 3;
waitUntil {camCommitted _introCam};

_introCam camSetFov 1;
_introCam camSetRelPos [0,-1,1.85];
_introCam camCommit 3;
waitUntil {camCommitted _introCam};
_introCam cameraEffect ["terminate","back"];
camDestroy _introCam;

life_spawnAnimDone = true;
disableUserInput false;

[] spawn {
	_onScreenTime = 8;
	_role1 = "Bem vindo ao RockIn Altis";
_role1names = ["Roleplay Alternativo"];
_role2 = "Criador do Servidor";
_role2names = ["Dexter"];
_role3 = "Administradores do Servidor";
_role3names = ["Brunno, Tulio, Muller, Lello e Dexter"];
_role4 = "Noites sem Nightivison";
_role4names = ["RockIn"];
_role5 = "Desenvolvedores";
_role5names = ["Dexter, Muller, AbusolutZ e KoVaUvIsKe"];
_role6 = "Hosted by";
_role6names = ["ITECH3"];
_role7 = "Respeite as Regras";
_role7names = [""];
_role8 = "Facebook:";
_role8names = ["RockIn Altis Life"];
_role9 = "Principais Regras";
_role9names = ["Não toleramos hu3hu3, Nada de RDM, Nada de Atropelamentos, Respeite os Administradores e Equipe, Siga o RolePlay, você não está em um servidor de WasteLand !!!"];
_role10 = "Atualizações";
_role10names = ["O servidor está em constante mudança, para que haja possibilidade de corrigir bugs. Se encontrar algum nos avise. Eles serão corrigidos no prazo máximo de 48 horas! :)"];
_role11 = "Bom jogo a todos!";
_role11names = ["A equipe lhe deseja uma excelente jogo!"];

	{
		sleep 2;
		_memberFunction = _x select 0;
		_memberNames = _x select 1;
		_finalText = format ["<t size='1' color='#00994C' align='right'>%1<br /></t>", _memberFunction];
		_finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='right'>";
		{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
		_finalText = _finalText + "</t>";
		_onScreenTime + (((count _memberNames) - 1) * 0.5);
		[
			_finalText,
			[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
			[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
			_onScreenTime,
			0.5
		] spawn BIS_fnc_dynamicText;
		sleep (_onScreenTime);
	} forEach [
	//The list below should have exactly the same amount of roles as the list above
		[_role1, _role1names],
		[_role2, _role2names],
		[_role3, _role3names],
		[_role4, _role4names],
		[_role5, _role5names],
		[_role6, _role6names],
		[_role7, _role7names],
		[_role8, _role8names],
		[_role9, _role9names],
		[_role10, _role10names],
		[_role11, _role11names]
	];
};
