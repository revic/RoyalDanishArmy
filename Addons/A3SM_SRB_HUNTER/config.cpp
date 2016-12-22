class CfgPatches {

	class A3SM_SRB_HUNTER {
		author = "$STR_BWA3_Author";
		url = "$STR_BWA3_URL";
		units[] = {"A3SM_SRB_HUNTER","A3SM_SRB_HUNTER_GMG","A3SM_SRB_HUNTER_HMG"};
		requiredVersion = 0.100000;
		requiredAddons[] = {};
	};
};
 
class cfgVehicleClasses {

	class SRB_B_units_cars {
		displayName = "Mowag Eagle V";
	};
};

class CfgVehicles {
	/*extern*/ class B_MRAP_01_F;

	class A3SM_SRB_HUNTER: B_MRAP_01_F {
		side = 1;
		scope = 2;
		scopeCurator = 2;
		faction = "BWA3_Faction";
		displayName = "Mowag Eagle V";
		vehicleClass = "SRB_B_units_cars";
		crew = "SRB_Soldier_02_f";
		weapons[] = {"CarHorn"};
		magazines[] = {};
		typicalCargo[] = {"NVGoggles_INDEP", "Medikit", "ToolKit", "FirstAidKit", "FirstAidKit"};
		hiddenSelectionsTextures[] = {"\A3SM_SRB_HUNTER\data\SRB_01_base_co.paa", "\A3SM_SRB_HUNTER\data\SRB_01_back_co.paa"};
	};
	/*extern*/ class B_MRAP_01_gmg_F;

	class A3SM_SRB_HUNTER_GMG: B_MRAP_01_gmg_F {
		side = 1;
		scope = 2;
		scopeCurator = 2;
		faction = "BWA3_Faction";
		displayName = "Mowag Eagle V GMG";
		vehicleClass = "SRB_B_units_cars";
		crew = "SRB_Soldier_02_f";
		weapons[] = {"CarHorn"};
		magazines[] = {};
		typicalCargo[] = {"NVGoggles_INDEP", "Medikit", "ToolKit", "FirstAidKit", "FirstAidKit"};
		hiddenSelectionsTextures[] = {"\A3SM_SRB_HUNTER\data\SRB_01_base_co.paa", "\A3SM_SRB_HUNTER\data\SRB_01_back_co.paa", "\A3SM_SRB_HUNTER\data\SRB_01_turret_co.paa"};
	};
	/*extern*/ class B_MRAP_01_hmg_F;

	class A3SM_SRB_HUNTER_HMG: B_MRAP_01_hmg_F {
		side = 1;
		scope = 2;
		scopeCurator = 2;
		faction = "BWA3_Faction";
		displayName = "Mowag Eagle V HMG";
		vehicleClass = "SRB_B_units_cars";
		crew = "SRB_Soldier_02_f";
		weapons[] = {"CarHorn"};
		magazines[] = {};
		typicalCargo[] = {"NVGoggles_INDEP", "Medikit", "ToolKit", "FirstAidKit", "FirstAidKit"};
		hiddenSelectionsTextures[] = {"\A3SM_SRB_HUNTER\data\SRB_01_base_co.paa", "\A3SM_SRB_HUNTER\data\SRB_01_back_co.paa", "\A3SM_SRB_HUNTER\data\SRB_01_turret_co.paa"};
	};
};
