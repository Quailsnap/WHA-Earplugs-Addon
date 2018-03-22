class CfgPatches
{
    name = "WHA Earplugs";
    authors[] = { "Whale" };
    url = "https://github.com/Quailsnap/WHA-EP";
    requiredVersion = 1.57;
    requiredAddons[] = {};
    units[] = {};
    weapons[] = {};
}

class CfgFunctions
{
	class WHA
	{
		class EP
		{
			// call the function prior to mission start
			class preInit
			{
				preInit = 1;
				file = 'wh\addons\ep\preinit.sqf';
			};
			// call the function upon mission start, after objects are initialized.
			class postInit
			{
				postInit = 1;
				file = 'wh\addons\ep\postinit.sqf';
			};
		};
	};
};