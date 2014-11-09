Toolbar advancedstorage
{
	// From base
	StringTable _stringTable = "Language/rlonmod/AdvancedStorageStringTable.rsc:toolbar";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";

	Toolbar _parent = "Game\Toolbar.rsc:storage";
	int _sortPriority = 250;

	String _toolTip = "AdvancedStorageTip";	
	String _image = "BuildStorageYard";
	Action _action = ShowGroup;
	
	bool _autoHotKey = true;
}

Toolbar wood
{	
	Toolbar _parent = "advancedstorage";	
	int _sortPriority = 100;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageYard/Wood.rsc";			

	bool _autoHotKey = true;
}


Toolbar stone
{	
	Toolbar _parent = "advancedstorage";	
	int _sortPriority = 200;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageYard/Stone.rsc";			

	bool _autoHotKey = true;
}

Toolbar iron
{	
	Toolbar _parent = "advancedstorage";	
	int _sortPriority = 300;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageYard/Iron.rsc";			

	bool _autoHotKey = true;
}

Toolbar fuel
{	
	Toolbar _parent = "advancedstorage";	
	int _sortPriority = 400;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageYard/Fuel.rsc";			

	bool _autoHotKey = true;
}

Toolbar firewood
{	
	Toolbar _parent = "advancedstorage";	
	int _sortPriority = 500;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageYard/Firewood.rsc";			

	bool _autoHotKey = true;
}

Toolbar coal
{	
	Toolbar _parent = "advancedstorage";	
	int _sortPriority = 600;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageYard/Coal.rsc";			

	bool _autoHotKey = true;
}