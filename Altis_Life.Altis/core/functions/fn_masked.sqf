#include "..\..\script_macros.hpp"

if (player getVariable "masked") then {
	cutText["Você está sendo sequestrado ou sendo zuado!","BLACK OUT"];
	removeHeadGear player;
	player addheadgear "H_Shemag_khk";
	
} else {
	cutText["","PLAIN"];
	removeHeadGear player;
};