/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
*/
class CfgPatches
{
	class a3_infiSTAR
	{
		requiredVersion = 0.2;
		requiredAddons[] = {};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
		a3_infiSTAR_version = 0.2;
		author[]= {"Chris(tian) 'infiSTAR' Lorenzen"};
	};
};
class CfgFunctions
{
	class a3_infiSTAR
	{
		class main
		{
			file = "a3_infiSTAR";
			class preInit { preInit = 1; };
		};
	};
};