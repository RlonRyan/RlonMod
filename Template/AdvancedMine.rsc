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
		"particle",
		"picking",
		"highlight",
		"floor",	
		"interact",
		"storage",
		"work",	
		"radius",
		"statusicon",
		"mine",
		"tracker",	
		
		"statemachine",
		"cleararea",
		"build",
		"workplace",
		"destroy",
		"happiness",
		"consumeproduce",
	]
}

// layout of the entity
ComponentDescription destroyed
{
	// how often to update
	UpdatePriority _updatePriority = None;
	
	// declare types that will be used
	Description _descriptions
	[
		"map",
		"zone",
		"decal",
		"modeldestroyed",
		"radius",
		"happiness",
	]
}

HappinessDescription happiness
{
	HappinessType _happinessType = Detraction;
}

RadiusDescription radius
{
	int _radius = 30;
	// MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}


TrackerDescription tracker { }
ClearAreaDescription cleararea 
{ 
	bool _flattenGround = false;
}
StateMachineDescription statemachine { }
ZoneDescription zone { }
DestroyDescription destroy 
{ 
	ComponentDescription _replaceEntity = "destroyed";
}

MineDescription mine
{

}

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}


ParticleDescription particle
{
	PointList _pointList = "Models\Buildings\IronMine\IronMinePoints.rsc";

	ParticleAttachment _systems 
	[
		{
			bool _addOnCreate = false;
			Particle _particle = "ParticleSystems\IronSmoke\IronSmoke.rsc";
			String _attachNode = "particle0";
		}
	]
}


ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog\SpriteSheet.rsc";
	String _spriteName = "BuildIronMine";

	StringTable _stringTable = "Language/StringTable.rsc";
	String _stringName = "AdvancedMine";
	String _stringNameLwr = "AdvancedMineLwr";
	String _toolTip = "AdvancedMineTip";

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

	int _width = 12;
	int _height = 12;
	int _footprintRotation = 0;

	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster,
		Normal | Obstacle | Unusable | Walkable,  
		Unusable | Walkable,
	]
	String _placeBitmap =
		"333333333333
		 333333333333
		 333333333333
		 333333322222
		 222222222222
		 222222222222
		 000000000000
		 000000000000
		 000000000000
		 000000000000
		 000000000000
		 111111111111";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		"############
		 ############
		 ####_#######
		 ####_#######
		 ####_#######
		 ####_#######
		 ####_#######
		 __##_#######
		 ___#_####___
		 ___#_####___
		 ___#_####___
		 ............";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/BuildingFootprint1Material.rsc" ]
	bool _tiled = false;
	float _initialAlpha = 0.5;
	
	float _mapWidth = 2048.0;

	DecalLocation _decalLocations
	[
		{
			float _x0 = 896.0;
			float _y0 = 0.0;
			float _x1 = 1664.0;
			float _y1 = 768.0;	
		}
	]
}

FloorDescription floor
{
	PickingMesh _mesh = "Models\Buildings\IronMine\IronMineFloor.rsc";
}

PickingDescription picking
{
	MaterialInstance _selectMaterial = "Material/SelectionMask/SelectionMask.rsc";
	PickingGroup _meshes
	[
		{ 
			PickingMesh _mesh 
			[ 
				"Models\Buildings\IronMine\IronMineBuild01Picking.rsc",
				"Models\Buildings\IronMine\IronMineBuild02Picking.rsc",
				"Models\Buildings\IronMine\IronMinePicking.rsc"
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
				"Models\Buildings\IronMine\IronMineBuild01Mesh.rsc",
				"Models\Buildings\IronMine\IronMineBuild02Mesh.rsc",
				"Models\Buildings\IronMine\IronMineMesh.rsc"
			] 
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

ModelDescription modeldestroyed
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\IronMine\IronMineDestroyMesh.rsc",
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
				"Models\Buildings\IronMine\IronMineBuild01Mesh.rsc:edge",
				"Models\Buildings\IronMine\IronMineBuild02Mesh.rsc:edge",
				"Models\Buildings\IronMine\IronMineMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\IronMine\IronMinePoints.rsc";
}

StorageDescription storage
{
}

WorkDescription work
{
	int _defaultWorkers = 15;

	bool _allowCountChange = true;
	int _minWorkerCount = 1;
	int _maxWorkerCount = 30;
}

WorkPlaceDescription workplace
{
	Profession _profession = "Game/Profession/Profession.rsc:miner";
	Profession _pickupProfession = "Game/Profession/Profession.rsc:miner";
}

ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialIron.rsc";
			ResourceLimit _resourceLimit = Iron;
			String _requirements = "IronRequire";
		}
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialCoal.rsc";
			ResourceLimit _resourceLimit = Coal;
			String _requirements = "CoalRequire";
		}
	]

	StringTable _stringTable = "Dialog/StringTable.rsc:rawMaterial";

	float _workTime = 4.0;
	ToolType _toolType = PickAxe;
	int _workRequired = 60;

	int _initialProduct = 0;	// -1 for all products
}

BuildDescription build
{
	int _workRequired = 100;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 48;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 68;
		}	
	]
}

UIDescription ui
{
	int _displayPage = 0;	// set to 1 for tab layout
	Dialog _dialog = "Dialog/StandardDialog.rsc:entity";

	ElementController _controllers
	[
		{
			ObjectType _type = ControlUI;
			ElementDescription _element = "enableMinerWorkButton"; 
			String _insertAt = "userButton0";
			DialogControllerConfig _config = "workButtonConfig";	
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "resourceLimitConfig";	
		}
		{
			ObjectType _type = ResourceLimitUI;
			ElementDescription _element = "resourceLimit2"; 
			String _insertAt = "userButton1";
			DialogControllerConfig _config = "resourceLimitConfig2";	
		}
		{ 
			ObjectType _type = ProductionUI; 
			ElementDescription _element = "Dialog/Production.rsc:production4"; 
			String _insertAt = "pageUser"; 
		}
		{ 
			ObjectType _type = PageToggleUI; 
			ElementDescription _element = "Dialog/Production.rsc:checkProduction"; 
			String _insertAt = "userTitle0"; 
		}
		{ 
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/SharedWork.rsc:workPlace"; 
			String _insertAt = "userTitle1"; 
		}
		{
			ObjectType _type = StatusIconUI;
			ElementDescription _element = "Dialog/Building.rsc:icons";
			String _insertAt = "userTitle2";
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
	]
}

ControlUIConfig workButtonConfig
{
	ObjectType _type = ConsumeProduceComponent;
	int _controlId = 0;
}

CheckDescription enableMinerWorkButton : "Dialog/SharedWork.rsc:enableWorkCheck"
{
	ElementDescription _content = "labelMinerWorkUncheck";	
	ElementDescription _check = "labelMinerWorkCheck";	
}

LabelDescription labelMinerWorkCheck : "Dialog/SharedWork.rsc:labelEnableWork"
{
	String _spriteName = "MinerWork";	
}

LabelDescription labelMinerWorkUncheck : "labelMinerWorkCheck"
{
	Color _color = 0xFF2E2B28;
}

ResourceLimitUIConfig resourceLimitConfig
{
	ResourceLimit _resourceLimit = Iron;
}

ResourceLimitUIConfig resourceLimitConfig2
{
	ResourceLimit _resourceLimit = Coal;
}

RibbonDescription resourceLimit
{
	Alignment _alignment = TopLeft;
	bool vertical = false;
	int _topPad = 24;
	int _cellPad = 8;
	int _minWidth = 222;

	ElementDescription _elements
	[
		"labelLimit",
		"editLimit",
	]

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "IronLimitTip";
}

RibbonDescription resourceLimit2
{
	Alignment _alignment = TopLeft;
	bool vertical = false;
	int _topPad = 44;
	int _cellPad = 8;
	int _minWidth = 222;

	ElementDescription _elements
	[
		"labelLimit2",
		"editLimit",
	]

	Dialog _toolTipDialog = "Dialog/ToolTip.rsc";
	StringTable _toolTipStringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _toolTipText = "CoalLimitTip";
}

LabelDescription labelLimit
{
	Alignment _alignment = MidLeft;

	Font _font = "Font\FontSmall.rsc";
	int _imageWidth = 20;
	int _imageHeight = 20;
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;

	StringTable _stringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _text = "IronLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Iron";
}

LabelDescription labelLimit2
{
	Alignment _alignment = MidLeft;

	Font _font = "Font\FontSmall.rsc";
	int _imageWidth = 20;
	int _imageHeight = 20;
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;

	StringTable _stringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _text = "CoalLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Coal";
}

SpinnerDescription editLimit : "Dialog/SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "Dialog/SharedElements.rsc:flatButtonEnabledBorder";
}

