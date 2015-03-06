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
		"interact",
		"particle",
		"storage",
		"work",
		"statusicon",
		"ambientemitter",
		"Template/Common.rsc:fireWoodHouse",
		
		"statemachine",
		"cleararea",
		"workplace",
		"build",
		"destroy",
		"residence",
	]
}

AmbientEmitterDescription ambientemitter
{
	bool _addOnCreate = false;
	SoundEffect _soundEffects 
	[ 
		"Audio/Effects/FireEffect.rsc" 
		"Audio/Effects/CrowdEffect.rsc" 
	]
}

ClearAreaDescription cleararea { }
StateMachineDescription statemachine { }
ZoneDescription zone { }

DestroyDescription destroy 
{ 
	int _damagedSkin = 1;
	int _damagedDecal = 1;
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
	String _spriteName = "BuildHouse";

	StringTable _stringTable = "Language/rlonmod/StringTable.rsc";
	String _stringName = "AdvancedWoodHome";
	String _stringNameLwr = "AdvancedWoodHomeLwr";
	String _toolTip = "AdvancedWoodHomeTip";

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
	
	int _width = 4;
	int _height = 5;
	int _footprintRotation = 0;

	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"0000
		 0000
		 0000
		 0000
		 1111";	

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"####
		 ####
		 ####
		 ###_
		 ....";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials 
	[ 
		"Terrain/TiledDecals/BuildingFootprint8Material.rsc" 
		"Terrain/TiledDecals/BuildingFootprint8DamageMaterial.rsc" 
	]
	bool _tiled = false;
	float _initialAlpha = 0.5;
	float _mapWidth = 2048.0;
	
	DecalLocation _decalLocations
	[
		{
			float _x0 = 0.0;
			float _y0 = 0.0;
			float _x1 = 256.0;
			float _y1 = 320.0;	
		}
		{
			float _x0 = 256.0;
			float _y0 = 0.0;
			float _x1 = 512.0;
			float _y1 = 320.0;	
		}
		{
			float _x0 = 512.0;
			float _y0 = 0.0;
			float _x1 = 768.0;
			float _y1 = 320.0;	
		}
		{
			float _x0 = 768.0;
			float _y0 = 0.0;
			float _x1 = 1024.0;
			float _y1 = 320.0;	
		}
		{
			float _x0 = 0.0;
			float _y0 = 320.0;
			float _x1 = 256.0;
			float _y1 = 640.0;	
		}
		{
			float _x0 = 256.0;
			float _y0 = 320.0;
			float _x1 = 512.0;
			float _y1 = 640.0;	
		}
	]
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse1Build01Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse1Build02Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse1Picking.rsc" 
			] 
		}
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse2Build01Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse2Build02Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse2Picking.rsc" 
			] 
		}
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse3Build01Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse3Build02Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse3Picking.rsc" 
			] 
		}
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse4Build01Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse4Build02Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse4Picking.rsc" 
			] 
		}
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse5Build01Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse5Build02Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse5Picking.rsc" 
			] 
		}
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse6Build01Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse6Build02Picking.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse6Picking.rsc" 
			] 
		}
	]
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse1Build01Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse1Build02Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse1Mesh.rsc" 
			] 
		}
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse2Build01Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse2Build02Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse2Mesh.rsc" 
			] 
		}
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse3Build01Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse3Build02Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse3Mesh.rsc" 
			] 
		}
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse4Build01Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse4Build02Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse4Mesh.rsc" 
			] 
		}
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse5Build01Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse5Build02Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse5Mesh.rsc" 
			] 
		}
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse6Build01Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse6Build02Mesh.rsc", 
				"Models\Buildings\WoodHouse\WoodHouse6Mesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

HighlightDescription highlight
{
	EdgeGroup _meshes
	[
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse1Build01Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse1Build02Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse1Mesh.rsc:edge" 
			]
		}
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse2Build01Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse2Build02Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse2Mesh.rsc:edge" 
			]
		}
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse3Build01Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse3Build02Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse3Mesh.rsc:edge" 
			]
		}
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse4Build01Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse4Build02Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse4Mesh.rsc:edge" 
			]
		}
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse5Build01Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse5Build02Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse5Mesh.rsc:edge" 
			]
		}
		{ 
			EdgeMesh _mesh 
			[ 
				"Models\Buildings\WoodHouse\WoodHouse6Build01Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse6Build02Mesh.rsc:edge" 
				"Models\Buildings\WoodHouse\WoodHouse6Mesh.rsc:edge" 
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}


InteractDescription interact
{
	PointList _pointList = "Models\Buildings\WoodHouse\WoodHousePoints.rsc";
}

ParticleDescription particle
{
	ParticleAttachment _systems 
	[
		{
			Time _fadeInOutTime = 2.0;
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Fire\FireSmall.rsc";
		}
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\ChimneySmoke\ChimneySmoke.rsc";
			String _attachNode = "smoke";
		}
	]
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | Firewood;
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 1000;
}

WorkDescription work
{
	int _defaultWorkers = 3;
}

WorkPlaceDescription workplace
{
	// no actual work done here once the building is built
	//Profession _profession = null;
	//Profession _pickupProfession = null;
}

BuildDescription build
{
	int _workRequired = 30;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 16;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 8;
		}	
	]
}

ResidenceDescription residence
{
	int _maxApartments = 1;
	int _maxOccupants = 5;
	float _temperatureForFuel = 50.0;
	float _fuelPerResource = 60.0;
}

UIDescription ui
{
	int _displayPage = 1;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{ 
			ObjectType _type = ResidenceUI; 
			ElementDescription _element = "Dialog/Residence.rsc:residence"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Residence.rsc:buttonTabResidence";
		}
		{ 
			ObjectType _type = UpgradeUI; 
			ElementDescription _element = "Dialog/Upgrade.rsc:upgradeButton"; 
			String _insertAt = "pageTabGroup"; 
			DialogControllerConfig _config = "upgradeConfig";	
		}
		{ 
			ObjectType _type = StorageUI; 
			ElementDescription _element = "Dialog/Storage.rsc:storageShort"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Storage.rsc:buttonTabStorage";
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
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
			String _insertAt = "userTitle0"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle1";
		}
	]
}

UpgradeUIConfig upgradeConfig
{
	ComponentDescription _upgradeTo = "Template/rlonmod/AdvancedStoneHouse.rsc";
}