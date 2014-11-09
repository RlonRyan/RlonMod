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
		"createplaced",
		"decal",
		"model",
		"highlight",
		"picking",
		"highlight",
		"storage",
		"interact",
		"work",
		"statusicon",
		"ambientemitter",
		"Template/Common.rsc:fireWoodBuilding",
		"particle",	

		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"destroy",
		"storagelocation"
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects [ "Audio/Effects/FireEffect.rsc" ]
}

ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }
StorageLocationDescription storagelocation { }
DestroyDescription destroy { }

ParticleDescription particle
{
	ParticleAttachment _systems 
	[

		{
			Time _fadeInOutTime = 1.5;
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Fire\FireSmall.rsc";
		}
	]
}

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "ToolbarTransport";

	StringTable _stringTable = "Language\rlonmod\StringTable.rsc";
	String _stringName = "StorageWagon";
	String _stringNameLwr = "StorageWagonLwr";
	String _toolTip = "StorageWagonTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 3;

}

CreatePlacedDescription createplaced
{
	PathBits _placeBits = Normal | Obstacle;

	int _width = 3;
	int _height = 2;
	int _footprintRotation = 270;
	
	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"100 
		 100";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		".## 
		 .##";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/BuildingFootprint1Material.rsc" ]
	bool _tiled = false;
	float _initialAlpha = 1.0;
	
	float _mapWidth = 2048.0;

	DecalLocation _decalLocations
	[
		{
			float _x0 = 768.0;
			float _y0 = 1216.0;
			float _x1 = 896.0;
			float _y1 = 1344.0;	
		}
	]
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ PickingMesh _mesh [ "Models\Buildings\StorageCart\StorageCartPicking.rsc"	] }
	]
}


ModelDescription model
{
	MeshGroup _meshes
	[
		{ GraphicsMesh _mesh [ "Models\Buildings\StorageCart\StorageCartMesh.rsc"	] }
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ EdgeMesh _mesh [ "Models\Buildings\StorageCart\StorageCartMesh.rsc:edge" ] }
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\StorageCart\StorageCartPoints.rsc";
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | Fuel | Tool | Health | Clothing | Textile;	
	bool _areaBasedLimit = false;
	bool _available = true;
	int _volumeLimit = 1000;
}

WorkDescription work
{
	int _defaultWorkers = 2;
}

WorkPlaceDescription workplace
{
	// no actual work done here once the building is built
	//Profession _profession = null;
	//Profession _pickupProfession = null;
}

BuildDescription build
{
	int _workRequired = 15;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 16;
		}
	]
}

UIDescription ui
{
	int _displayPage = 1;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "Dialog/Storage.rsc:storage"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Storage.rsc:buttonTabStorage";
		}
		{ 
			ObjectType _type = StorageCapacityUI; 
			ElementDescription _element = "Dialog/Storage.rsc:capacity"; 
			String _insertAt = "pageTabHeader"; 
		}
		{ 
			ObjectType _type = DestroyUI; 
			ElementDescription _element = "Dialog/Destroy.rsc:destroy"; 
			String _insertAt = "pageDestroy"; 
		}
		{ 
			ObjectType _type = BuildUI; 
			ElementDescription _element = "Dialog/Build.rsc:build"; 
			String _insertAt = "pageBuild"; 
		}
		{ 
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
			String _insertAt = "userTitle0"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle0";
		}
	]
}
