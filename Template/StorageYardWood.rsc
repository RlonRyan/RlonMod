// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"ui",
	
		"map",
		"zone",
		"toolbar",
		"createdrag",
		"decal",
		"work",
		"storage",
		"storagedisplay",
		"highlight",
		"statusicon",

		"statemachine",
		"absorbresource",
		"cleararea",
		"destroy"
		"storagelocation",
	]
}

AbsorbResourceDescription absorbresource { }
StorageDisplayDescription storagedisplay { }
StateMachineDescription statemachine { }
ZoneDescription zone { }
StorageLocationDescription storagelocation { }
DestroyDescription destroy { }

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}

MapDescription map
{
	PathType _pathType = Occasional;

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Log";

	StringTable _stringTable = "Language/StringTable.rsc:advancedstorage";
	String _stringName = "Wood";
	String _stringNameLwr = "WoodLwr";
	String _toolTip = "WoodTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateTooSmall",
		"CreateTooBig",
		"CreateBlocked",		
	]

	int _group = 3;
}

CreateDragDescription createdrag
{
	bool _ignoreZones = false;
	PathBits _placeBits = Normal | Obstacle;
	int _maxWidth = 25;
	int _maxHeight = 25;
	int _minWidth = 1;
	int _minHeight = 1;
	int _minArea = 4;		

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";		
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/StorageYardMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 0.5;
}


HighlightDescription highlight
{
	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Wood;
	bool _areaBasedLimit = true;
	bool _available = true;
	int _volumeLimit = 250;
}

WorkDescription work
{
	int _defaultWorkers = 4;
}

ClearAreaDescription cleararea
{
	bool _clearResources = true;
	bool _clearPickups = true;
}


UIDescription ui
{
	int _displayPage = 1;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";
	
	ElementController _controllers
	[
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "Dialog/Storage.rsc:storageShorter"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Storage.rsc:buttonTabStorage";
		}
		{ 
			ObjectType _type = StorageCapacityUI; 
			ElementDescription _element = "Dialog/Storage.rsc:capacity"; 
			String _insertAt = "pageTabHeader"; 
		}
		{ 
			ObjectType _type = BuildUI; 
			ElementDescription _element = "Dialog/Build.rsc:build"; 
			String _insertAt = "pageBuild"; 
		}
		{ 
			ObjectType _type = DestroyUI; 
			ElementDescription _element = "Dialog/Destroy.rsc:destroy"; 
			String _insertAt = "pageDestroy"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle0";
		}
	]
}
