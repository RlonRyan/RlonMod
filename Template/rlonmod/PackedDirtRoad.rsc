// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fourth;
	
	// declare types that will be used
	Description _descriptions
	[
		"toolbar",
		"createroad",
		"decal",
		"map",
		"build"
	]
}

MapDescription map
{
	PathType _pathType = Fast;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildRoad";
	StringTable _stringTable = "Language\rlonmod\StringTable.rsc";
	String _stringName = "PackedDirtRoad";
	String _stringNameLwr = "PackedDirtRoadLwr";
	String _toolTip = "PackedDirtRoadTip";

	String _statusStrings [	"CreateOk", "CreateTooSmall", "CreateTooBig", "CreateBlocked" ]
	int _group = 1;
}

CreateRoadDescription createroad
{
	uchar _index = 1;
	// ComponentDescription _rawMaterial = 0;
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/DirtRoadMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 0.5;
}

BuildDescription build
{
	int _workRequired = 2;
	bool _scaledWithSize = true;

	//BuildRequirement _buildRequirement
	//[
	//	{
	//		//ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
	//		//int _count = 4;
	//	}	
	//]
}