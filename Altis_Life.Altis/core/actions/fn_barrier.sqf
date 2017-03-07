/*
	Author: Warnerm14
	Contact: https://steamcommunity.com/id/Warnerm14/ or https://twitter.com/Warnerm14
	Desc: Warner's Barriers for Altis Life
	Permission: Feel free to adapt to work best for your server. Do not remove this comment block.
	Version 3
	Oct 2016
*/	
			player removeAction Barrier1;
			player removeAction Barrier2;
			player removeAction Barrier3;
			player removeAction Barrier4;	
			player removeaction Barrier5;
			player removeAction Barrier6;
			player removeAction Barrier7;
			player removeAction Barrier8;
			player removeAction Barrier9;
			
		BarrierOpen = 1;
	
	placeBarriers = {
		
		detach placeable; 
		placeable setVectorUP (surfaceNormal [(getPosATL placeable) select 0,(getPosATL placeable) select 1]);
		placeableClass = ((_this select 3)select 0);	
		placeable = placeableClass createVehicle position player;
		
		if (placeableClass isEqualTo "Land_BarGate_F") then { 
			placeable attachTo [player, [0, 4, 4.3]];
			placeable allowdammage false;
		} else {
			placeable attachTo [player, [0, 2, 0.35]];		
		};
		
	};
	
	removeBarriers = {
		_barrier = position player nearObjects ["Land_CncBarrier_stripes_F", 3];
		deleteVehicle (_barrier select 0);
		_barrier = position player nearObjects ["Land_PlasticBarrier_03_F", 3];
		deleteVehicle (_barrier select 0);
		_barrier = position player nearObjects ["RoadCone_L_F", 3.5];
		deleteVehicle (_barrier select 0);
		_barrier = position player nearObjects ["RoadBarrier_F", 3];
		deleteVehicle (_barrier select 0);
		_barrier = position player nearObjects ["RoadBarrier_small_F", 3];
		deleteVehicle (_barrier select 0);
        _barrier = position player nearObjects ["Land_PortableLight_double_F", 8];
		deleteVehicle (_barrier select 0);	
	};
	
	
		Barrier1 = player addaction [("<t color=""#00ced1"">" + ("Barreira 1.") +"</t>"),{call placeBarriers;},["Land_CncBarrier_stripes_F"],0.1,false,true,"","vehicle player isEqualTo player"];
		Barrier2 = player addaction [("<t color=""#00ced1"">" + ("Barreira 2.") +"</t>"),{call placeBarriers;},["Land_PlasticBarrier_03_F"],0.1,false,true,"","vehicle player isEqualTo player"];	
		Barrier3 = player addaction [("<t color=""#00ced1"">" + ("Cone com Luz.") +"</t>"),{call placeBarriers;},["RoadCone_L_F"],0.1,false,true,"","vehicle player isEqualTo player"];
		Barrier4 = player addaction [("<t color=""#00ced1"">" + ("Barricada.") +"</t>"),{call placeBarriers;},["RoadBarrier_F"],0.1,false,true,"","vehicle player isEqualTo player"];
		Barrier5 = player addaction [("<t color=""#00ced1"">" + ("Barricada Pequena com Luz.") +"</t>"),{call placeBarriers;},["RoadBarrier_small_F"],0.1,false,true,"","vehicle player isEqualTo player"];	
		Barrier6 = player addaction [("<t color=""#00ced1"">" + ("Luz Portátil.") +"</t>"),{call placeBarriers;},["Land_PortableLight_double_F"],0.1,false,true,"","vehicle player isEqualTo player"];	
		Barrier8 = player addaction [("<t color=""#0066d1"">" + ("Colocar.") +"</t>"),{detach placeable; placeable setVectorUP (surfaceNormal [(getPosATL placeable) select 0,(getPosATL placeable) select 1]);},[""],0.1,false,true,"","vehicle player isEqualTo player"];
		Barrier9 = player addaction [("<t color=""#0066d1"">" + ("Deletar todos.") +"</t>"),{call removeBarriers},[""],0.1,false,true,"","vehicle player isEqualTo player"];
		Barrier7 = player addaction [("<t color=""#FF3300"">" + ("Fechar Menu") +"</t>"),{
			
			player removeAction Barrier1;
			player removeAction Barrier2;
			player removeAction Barrier3;
			player removeAction Barrier4;	
			player removeaction Barrier5;
			player removeAction Barrier6;
			player removeAction Barrier7;
			player removeAction Barrier8;
			player removeAction Barrier9;
			
			detach placeable;
			placeable setVectorUP (surfaceNormal [(getPosATL placeable) select 0,(getPosATL placeable) select 1]);
			BarrierOpen = 0;
	}];