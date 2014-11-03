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
		"picking",
		"highlight",
		"interact",
		"storage",
		"work",	
		"radius",
		"quarry",
		"statusicon",
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
		"radius",
		"happiness",
	]
}

TrackerDescription tracker { }

ClearAreaDescription cleararea 
{ 
	bool _flattenGround = false; 
}

StatusIconDescription statusicon
{
	SpriteSheet _spriteSheet = "StatusIcons\BuildingIconSpriteSheet.rsc";
	bool _fixedSize = true;
	float _size = 0.04;
	float _zoffset = 1.33;
}

StateMachineDescription statemachine { }
ZoneDescription zone { }

HappinessDescription happiness
{
	HappinessType _happinessType = Detraction;
	int _idleRange = 0;
}

RadiusDescription radius
{
	int _radius = 30;
	// MaterialInstance _decalMaterial = "Terrain/TiledDecals/SelectAreaMaterial.rsc";
}

DestroyDescription destroy 
{ 
	ComponentDescription _replaceEntity = "destroyed";
}

QuarryDescription quarry 
{ 
	PickingMesh _floorMesh = "Models\Buildings\Quarry\QuarryFloor.rsc";
	float _maxDepth = -7.0;
	float _initialDepth = -1.4;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildQuarry";

	StringTable _stringTable = "Language/StringTable.rsc";
	String _stringName = "AdvancedQuarry";
	String _stringNameLwr = "AdvancedQuarryLwr";
	String _toolTip = "AdvancedQuarryTip";

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

	int _width = 21;
	int _height = 17;
	int _footprintRotation = 180;

	PathBits _placeBitArray
	[
		Normal | Obstacle,
		Normal | Obstacle | Fast | Faster
	]
	String _placeBitmap =
		"111111111111111111111
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000
		 000000000000000000000";

	ComponentDescription _allowAndRemove = "Template/Clear.rsc";
}

MapDescription map
{
	PathType _pathType = Immovable;
	String _pathBitmap =
		".....................
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________
		 _____________________";

	bool _addToOverhead = true;
	Color _mapColor = 0xFF545454;
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/BuildingFootprint7Material.rsc" ]
	bool _tiled = false;
	float _initialAlpha = 0.5;
	
	float _mapWidth = 1024.0;

	DecalLocation _decalLocations
	[
		{
			float _x0 = 0.0;
			float _y0 = 0.0;
			float _x1 = 1024.0;
			float _y1 = 1024.0;	
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
				"Models\Buildings\Quarry\QuarryBuild01Picking.rsc",
				"Models\Buildings\Quarry\QuarryBuild02Picking.rsc",
				"Models\Buildings\Quarry\QuarryPicking.rsc"
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
				"Models\Buildings\Quarry\QuarryBuild01Mesh.rsc",
				"Models\Buildings\Quarry\QuarryBuild02Mesh.rsc",
				"Models\Buildings\Quarry\QuarryMesh.rsc"
			] 
		}
	]
	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

ModelDescription modeldestroy
{
	MeshGroup _meshes
	[
		{ 
			GraphicsMesh _mesh 
			[ 
				"Models\Buildings\Quarry\QuarryDestroyMesh.rsc",
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
				"Models\Buildings\Quarry\QuarryBuild01Mesh.rsc:edge",
				"Models\Buildings\Quarry\QuarryBuild02Mesh.rsc:edge",
				"Models\Buildings\Quarry\QuarryMesh.rsc:edge"
			]
		}
	]

	// materials for drawing selection with no mesh
	MaterialInstance _maskMaterial = "Material/SelectionMask/SelectionMask.rsc";
	MaterialInstance _edgeMaterial = "Material/SelectionEdge/SelectionEdge.rsc";
}

InteractDescription interact
{
	PointList _pointList = "Models\Buildings\Quarry\QuarryPoints.rsc";
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
	Profession _profession = "Profession/Profession.rsc:quarryman";
	Profession _pickupProfession = "Profession/Profession.rsc:quarryman";
}

ConsumeProduceDescription consumeproduce
{
	Product _products
	[
		{
			ComponentDescription _produceMaterial = "Template/RawMaterialStone.rsc";
			ResourceLimit _resourceLimit = Stone;
		}
	]

	ToolType _toolType = PickAxe;
	int _workRequired = 10;
	float _workTime = 2.5;
}

BuildDescription build
{
	int _workRequired = 100;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialWood.rsc";
			int _count = 80;
		}
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialIron.rsc";
			int _count = 40;
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
			ObjectType _type = ProductionUI; 
			ElementDescription _element = "Dialog/Production.rsc:production"; 
			String _insertAt = "pageUser"; 
		}
		{ 
			ObjectType _type = PageToggleUI; 
			ElementDescription _element = "Dialog/Production.rsc:checkProduction"; 
			String _insertAt = "userTitle0"; 
		}
		{ 
			ObjectType _type = WorkPlaceUI; 
			ElementDescription _element = "Dialog/Work.rsc:workPlace"; 
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
	ResourceLimit _resourceLimit = Stone;
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
	String _toolTipText = "StoneLimitTip";
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
	String _text = "StoneLimit";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Stone";
}

SpinnerDescription editLimit : "Dialog/SharedElements.rsc:spinnerSmall6"
{
	int _increment = 100;
	ElementDescription _border = "Dialog/SharedElements.rsc:flatButtonEnabledBorder";
}
