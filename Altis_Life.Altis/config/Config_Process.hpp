/*
*   class:
*       MaterialsReq (Needed to process) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       MaterialsGive (Returned items) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       Text (Progess Bar Text) = Localised String
*       NoLicenseCost (Cost to process w/o license) = Scalar
*
*   Example for multiprocess:
*
*   class Example {
*       MaterialsReq[] = {{"cocaine_processed",1},{"heroin_processed",1}};
*       MaterialsGive[] = {{"diamond_cut",1}};
*       Text = "STR_Process_Example";
*       //ScrollText = "Process Example";
*       NoLicenseCost = 4400004000040000;
*   };
*/

class ProcessAction {
    class oil {
        MaterialsReq[] = {{"oil_unprocessed",1}};
        MaterialsGive[] = {{"oil_processed",1}};
        Text = "STR_Process_Oil";
        //ScrollText = "Process Oil";
        NoLicenseCost = 40000;
    };

    class diamond {
        MaterialsReq[] = {{"diamond_uncut",1}};
        MaterialsGive[] = {{"diamond_cut",1}};
        Text = "STR_Process_Diamond";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 40000;
    };
	
    class whiskey {
        MaterialsReq[] = {{"malte",1}};
        MaterialsGive[] = {{"whiskey",1}};
        Text = "STR_Processing_Whiskey";
        //ScrollText = "Process Whiskey";
        NoLicenseCost = 40000;
    };
	
    class LSD {
        MaterialsReq[] = {{"centeio",1}};
        MaterialsGive[] = {{"LSD",1}};
        Text = "STR_Process_LSD";
        //ScrollText = "Contaminate Rye";
        NoLicenseCost = 40000;
    };
	
    class Krokodil {
        MaterialsReq[] = {{"codeina",1}};
        MaterialsGive[] = {{"krokodil",1}};
        Text = "STR_Process_Krokodil";
        //ScrollText = "Process Krokodil";
        NoLicenseCost = -1;
    };

    class legalweed {
        MaterialsReq[] = {{"cannabis",1}};
        MaterialsGive[] = {{"legalweed",1}};
        Text = "STR_Processing_legalweed";
        //ScrollText = "Process Legal Weed";
        NoLicenseCost = 40000;
    };	
	
    class ritalina {
        MaterialsReq[] = {{"metilfenidato",1}};
        MaterialsGive[] = {{"ritalina",1}};
        Text = "STR_Processing_ritalina";
        //ScrollText = "Process Ritalina";
        NoLicenseCost = 40000;
    };
	
    class whiskeyaged {
        MaterialsReq[] = {{"whiskey",1}};
        MaterialsGive[] = {{"whiskeyaged",1}};
        Text = "STR_Aging_Whiskey";
        //ScrollText = "Age Whiskey";
        NoLicenseCost = 40000;
    };
	
    class GamingComputer {
        MaterialsReq[] = {{"processed_memory",1},{"processed_motherboard",1},{"processed_processor",1},{"processed_graphics",1}};
        MaterialsGive[] = {{"GamingComputer",1}};
        Text = "STR_Process_Gaming_Computer";
        //ScrollText = "Process Gaming Computer";
        NoLicenseCost = 40000;
    };
	
    class graphics {
        MaterialsReq[] = {{"graphics",1}};
        MaterialsGive[] = {{"processed_graphics",1}};
        Text = "STR_Processing_graphics";
        //ScrollText = "Process Graphics";
        NoLicenseCost = 40000;
    };
	
    class motherboard {
        MaterialsReq[] = {{"motherboard",1}};
        MaterialsGive[] = {{"processed_motherboard",1}};
        Text = "STR_Processing_motherboard";
        //ScrollText = "Process Motherboard";
        NoLicenseCost = 40000;
    };

    class processor {
        MaterialsReq[] = {{"processor",1}};
        MaterialsGive[] = {{"processed_processor",1}};
        Text = "STR_Processing_processor";
        //ScrollText = "Process Processor";
        NoLicenseCost = 40000;
    };
	
    class memory {
        MaterialsReq[] = {{"memory",1}};
        MaterialsGive[] = {{"processed_memory",1}};
        Text = "STR_Processing_memory";
        //ScrollText = "Process Memory";
        NoLicenseCost = 40000;
    };
	
    class goldbar {
        MaterialsReq[] = {{"goldbar",1}};
        MaterialsGive[] = {{"goldbarprocessed",1}};
        Text = "STR_Process_Gold";
        //ScrollText = "Wash Gold";
        NoLicenseCost = 40000;
    };
	
    class metanfetamina {
        MaterialsReq[] = {{"metilfenidato",1}};
        MaterialsGive[] = {{"metanfetamina",1}};
        Text = "STR_Process_Metanfetamina";
        //ScrollText = "Process Metanfetamina";
        NoLicenseCost = 40000;
    };

    class heroin {
        MaterialsReq[] = {{"heroin_unprocessed",1}};
        MaterialsGive[] = {{"heroin_processed",1}};
        Text = "STR_Process_Heroin";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 40000;
    };

    class copper {
        MaterialsReq[] = {{"copper_unrefined",1}};
        MaterialsGive[] = {{"copper_refined",1}};
        Text = "STR_Process_Copper";
        //ScrollText = "Refine Copper";
        NoLicenseCost = 40000;
    };

    class iron {
        MaterialsReq[] = {{"iron_unrefined",1}};
        MaterialsGive[] = {{"iron_refined",1}};
        Text = "STR_Process_Iron";
        //ScrollText = "Refine Iron";
        NoLicenseCost = 40000;
    };

    class sand {
        MaterialsReq[] = {{"sand",1}};
        MaterialsGive[] = {{"glass",1}};
        Text = "STR_Process_Sand";
        //ScrollText = "Melt Sand into Glass";
        NoLicenseCost = 40000;
    };

    class salt {
        MaterialsReq[] = {{"salt_unrefined",1}};
        MaterialsGive[] = {{"salt_refined",1}};
        Text = "STR_Process_Salt";
        //ScrollText = "Refine Salt";
        NoLicenseCost = 40000;
    };

    class cocaine {
        MaterialsReq[] = {{"cocaine_unprocessed",1}};
        MaterialsGive[] = {{"cocaine_processed",1}};
        Text = "STR_Process_Cocaine";
        //ScrollText = "Process Cocaine";
        NoLicenseCost = 40000;
    };
	
    class cocacola {
        MaterialsReq[] = {{"cocaine_unprocessed",1}};
        MaterialsGive[] = {{"cocacola",1}};
        Text = "STR_Processing_CocaCola";
        //ScrollText = "Process Whiskey";
        NoLicenseCost = 40000;
    };

    class marijuana {
        MaterialsReq[] = {{"cannabis",1}};
        MaterialsGive[] = {{"marijuana",1}};
        Text = "STR_Process_Marijuana";
        //ScrollText = "Harvest Marijuana";
        NoLicenseCost = 40000;
    };
	
    class cigarettes {
        MaterialsReq[] = {{"tobacco",1}};
        MaterialsGive[] = {{"cigarette",1}};
        Text = "STR_Process_Cigarettes";
        //ScrollText = "Enrolar Cigarros";
        NoLicenseCost = -1;
    };

    class cement {
        MaterialsReq[] = {{"rock",1}};
        MaterialsGive[] = {{"cement",1}};
        Text = "STR_Process_Cement";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 40000;
    };
};
