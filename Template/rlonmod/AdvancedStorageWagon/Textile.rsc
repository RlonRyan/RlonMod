// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"Template/rlonmod/StorageWagon.rsc:ui",
		
		"Template/rlonmod/StorageWagon.rsc:map",
		"Template/rlonmod/StorageWagon.rsc:zone",
		"Template/rlonmod/StorageWagon.rsc:createplaced",
		"Template/rlonmod/StorageWagon.rsc:decal",
		"Template/rlonmod/StorageWagon.rsc:model",
		"Template/rlonmod/StorageWagon.rsc:highlight",
		"Template/rlonmod/StorageWagon.rsc:picking",
		"Template/rlonmod/StorageWagon.rsc:interact",
		"Template/rlonmod/StorageWagon.rsc:statusicon",
		"Template/rlonmod/StorageWagon.rsc:ambientemitter",
		"Template/Common.rsc:fireWoodBuilding",
		"Template/rlonmod/StorageWagon.rsc:particle",	

		"Template/rlonmod/StorageWagon.rsc:statemachine",
		"Template/rlonmod/StorageWagon.rsc:cleararea",
		"Template/rlonmod/StorageWagon.rsc:destroy",
		"Template/rlonmod/StorageWagon.rsc:storagelocation",
		
		"Template/rlonmod/StorageWagon.rsc:work",
		"Template/rlonmod/StorageWagon.rsc:build",
		"Template/rlonmod/StorageWagon.rsc:workplace",
		
		"toolbar",
		"storage"
	]
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Wool";

	StringTable _stringTable = "Language/rlonmod/AdvancedStorageStringTable.rsc:wagon";
	String _stringName = "Textile";
	String _stringNameLwr = "TextileLwr";
	String _toolTip = "TextileTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 3;

}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Textile;	
	bool _areaBasedLimit = false;
	bool _available = true;
	int _volumeLimit = 1000;
}