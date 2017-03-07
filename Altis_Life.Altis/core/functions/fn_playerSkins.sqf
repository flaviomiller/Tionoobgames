#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private ["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\roupas\civis\civilian_uniform_7.jpg"];
            };
            if (uniform player isEqualTo "U_Rangemaster") then {
                player setObjectTextureGlobal [0, "textures\roupas\civis\SpawnRockIn.jpg"];
            };
        };
    };

    case west: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\Roupas\Policiais\cop_uniform.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
               /* if (FETCH_CONST(life_coplevel) >= 1) then {
                    _skinName = ["textures\cop_uniform_",(FETCH_CONST(life_coplevel)),".jpg"] joinString "";
                };
				*/
				if (FETCH_CONST(life_coplevel) isEqualTo 2) then {
                    _skinName = "textures\Roupas\Policiais\CET.jpg";
                };
				
            };
            player setObjectTextureGlobal [0, _skinName];
        };
		
		if (uniform player isEqualTo "U_B_CombatUniform_mcam_vest") then {
            _skinName = "textures\Roupas\Policiais\cop_ssp.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
               /* if (FETCH_CONST(life_coplevel) >= 1) then {
                    _skinName = ["textures\cop_uniform_",(FETCH_CONST(life_coplevel)),".jpg"] joinString "";
                };
				*/
				if (FETCH_CONST(life_coplevel) isEqualTo 4) then {
                    _skinName = "textures\Roupas\Policiais\cop_ssp.jpg";
                };
				
				if (FETCH_CONST(life_coplevel) isEqualTo 6) then {
                    _skinName = "textures\Roupas\Policiais\cop_ssp.jpg";
                };
				
				if (FETCH_CONST(life_coplevel) isEqualTo 8) then {
                    _skinName = "textures\Roupas\Policiais\cop_ssp.jpg";
                };
				
				if (FETCH_CONST(life_coplevel) isEqualTo 10) then {
                    _skinName = "textures\Roupas\Policiais\cop_ssp.jpg";
                };
				
				if (FETCH_CONST(life_coplevel) isEqualTo 12) then {
                    _skinName = "textures\Roupas\Policiais\cop_coronelsp.jpg";
                };
				
				if (FETCH_CONST(life_coplevel) isEqualTo 13) then {
                    _skinName = "textures\Roupas\Policiais\cop_grpae.jpg";
                };
				
				if (FETCH_CONST(life_coplevel) isEqualTo 14) then {
                    _skinName = "textures\Roupas\Policiais\cop_federal.jpg";
                };
				
            };
            player setObjectTextureGlobal [0, _skinName];
        };
		//Remover Mochila
		(unitBackpack player) setObjectTextureGlobal [0,""];
    };

    case independent: {
        if (uniform player isEqualTo "U_B_HeliPilotCoveralls") then {
            player setObjectTextureGlobal [0, "textures\Roupas\Medicos\medic_uniform2.jpg"];
        };
    };
};
