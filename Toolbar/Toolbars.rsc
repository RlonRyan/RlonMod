Toolbar advancedmine
{	
	Toolbar _parent = "Game\Toolbar.rsc:resources";	
	int _sortPriority = 700;	

	Action _action = Tool;		
	ComponentDescription _tool = "../Template/AdvancedMine.rsc";			

	bool _autoHotKey = true;
}

Toolbar advancedquarry
{	
	Toolbar _parent = "Game\Toolbar.rsc:resources";	
	int _sortPriority = 900;	

	Action _action = Tool;		
	ComponentDescription _tool = "../Template/AdvancedQuarry.rsc";			

	bool _autoHotKey = true;
}

Toolbar packeddirtroad
{	
	Toolbar _parent = "Game\Toolbar.rsc:transport";	
	int _sortPriority = 150;	

	Action _action = Tool;		
	ComponentDescription _tool = "../Template/PackedDirtRoad.rsc";			

	bool _autoHotKey = true;
}

Toolbar pavedstoneroad
{	
	Toolbar _parent = "Game\Toolbar.rsc:transport";	
	int _sortPriority = 250;	

	Action _action = Tool;		
	ComponentDescription _tool = "../Template/PavedStoneRoad.rsc";			

	bool _autoHotKey = true;
}