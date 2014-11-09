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
	PathType _pathType = Faster;
}

ToolbarDescription toolbar
{
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "BuildStoneRoad";
	StringTable _stringTable = "Language\rlonmod\StringTable.rsc";
	String _stringName = "StoneRoad";
	String _stringNameLwr = "StoneRoadLwr";
	String _toolTip = "StoneRoadTip";

	String _statusStrings [	"CreateOk", "CreateTooSmall", "CreateTooBig", "CreateBlocked" ]
	int _group = 1;
}

CreateRoadDescription createroad
{
	uchar _index = 0;
	ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
}

DecalDescription decal
{
	MaterialInstance _materials [ "Terrain/TiledDecals/StoneRoadMaterial.rsc" ]
	bool _tiled = true;
	float _initialAlpha = 0.25;
}

BuildDescription build
{
	int _workRequired = 4;
	bool _scaledWithSize = true;

	BuildRequirement _buildRequirement
	[
		{
			ComponentDescription _rawMaterial = "Template/RawMaterialStone.rsc";
			int _count = 4;
		}	
	]
}