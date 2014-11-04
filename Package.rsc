PackageFile rlonmod
{
	String _name = "Rlon|Mod";
	String _author = "RlonRyan";
	String _description = "This is a first attempt at modding Banished. Build: 18";
	String _icon = "misc/icon.png";
	String _preview = "misc/preview.jpg";
	int _userVersion = 1.0.18;
	
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
