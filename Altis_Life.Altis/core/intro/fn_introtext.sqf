/*
	File: fn_introtext.sqf
	Description: Adds some text as the player loads in.
*/

_onScreenTime = 5;

sleep 2; //Wait in seconds before the credits start after player is in-game

_role1 = "Bem-vindo ao nosso servidor.";
_role1names = ["Equipe RockIn Altis"];
_role2 = "Editado por";
_role2names = ["Dexter"];
_role3 = "Visite nosso facebook";
_role3names = ["www.facebook.com/RockInAltisLife/"];
_role4 = "Entre no nosso Teamspeak:";
_role4names = ["rockin.ts3amg.com"];
_role5 = "Divirta-se e respeite nossas regras.";
_role5names = [profileName];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#c500ff' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#ffffff' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
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
[_role5, _role5names]
];