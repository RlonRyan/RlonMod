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
		"build",
		"workplace",
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
	String _spriteName = "BuildHostel";

	StringTable _stringTable = "Language/rlonmod/StringTable.rsc";
	String _stringName = "AdvancedHostel";
	String _stringNameLwr = "AdvancedHostelLwr";
	String _toolTip = "AdvancedHostelTip";

	String _statusStrings
	[
		"CreateOk",
		"CreateBlocked",		
	]

	int _group = 2;
}

CreatePlacedDescription createplaced
{	
	PathBits _placeBits = Normal | Obstacle;
	
	int _width = 7;
	int _height = 14;
	int _footprintRotation = 270;

	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
	]
	String _placeBitmap =
		"1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000
		 1000000";	

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"._#####
		 ._#####
		 ._#####
		 .######
		 .######
		 .######
		 .######
		 .######
		 .######
		 .######
		 .######
		 ._#####
		 ._#####
		 ._#####";

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
			float _x0 = 1024.0;
			float _y0 = 0.0;
			float _x1 = 1408.0;
			float _y1 = 768.0;	
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
				"Models\Buildings\Hostel\HostelBuild01Picking.rsc", 
				"Models\Buildings\Hostel\HostelBuild02Picking.rsc", 
				"Models\Buildings\Hostel\HostelPicking.rsc" 
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
				"Models\Buildings\Hostel\HostelBuild01Mesh.rsc", 
				"Models\Buildings\Hostel\HostelBuild02Mesh.rsc", 
				"Models\Buildings\Hostel\HostelMesh.rsc" 
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
				"Models\Buildings\Hostel\HostelBuild01Mesh.rsc:edge" 
				"Models\Buildings\Hostel\HostelBuild02Mesh.rsc:edge" 
				"Models\Buildings\Hostel\HostelMesh.rsc:edge" 
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}


InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Hostel\HostelPoints.rsc";
}

ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\Hostel\HostelPoints.rsc";

	ParticleAttachment _systems 
	[
		{
			Time _fadeInOutTime = 2.0;
			bool _addOnCreate = false;
			bool _addOnNotify = false;
			Particle _particle = "ParticleSystems\Fire\FireLarge.rsc";
		}
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\ChimneySmoke\ChimneySmoke.rsc";
			String _attachNode = "smoke01";
		}
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\ChimneySmoke\ChimneySmoke.rsc";
			String _attachNode = "smoke02";
		}
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\ChimneySmoke\ChimneySmoke.rsc";
			String _attachNode = "smoke03";
		}
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\ChimneySmoke\ChimneySmoke.rsc";
			String _attachNode = "smoke04";
		}
	]
}

StorageDescription storage
{
	RawMaterialFlags _storageFlags = Edible | WoodFuel;
	
	bool _areaBasedLimit = false;
	bool _available = false;
	int _volumeLimit = 5000;
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
	int _workRequired = 150;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 100;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 45;
		}	
	]
}

ResidenceDescription residence
{
	int _maxApartments = 5;
	int _maxOccupants = 5;
	float _temperatureForFuel = 45.0;
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
			ElementDescription _element = "Dialog/Residence.rsc:residenceLong"; 
			String _insertAt = "pageTab"; 
			ElementDescription _tabButton = "Dialog/Residence.rsc:buttonTabResidence";
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

