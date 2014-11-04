PackageFile rlonmod
{
	String _name = "Rlon|Mod";
	String _author = "RlonRyan";
	String _description = "This is a first attempt at modding Banished. The goal is to provide the gameplay improvements granted by other mods, but with greater compatability. This mod currently adds two major features, unlimited mines and quarries, and faster quarries. Build: 20";
	String _icon = "misc/icon.png";
	String _preview = "misc/preview.jpg";
	int _userVersion = 1.0.20;
	
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
