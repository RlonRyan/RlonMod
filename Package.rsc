PackageFile rlonmod
{
	String _name = "Rlon|Mod";
	String _author = "RlonRyan";
	String _description = "The second version, Rlon|Mod is a compact modpack containing popular gameplay changes. The major updates will break savegames, so backup before updating. The goal is to provide the gameplay improvements granted by other mods, but with greater compatability. This mod currently adds endless mines and quarries, faster quarries, buildable storage carts, and advanced storage. Available on GitHub and the Steam Workshop. Version: 2 Revision: 0 Build: 1";
	String _icon = "Resource/rlonmod/icon.png";
	String _preview = "Resource/rlonmod/preview.png";
	int _userVersion = 2.0.1;
	
	// all files in resource directory
	String _includeList
	[
		"*"	
	]
	
	// exclude package files, mod files, file used for building packages
	String _excludeList
	[
		"Package_*.crs"
		"*.pkg"
		"*.pkm"
		"*.txt"
		"*.bat"
		"/.git"
	]
}
