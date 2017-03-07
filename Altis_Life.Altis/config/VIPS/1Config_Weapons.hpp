/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*            
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be -1
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
            { "Binocular", "", 150, -1 },		
            { "ItemGPS", "", 100, -1 },
            { "ItemMap", "", 50, -1},
            { "ItemCompass", "", 50, -1 },
            { "ItemWatch", "", 50, -1 },
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" },
            { "FirstAidKit", "Primeiros Socorros", 150, -1 },
            { "hgun_Rook40_F", "", 6500, 500, "" },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1, "" },
            { "hgun_ACPC2_F", "", 11500, -1, "" },
            { "hgun_PDW2000_F", "", 20000, -1, "" },
            { "hgun_P07_khk_F", "", 21000, -1, "" }, //Apex DLC
            { "hgun_Pistol_01_F", "", 20000, -1, "" }, //Apex DLC
            { "SMG_05_F", "", 180000, -1, "" } //Apex DLC
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, 100, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, 100, "" },
            { "9Rnd_45ACP_Mag", "", 200, 100, "" },
            { "30Rnd_9x21_Mag", "", 250, 100, "" },
            { "30Rnd_9x21_Mag_SMG_02", "", 250, 100, "" }, //Apex DLC
            { "10Rnd_9x21_Mag", "", 250, 100, "" } //Apex DLC - Had to guess this. Not referenced anywhere
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 2500, 100, "" }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
            { "Binocular", "", 150, -1 },		
            { "ItemGPS", "", 100, -1 },
            { "ItemMap", "", 50, -1},
            { "ItemCompass", "", 50, -1 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "Primeiros Socorros", 150, -1 },
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" },
            { "hgun_Pistol_heavy_02_F", "ACP .45", 9850, -1 },
            { "16Rnd_9x21_Mag", "", 50, -1 },
            { "hgun_Rook40_F", "Rook 9mm", 6500, -1 },
            { "hgun_ACPC2_F", "ACP .45", 11500, 5000 },
            { "arifle_TRG20_F", "TRG 5.56mm", 50000, -1 },
            { "arifle_Katiba_F", "Katiba 6.5mm", 80000, -1 },
            { "arifle_Katiba_C_F", "Katiba 6.5mm", 70000, -1 },
            { "arifle_SDAR_F", "SDAR 5.56mm", 30000, -1 },
            { "LMG_03_F", "LIM-85 5.56 mm", 85000, -1 },
            { "SMG_01_F", "Vermin SMG .45ACP", 21000, -1 },
            { "arifle_Mk20_F", "Mk20 5.56mm", 50000, -1 },
            { "arifle_Mk20C_F", "Mk20 5.56mm", 50000, -1 },
            { "SMG_02_F", "Sting 9 mm", 20000, -1 },			
            { "arifle_CTAR_hex_F", "CAR-95 5.8MM", 100000, -1 },
            { "arifle_MXM_khk_F", "MXM", 80000, -1 },
            { "arifle_MX_SW_F", "MXSW", 90000, -1 },
            { "arifle_SPAR_01_blk_F", "Spar16 Black", 60000, -1 },
            { "arifle_AKM_F", "AKM 7.62m", 90000, -1 },
            { "srifle_DMR_06_camo_F", "MK14 Camuflada", 88000, -1 }
        };
        mags[] = {
			{ "6Rnd_45ACP_Cylinder", "Munição 9rnd .45", 100 },
			{ "30Rnd_9x21_Mag", "Munição 30rnd 9mm", 100 },
			{ "11Rnd_45ACP_Mag", "Munição 11rnd .45", 100 },
			{ "10Rnd_762x54_Mag", "Munição 10rnd 7.62mm", 400 },
            { "30Rnd_45ACP_Mag_SMG_01_tracer_green", "Munição 30rnd .45", 350 },
            { "30Rnd_65x39_caseless_green", "Munição 30rnd 6.5mm", 500 },
            { "30Rnd_556x45_Stanag_Tracer_Yellow", "Munição 30rnd 5.56mm", 400 },
			{ "30Rnd_580x42_Mag_Tracer_F", "Munição 30rnd 5.8mm", 410 },
			{ "20Rnd_762x51_Mag", "Munição 20rnd 7.62mm", 589 },
			{ "100Rnd_65x39_caseless_mag", "Munição 100rnd 6.5mm", 500 },
			{ "100Rnd_65x39_caseless_mag_Tracer", "Munição Traçante 100rnd 6.5mm", 350 },
			{ "200Rnd_65x39_cased_Box_Tracer", "Munição 150rnd 6.5mm", 1200 },
			{ "30Rnd_762x39_Mag_Green_F", "Munição 30rnd 7.62mm", 699 },
			{ "30Rnd_545x39_Mag_Green_F", "Munição 30rnd 5.45mm", 499 },
			{ "200Rnd_556x45_Box_F", "Munição 200Rnd 5.56mm", 490 },
			{ "200Rnd_556x45_Box_Tracer_Red_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "200Rnd_556x45_Box_Tracer_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "9Rnd_45ACP_Mag", "", 450 },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "Munição 30Rnd 5.56mm", 400 },
			{ "30Rnd_556x45_Stanag", "Munição 30Rnd 5.56mm", 600 },
			{ "150Rnd_556x45_Drum_Mag_F", "Munição 150Rnd 5.56mm", 725 },
			{ "150Rnd_762x54_Box_Tracer", "Munição 150rnd 7.62mm", 1350 },
            { "30Rnd_65x39_caseless_mag", "Munição 30rnd 6.5mm", 550 },
            { "30Rnd_65x39_caseless_mag_Tracer", "Munição 30rnd 6.5mm", 400 }
        };
        accs[] = {
            { "optic_ACO_grn", "ACO", 2000 },
			{ "optic_ERCO_blk_F", "ERCO", 2250 },
			{ "optic_ERCO_snd_F", "ERCO", 2250 },
            { "optic_Holosight", "Holosight", 1900 },
            { "optic_Hamr", "HAMR", 10500 },
            { "optic_Holosight_smg", "HOLO SMG", 2500 },
            { "optic_MRCO", "MRCO", 3000 },
            { "optic_Arco", "ARCO", 3199 },
			{ "muzzle_snds_M", "Silenciador 5.56mm", 5000 },
            { "acc_flashlight", "Lanterna", 600 },
			{ "muzzle_snds_H_snd_f", "Silenciador 6.5mm", 7000 },
			{ "muzzle_snds_H_MG_blk_F", "Silenciador 6.5mm", 7000 },
			{ "muzzle_snds_B_khk_F", "Silenciador 7.62mm", 10000 },
			{ "muzzle_snds_H", "Silenciador 6.5mm", 7000 }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        conditions = "";
        items[] = {
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" },
            { "hgun_Rook40_F", "", 1500, 500, "" },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1, "" },
            { "hgun_ACPC2_F", "", 4500, -1, "" },
            { "hgun_PDW2000_F", "", 9500, -1, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, 100, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, 100, "" },
            { "9Rnd_45ACP_Mag", "", 200, 100, "" },
            { "30Rnd_9x21_Mag", "", 250, 100, "" }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 950, 100, "" }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        conditions = "";
        items[] = {
            { "Binocular", "", 150, -1, "" },
            { "ItemGPS", "", 100, 45, "" },
            { "ItemMap", "", 50, 35, "" },
            { "ItemCompass", "", 50, 25, "" },
            { "ItemWatch", "", 50, -1, "" },
            { "FirstAidKit", "", 150, 65, "" },
            { "Chemlight_red", "", 10, -1, "" },
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };
	
	class premiumgenstore {
        name = "Polishop Premium Store";
        side = "civ";
        license = "";
        conditions = "call life_donorlevel isEqualTo 1";
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "Chemlight_red", "", 10, -1 },
            { "Chemlight_yellow", "", 10, 50 },
            { "Chemlight_green", "", 10, 50 },
            { "Chemlight_blue", "", 10, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        conditions = "";
        items[] = {
            { "Binocular", "", 750, -1, "" },
            { "ItemGPS", "", 500, 45, "" },
            { "ItemMap", "", 250, 35, "" },
            { "ItemCompass", "", 250, 25, "" },
            { "ItemWatch", "", 250, -1, "" },
            { "FirstAidKit", "", 750, 65, "" },
            { "Chemlight_red", "", 50, -1, "" },
            { "Chemlight_yellow", "", 50, -1, "" },
            { "Chemlight_green", "", 50, -1, "" },
            { "Chemlight_blue", "", 50, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        conditions = "";
        items[] = {
            { "Binocular", "", 150, -1, "" },
            { "ItemGPS", "", 100, 45, "" },
            { "FirstAidKit", "", 150, 65, "" },
            { "Chemlight_red", "", 10, -1, "" },
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" },
            { "HandGrenade_Stone", "Flashbang", 1700, -1, "" },
            { "hgun_P07_snds_F", "Stun Pistol", 2000, 650, "" },
            { "arifle_sdar_F", "Taser Rifle", 20000, 7500, "" },
            //Recruta
            { "arifle_TRG21_F", "", 20000, 2500, "" },
            { "SMG_02_F", "", 15000, -1, "" }, 
            { "arifle_Mk20_plain_F", "", 20000, -1, "" },
            { "hgun_PDW2000_F", "", 10000, -1, "" }, 
            { "SMG_05_F", "", 10000, -1, "" },             
            //Soldado
            { "arifle_MX_F", "", 30000, 5000, "call life_coplevel >= 3" }, 
            { "arifle_CTAR_blk_F", "", 20000, -1, "call life_coplevel >= 3" },
            { "SMG_01_F", "", 20000, -1, "call life_coplevel >= 3" }, 
            { "arifle_Katiba_F", "", 30000, 5000, "call life_coplevel >= 3" }, 
            { "arifle_MXC_F", "", 30000, 5000, "call life_coplevel >= 3" },   
            //Cabo
            { "arifle_MX_SW_F", "", 30000, 5000, "call life_coplevel >= 5" }, 
            { "arifle_SPAR_02_blk_F", "", 50000, -1, "call life_coplevel >= 5" },
            { "arifle_AKS_F", "", 20000, -1, "call life_coplevel >= 5" },
            //sgt
            { "srifle_DMR_06_olive_F", "", 50000, -1, "call life_coplevel >= 7" },
            { "LMG_03_F", "", 45000, -1, "call life_coplevel >= 7" }
        };
        mags[] = {
			{ "6Rnd_45ACP_Cylinder", "Munição 9rnd .45", 100 },
			{ "30Rnd_9x21_Mag", "Munição 30rnd 9mm", 100 },
			{ "11Rnd_45ACP_Mag", "Munição 11rnd .45", 100 },
			{ "10Rnd_762x54_Mag", "Munição 10rnd 7.62mm", 400 },
            { "30Rnd_45ACP_Mag_SMG_01_tracer_green", "Munição 30rnd .45", 350 },
            { "30Rnd_65x39_caseless_green", "Munição 30rnd 6.5mm", 500 },
            { "30Rnd_556x45_Stanag_Tracer_Yellow", "Munição 30rnd 5.56mm", 400 },
			{ "30Rnd_580x42_Mag_Tracer_F", "Munição 30rnd 5.8mm", 410 },
			{ "20Rnd_762x51_Mag", "Munição 20rnd 7.62mm", 589 },
			{ "100Rnd_65x39_caseless_mag", "Munição 100rnd 6.5mm", 500 },
			{ "100Rnd_65x39_caseless_mag_Tracer", "Munição Traçante 100rnd 6.5mm", 350 },
			{ "200Rnd_65x39_cased_Box_Tracer", "Munição 150rnd 6.5mm", 1200 },
			{ "30Rnd_762x39_Mag_Green_F", "Munição 30rnd 7.62mm", 699 },
			{ "30Rnd_545x39_Mag_Green_F", "Munição 30rnd 5.45mm", 499 },
			{ "200Rnd_556x45_Box_F", "Munição 200Rnd 5.56mm", 490 },
			{ "200Rnd_556x45_Box_Tracer_Red_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "200Rnd_556x45_Box_Tracer_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "9Rnd_45ACP_Mag", "", 450 },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "Munição 30Rnd 5.56mm", 400 },
			{ "30Rnd_556x45_Stanag", "Munição 30Rnd 5.56mm", 600 },
			{ "150Rnd_556x45_Drum_Mag_F", "Munição 150Rnd 5.56mm", 725 },
			{ "150Rnd_762x54_Box_Tracer", "Munição 150rnd 7.62mm", 1350 },
            { "30Rnd_65x39_caseless_mag", "Munição 30rnd 6.5mm", 550 },
            { "30Rnd_65x39_caseless_mag_Tracer", "Munição 30rnd 6.5mm", 400 }
        };
        accs[] = {
            { "optic_ACO_grn", "ACO", 2000 },
			{ "optic_ERCO_blk_F", "ERCO", 2250 },
			{ "optic_ERCO_snd_F", "ERCO", 2250 },
            { "optic_Holosight", "Holosight", 1900 },
            { "optic_Hamr", "HAMR", 10500 },
            { "optic_Holosight_smg", "HOLO SMG", 2500 },
            { "optic_MRCO", "MRCO", 3000 },
            { "optic_Arco", "ARCO", 3199 },
			{ "muzzle_snds_M", "Silenciador 5.56mm", 5000 },
            { "acc_flashlight", "Lanterna", 600 },
			{ "muzzle_snds_H_snd_f", "Silenciador 6.5mm", 7000 },
			{ "muzzle_snds_H_MG_blk_F", "Silenciador 6.5mm", 7000 },
			{ "muzzle_snds_B_khk_F", "Silenciador 7.62mm", 10000 },
			{ "muzzle_snds_H", "Silenciador 6.5mm", 7000 }
        };
    };
	
    class Premium {
        name = "Premium Store";
        side = "civ";
        conditions = "call life_donorlevel isEqualTo 1";
        items[] = {
			{ "Binocular", "", 150, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 50, -1, "" },
            { "ItemCompass", "", 50, -1, "" },
            { "ItemWatch", "", 50, -1, "" },
			{ "FirstAidKit", "Primeiros Socorros", 150, -1, "" },
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" },
            { "hgun_Pistol_heavy_02_F", "ACP .45", 9850, -1, "" },
			{ "hgun_Rook40_F", "Rook 9mm", 6500, -1, "" },
            { "hgun_ACPC2_F", "ACP .45", 11500, -1, "" },
		    { "SMG_05_F", "Protector 9mm", 35000, -1, "" },
            { "arifle_TRG20_F", "TRG 5.56mm", 50000, -1, "" },
			{ "arifle_TRG21_F", "TRG 5.56mm", 50000, -1, "" },
            { "arifle_Katiba_F", "Katiba 6.5mm", 80000, -1, "" },
            { "arifle_Katiba_C_F", "Katiba 6.5mm", 80000, -1, "" },
            { "arifle_SDAR_F", "SDAR 5.56mm", 30000, -1, "" },
            { "SMG_01_F", "Vermin SMG .45ACP", 21000, -1, "" },
            { "arifle_Mk20_F", "Mk20 5.56mm", 50000, -1, "" },
            { "arifle_Mk20C_F", "Mk20 5.56mm", 50000, -1, "" },
			{ "LMG_Mk200_F", "MK200", 100000, -1, "" },
			{ "SMG_02_F", "Sting 9 mm", 20000, -1, "" },	
			{ "arifle_SPAR_02_khk_F", "SPAR16 Khaki 150rnd", 90000, -1, "" },		
            { "arifle_CTAR_hex_F", "CAR-95 5.8MM", 100000, -1, "" },
			{ "LMG_03_F", "LIM-85 5.56 mm", 85000, -1, "" },			
			{ "arifle_MXM_khk_F", "MXM", 80000, -1, "" },
			{ "arifle_MX_SW_khk_F", "MXSW", 90000, -1, "" },
		    { "arifle_SPAR_01_khk_F", "Spar-16 Khaki", 60000, -1, "" },
		    { "arifle_SPAR_03_khk_F", "Spar-17 Khaki", 100000, -1, "" },
			{ "arifle_AKM_F", "AKM 7.62mm", 90000, -1, "" },
			{ "arifle_AK12_F", "AK12 7.62mm", 105000, -1, "" },
			{ "arifle_AKS_F", "AKS 5.45mm", 70000, -1, "" },
			{ "arifle_CTAR_hex_F", "CAR 95 5.8m", 70000, -1, "" },
			{ "srifle_DMR_02_F", "MAR-10 .338", 120000, -1, "" },
			{ "srifle_DMR_03_F", "Mk-I 7.62", 120000, -1, "" },
			{ "arifle_ARX_blk_F", "Type 115 6.5 mm", 120000, -1, "" },
			{ "srifle_DMR_05_hex_F", "Cyrus 9.3mm", 140000, -1, "" },
			{ "srifle_EBR_MRCO_LP_BI_F", "MK18 7.62mm", 140000, -1, "" },
			{ "srifle_DMR_06_camo_F", "MK14 Camuflada", 88000, -1, "" },
			{ "srifle_DMR_07_ghex_F", "CMR-76 Camuflada", 60000, -1, "" }
        };
        mags[] = {
			{ "6Rnd_45ACP_Cylinder", "Munição 9Rnd .45", 100 },
			{ "20Rnd_762x51_Mag", "Munição 20Rnd 7.62mm", 150 },
			{ "20Rnd_762x51_Mag", "Munição 20Rnd 7.62mm", 150 },
			{ "30Rnd_580x42_Mag_F", "Munição 30Rnd 5.8mm", 150 },
			{ "30Rnd_65x39_caseless_green", "Munição 30Rnd 6.5mm", 150 },
			{ "30Rnd_9x21_Mag_SMG_02", "Munição 30Rnd 9mm", 70 },
			{ "30Rnd_9x21_Mag", "Munição 30Rnd 9mm", 100 },
			{ "30Rnd_762x39_Mag_F", "Munição AK 30Rnd 7.62mm", 150 },
		    { "10Rnd_93x64_DMR_05_Mag", "Munição 10Rnd 9.3 mm", 100 },
			{ "20Rnd_762x51_Mag", "Munição 20Rnd 7.62mm", 100 },
			{ "10Rnd_338_Mag", "Munição 10Rnd .338mm", 150 },
			{ "150Rnd_556x45_Drum_Mag_F", "Munição 150rnd 5.56mm", 500 },
			{ "150Rnd_556x45_Drum_Mag_Tracer_F", "Munição Traçante 150rnd 5.56mm", 390 },
			{ "100Rnd_65x39_caseless_mag", "Munição 100rnd 6.5mm", 500 },
			{ "100Rnd_65x39_caseless_mag_Tracer", "Munição Traçante 100rnd 6.5mm", 350 },
			{ "30Rnd_545x39_Mag_F", "Munição 30Rnd 5.45mm", 150 },
			{ "30Rnd_545x39_Mag_Tracer_F", "Munição 30Rnd 5.45mm", 150 },
			{ "11Rnd_45ACP_Mag", "Munição 11Rnd .45", 100 },
			{ "200Rnd_556x45_Box_F", "Munição 200Rnd 5.56mm", 490 },
			{ "200Rnd_556x45_Box_Tracer_Red_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "200Rnd_556x45_Box_Tracer_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "20Rnd_650x39_Cased_Mag_F", "Munição 20Rnd 6.5mm", 150 },
			{ "10Rnd_762x54_Mag", "Munição 10Rnd 7.62mm", 400 },
            { "30Rnd_45ACP_Mag_SMG_01_tracer_green", "Munição 30Rnd .45", 350 },
            { "30Rnd_65x39_caseless_mag", "Munição 30rnd 6.5mm", 550 },
            { "30Rnd_556x45_Stanag_Tracer_Yellow", "Munição 30Rnd 5.56mm", 400 },
			{ "30Rnd_580x42_Mag_Tracer_F", "Munição 30Rnd 5.8mm", 410 },
			{ "200Rnd_65x39_cased_Box_Tracer", "Munição 150rnd 6.5mm", 1200 },
			{ "30Rnd_762x39_Mag_Green_F", "Munição 30Rnd 7.62mm", 699 },
			{ "30Rnd_545x39_Mag_Green_F", "Munição 30Rnd 5.45mm", 499 },
			{ "9Rnd_45ACP_Mag", "", 450 },
			{ "30Rnd_556x45_Stanag", "Munição 30Rnd 5.56mm", 350 },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "Munição 30Rnd 5.56mm", 150 },
			{ "150Rnd_556x45_Drum_Mag_F", "Munição 150Rnd 5.56mm", 725 },
			{ "200Rnd_65x39_cased_Box", "Munição 200Rnd MK200", 1150 },
			{ "150Rnd_762x54_Box_Tracer", "Munição 150Rnd 7.62mm", 1350 },
            { "30Rnd_65x39_caseless_mag_Tracer", "Munição 30Rnd 6.5mm", 300 }
        };
        accs[] = {
            { "optic_ACO_grn", "ACO", 1000, -1, "" },
			{ "optic_ERCO_blk_F", "ERCO", 1125, -1, "" },
			{ "optic_ERCO_snd_F", "ERCO", 1125, -1, "" },
            { "optic_Holosight", "Holosight", 1000, -1, "" },
            { "optic_Hamr", "HAMR", 3000, -1, "" },
            { "optic_Holosight_smg", "HOLO SMG", 1250, -1, "" },
            { "optic_MRCO", "MRCO", 1500, -1, "" },
            { "optic_Arco", "ARCO", 1550, -1, "" },
            { "acc_flashlight", "Lanterna", 600, -1, "" },
            { "acc_pointer_IR", "Mira Laser", 800, -1, "" },
		    { "bipod_03_F_blk", "Bipé Preto", 2500, -1, "" },
		    { "bipod_01_F_khk", "Bipé Khaki", 2500, -1, "" },
		    { "bipod_01_F_snd", "Bipé Areia", 2500, -1, "" },
		    { "bipod_02_F_tan", "Bipé Tan", 2500, -1, "" },			
			{ "muzzle_snds_m_snd_F", "Silenciador 5.56mm", 3000, -1, "" },
			{ "muzzle_snds_m_khk_F", "Silenciador 5.56mm", 3000, -1, "" },
			{ "muzzle_snds_M", "Silenciador 5.56mm", 3000, -1, "" },
			{ "muzzle_snds_58_hex_F", "Silenciador 5.8mm", 4000, -1, "" },
			{ "muzzle_snds_58_blk_F", "Silenciador 5.8mm", 4000, -1, "" },
			{ "muzzle_snds_58_ghex_F", "Silenciador 5.8mm", 4000, -1, "" },
			{ "muzzle_snds_H_snd_F", "Silenciador 6.5mm", 5000, -1, "" },
			{ "muzzle_snds_H_khk_F", "Silenciador 6.5mm", 5000, -1, "" },
			{ "muzzle_snds_H", "Silenciador 6.5mm", 5000, -1, "" },
			{ "muzzle_snds_H_MG_blk_F", "Silenciador 6.5mm", 6000, -1, "" },
			{ "muzzle_snds_B", "Silenciador 7.62mm", 6000, -1, "" },
			{ "muzzle_snds_B_snd_F", "Silenciador 7.62mm", 6000, -1, "" },
			{ "muzzle_snds_B_khk_F", "Silenciador 7.62mm", 6000 -1, "" }
        };
    };
	
    class PremiumCop {
        name = "Premium Store";
        side = "cop";
        conditions = "call life_donorlevel isEqualTo 1";
        items[] = {
			{ "Binocular", "", 150, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 50, -1, "" },
            { "ItemCompass", "", 50, -1, "" },
            { "ItemWatch", "", 50, -1, "" },
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" },
			{ "FirstAidKit", "Primeiros Socorros", 150, -1, "" },
            { "arifle_sdar_F", "Taser Rifle", 3000, 1000, "" },
            { "hgun_P07_snds_F", "Stun Pistol", 2000, 650, "" },
            { "hgun_P07_F", "", 1500, 1500, "" },
            { "HandGrenade_Stone", "Flashbang", 150, -1, "" },
            { "hgun_Pistol_heavy_02_F", "ACP .45", 9850, -1, "" },
			{ "hgun_Rook40_F", "Rook 9mm", 6500, -1, "" },
            { "hgun_ACPC2_F", "ACP .45", 4000, 3000, "" },
		    { "SMG_05_F", "Protector 9mm", 12000, -1, "" },
            { "arifle_TRG20_F", "TRG 5.56mm", 20000, -1, "" },
			{ "arifle_TRG21_F", "TRG 5.56mm", 20000, -1, "" },
            { "arifle_Katiba_F", "Katiba 6.5mm", 30000, -1, "" },
            { "arifle_Katiba_C_F", "Katiba 6.5mm", 30000, -1, "" },
            { "arifle_SDAR_F", "SDAR 5.56mm", 10000, -1, "" },
            { "SMG_01_F", "Vermin SMG .45ACP", 7000, -1, "" },
            { "arifle_Mk20_F", "Mk20 5.56mm", 25000, -1, "" },
            { "arifle_Mk20C_F", "Mk20 5.56mm", 25000, -1, "" },
			{ "LMG_Mk200_F", "MK200", 40000, -1, "" },
			{ "LMG_03_F", "LIM-85 5.56 mm", 35000, -1, "" },
		    { "arifle_SPAR_02_blk_F", "Spar-16 150 Round Black", 45000, -1, "" },
			{ "SMG_02_F", "Stinger 9 mm", 9000, -1, "" },	
            { "arifle_CTAR_hex_F", "CAR-95 5.8MM", 50000, -1, "" },
			{ "arifle_MXM_F", "MXM", 40000, -1, "" },
			{ "arifle_MX_F", "MX", 37000, -1, "" },
			{ "arifle_MX_SW_F", "MXSW", 45000, -1, "" },
		    { "arifle_SPAR_01_blk_F", "Spar16 5.56mm Black", 30000, -1, "" },
		    { "arifle_SPAR_03_blk_F", "Spar-17 7.62mm Black", 50000, -1, "" },
			{ "arifle_AKM_F", "AKM 7.62mm", 45000, -1, "" },
			{ "arifle_AK12_F", "AK12 7.62mm", 52000, -1, "" },
			{ "arifle_AKS_F", "AKS 5.45mm", 35000, -1, "" },
			{ "arifle_CTAR_hex_F", "CAR 95 5.8m", 35000, -1, "" },
			{ "srifle_DMR_02_F", "MAR-10 .338", 60000, -1, "" },
			{ "srifle_DMR_03_F", "Mk-I 7.62", 60000, -1, "" },
			{ "arifle_ARX_blk_F", "Type 115 6.5 mm", 60000, -1, "" },
			{ "srifle_DMR_05_hex_F", "Cyrus 9.3mm", 70000, -1, "" },
			{ "srifle_EBR_MRCO_LP_BI_F", "MK18 7.62mm", 70000, -1, "" },
			{ "srifle_DMR_06_camo_F", "MK14 Camuflada", 44000, -1, "" },
			{ "srifle_DMR_07_ghex_F", "CMR-76 Camuflada", 60000, -1, "" }
        };
        mags[] = {
			{ "6Rnd_45ACP_Cylinder", "Munição 9Rnd .45", 100 },
			{ "20Rnd_556x45_UW_mag", "Taser para Rifles", 15 },
			{ "20Rnd_762x51_Mag", "Munição 20Rnd 7.62mm", 150 },
			{ "30Rnd_580x42_Mag_F", "Munição 30Rnd 5.8mm", 150 },
			{ "200Rnd_556x45_Box_F", "Munição 200Rnd 5.56mm", 490 },
			{ "200Rnd_556x45_Box_Tracer_Red_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "200Rnd_556x45_Box_Tracer_F", "Munição Traçante 200Rnd 5.56mm", 350 },
			{ "30Rnd_65x39_caseless_green", "Munição 30Rnd 6.5mm", 150 },
			{ "30Rnd_9x21_Mag_SMG_02", "Munição 30Rnd 9mm", 70 },
			{ "150Rnd_556x45_Drum_Mag_F", "Munição 150Rnd  5.56mm", 150 },
			{ "150Rnd_556x45_Drum_Mag_Tracer_F", "Munição 150Rnd 5.56mm", 100 },
			{ "30Rnd_9x21_Mag", "Munição 30Rnd 9mm", 100 },
			{ "30Rnd_762x39_Mag_F", "Munição AK 30Rnd 7.62mm", 150 },
		    { "10Rnd_93x64_DMR_05_Mag", "Munição 10Rnd 9.3 mm", 100 },
			{ "20Rnd_762x51_Mag", "Munição 20Rnd 7.62mm", 100 },
			{ "100Rnd_65x39_caseless_mag", "Munição 100rnd 6.5mm", 500 },
			{ "100Rnd_65x39_caseless_mag_Tracer", "Munição Traçante 100rnd 6.5mm", 350 },
			{ "10Rnd_338_Mag", "Munição 10Rnd .338mm", 150 },
			{ "20Rnd_650x39_Cased_Mag_F", "Munição 20Rnd 6.5mm", 150 },
			{ "30Rnd_545x39_Mag_F", "Munição 30Rnd 5.45mm", 150 },
			{ "30Rnd_545x39_Mag_Tracer_F", "Munição 30Rnd 5.45mm", 150 },
			{ "11Rnd_45ACP_Mag", "Munição 11Rnd .45", 100 },
            { "30Rnd_65x39_caseless_mag", "Munição 30rnd 6.5mm", 550 },
			{ "10Rnd_762x54_Mag", "Munição 10Rnd 7.62mm", 400 },
			{ "200Rnd_65x39_cased_Box", "Munição 200Rnd MK200", 550 },
            { "30Rnd_45ACP_Mag_SMG_01_tracer_green", "Munição 30Rnd .45", 350 },
            { "30Rnd_556x45_Stanag_Tracer_Yellow", "Munição 30Rnd 5.56mm", 400 },
			{ "30Rnd_580x42_Mag_Tracer_F", "Munição 30Rnd 5.8mm", 410 },
			{ "200Rnd_65x39_cased_Box_Tracer", "Munição 200rnd 6.5mm", 1200 },
			{ "30Rnd_762x39_Mag_Green_F", "Munição 30Rnd 7.62mm", 699 },
			{ "30Rnd_545x39_Mag_Green_F", "Munição 30Rnd 5.45mm", 499 },
			{ "9Rnd_45ACP_Mag", "", 450 },
			{ "30Rnd_556x45_Stanag", "Munição 30Rnd 5.56mm", 350 },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "Munição 30Rnd 5.56mm", 150 },
			{ "150Rnd_556x45_Drum_Mag_F", "Munição 150Rnd 5.56mm", 725 },
			{ "200Rnd_65x39_cased_Box", "Munição 200Rnd MK200", 1150 },
			{ "150Rnd_762x54_Box_Tracer", "Munição 150Rnd 7.62mm", 1350 },
            { "30Rnd_65x39_caseless_mag_Tracer", "Munição 30Rnd 6.5mm", 300 }
        };
        accs[] = {
            { "optic_ACO_grn", "ACO", 1000, -1, "" },
			{ "optic_ERCO_blk_F", "ERCO", 1125, -1, "" },
			{ "optic_ERCO_snd_F", "ERCO", 1125, -1, "" },
            { "optic_Holosight", "Holosight", 1000, -1, "" },
            { "optic_Holosight_khk_F", "Holosight", 1000, -1, "" },
			{ "optic_Arco", "ARCO", 1550, -1, "" },
            { "optic_Arco_ghex_F", "Holosight", 1650, -1, "" },
            { "optic_Hamr", "HAMR", 3000, -1, "" },
            { "optic_Holosight_smg", "HOLO SMG", 1250, -1, "" },
            { "optic_MRCO", "MRCO", 1500, -1, "" },
            { "acc_flashlight", "Lanterna", 600, -1, "" },
            { "acc_pointer_IR", "Mira Laser", 800, -1, "" },
		    { "bipod_03_F_blk", "Bipé Preto", 2500, -1, "" },
		    { "bipod_01_F_khk", "Bipé Khaki", 2500, -1, "" },
		    { "bipod_01_F_snd", "Bipé Areia", 2500, -1, "" },
		    { "bipod_02_F_tan", "Bipé Tan", 2500, -1, "" },		
			{ "muzzle_snds_m_snd_F", "Silenciador 5.56mm", 3000, -1, "" },
			{ "muzzle_snds_m_khk_F", "Silenciador 5.56mm", 3000, -1, "" },
			{ "muzzle_snds_M", "Silenciador 5.56mm", 3000, -1, "" },
			{ "muzzle_snds_58_hex_F", "Silenciador 5.8mm", 4000, -1, "" },
			{ "muzzle_snds_58_blk_F", "Silenciador 5.8mm", 4000, -1, "" },
			{ "muzzle_snds_58_ghex_F", "Silenciador 5.8mm", 4000, -1, "" },
			{ "muzzle_snds_H_snd_F", "Silenciador 6.5mm", 5000, -1, "" },
			{ "muzzle_snds_H_khk_F", "Silenciador 6.5mm", 5000, -1, "" },
			{ "muzzle_snds_H", "Silenciador 6.5mm", 5000, -1, "" },
			{ "muzzle_snds_H_MG_blk_F", "Silenciador 6.5mm", 6000, -1, "" },
			{ "muzzle_snds_B", "Silenciador 7.62mm", 6000, -1, "" },
			{ "muzzle_snds_B_snd_F", "Silenciador 7.62mm", 6000, -1, "" },
			{ "muzzle_snds_B_khk_F", "Silenciador 7.62mm", 6000, -1, "" }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 100, 45, "" },
            { "Binocular", "", 150, -1, "" },
            { "FirstAidKit", "", 100, 65, "" },
            { "Chemlight_red", "", 10, -1, "" },
            { "Chemlight_yellow", "", 10, -1, "" },
            { "Chemlight_green", "", 10, -1, "" },
            { "Chemlight_blue", "", 10, -1, "" },
            { "SmokeShellRed", "", 10, 3000, "" },
            { "HandGrenade_Stone", "", 10, -1, "call life_medlevel >= 2" }
            
        };
        mags[] = {};
        accs[] = {};
    };
};