PackageFile rlonmod
{
	String _name = "Rlon|Mod";
	String _author = "RlonRyan";
	String _description = "This is a second attempt at modding Banished. The 1._ updates will break savegames, so backup before updating. The goal is to provide the gameplay improvements granted by other mods, but with greater compatability. This mod currently adds endless mines and quarries, faster quarries, buildable storage carts, and advanced storage. Available on GitHub and the Steam Workshop. Revision: 2 Build: 5";
	String _icon = "Resource/rlonmod/icon.png";
	String _preview = "Resource/rlonmod/preview.png";
	int _userVersion = 1.3.2;
	
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
