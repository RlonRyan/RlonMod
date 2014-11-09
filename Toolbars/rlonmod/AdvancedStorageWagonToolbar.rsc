Toolbar advancedstoragewagon
{
	// From base
	StringTable _stringTable = "Language/rlonmod/AdvancedStorageStringTable.rsc:toolbar";
	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";

	Toolbar _parent = "Game\Toolbar.rsc:storage";
	int _sortPriority = 50;

	String _toolTip = "AdvancedStorageTip";	
	String _image = "ToolbarTransport";
	Action _action = ShowGroup;
	
	bool _autoHotKey = true;
}

Toolbar food
{	
	Toolbar _parent = "advancedstoragewagon";	
	int _sortPriority = 100;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageWagon/Food.rsc";			

	bool _autoHotKey = true;
}


Toolbar herb
{	
	Toolbar _parent = "advancedstoragewagon";	
	int _sortPriority = 200;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageWagon/Herb.rsc";			

	bool _autoHotKey = true;
}

Toolbar clothing
{	
	Toolbar _parent = "advancedstoragewagon";	
	int _sortPriority = 300;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageWagon/Clothing.rsc";			

	bool _autoHotKey = true;
}

Toolbar textile
{	
	Toolbar _parent = "advancedstoragewagon";	
	int _sortPriority = 400;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageWagon/Textile.rsc";			

	bool _autoHotKey = true;
}

Toolbar tool
{	
	Toolbar _parent = "advancedstoragewagon";	
	int _sortPriority = 500;	

	Action _action = Tool;	
	ComponentDescription _tool = "Template/rlonmod/AdvancedStorageWagon/Tool.rsc";			

	bool _autoHotKey = true;
}