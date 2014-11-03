CheckDescription enableWorkCheck : "SharedElements.rsc:checkSimple"
{
	int _topPad = 4;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "EnableWorkTip";
}

ButtonDescription enableWorkButton : "SharedElements.rsc:borderButton"
{
	int _topPad = 4;

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "EnableWorkTip";
}

LabelDescription labelEnableWork
{
	int _topPad = 4;
	int _leftPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
	int _minWidth = 61;
	int _minHeight = 61;

	Alignment _alignment = MidCenter;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _text = "EnableWork";

	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	
	int _spacing = 2;
	LabelPosition _labelPosition = TextBottom;
	Alignment _textAlignment = MidCenter;
}

RibbonDescription workPlace
{
	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"workersAndMax"
		"workerCount"
	]
}

RibbonDescription workerCount
{
	ElementDescription _border = "SharedElements.rsc:buttonEnabledBorder";
	int _leftPad = 4;

	bool _vertical = false;
	int _cellPad = 2;
	ElementDescription _elements
	[
		"maxCount"
		"workersUpDown"
	]
}

RibbonDescription workersUpDown
{
	bool _vertical = true;
	int _cellPad = 0;
	ElementDescription _elements
	[
		"workerCountUp"
		"workerCountDown"
	]
}

RibbonDescription jobsUpDown
{
	bool _vertical = true;
	int _cellPad = 0;
	ElementDescription _elements
	[
		"jobCountUp"
		"jobCountDown"
	]
}

ButtonDescription workerCountUp : "SharedElements.rsc:spinnerButtonUpSmall" { }
ButtonDescription workerCountDown : "SharedElements.rsc:spinnerButtonDownSmall" { }

ButtonDescription jobCountUp : "SharedElements.rsc:spinnerButtonUpSmall" { }
ButtonDescription jobCountDown : "SharedElements.rsc:spinnerButtonDownSmall" { }

TextDescription maxCount
{
	int _rightPad = 4;
	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:general";
	String _text = "Parameter";

	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "ProfessionCountTip";
}

RibbonDescription workersAndMax
{
	int _leftPad = 4;
	//ElementDescription _border = "SharedElements.rsc:buttonEnabledBorder";

	bool _vertical = false;
	int _cellPad = 0;
	ElementDescription _elements
	[
		"workPlaceButton"
		"jobsUpDown"
	]
}

ButtonDescription workPlaceButton : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "workPlaceCount";
	
	Dialog _toolTipDialog = "ToolTip.rsc";
	StringTable _toolTipStringTable = "StringTable.rsc:gameDialogs";
	String _toolTipText = "WorkerCountTip";
}

LabelDescription workPlaceCount
{
	int _topPad = 2;
	int _bottomPad = 2;
	int _rightPad = 4;
	int _leftPad = 4;

	Alignment _alignment = MidRight;

	Font _font = "Font\FontSmall.rsc";
	StringTable _stringTable = "Dialog/StringTable.rsc:gameDialogs";
	String _text = "CountGathered";

	SpriteSheet _spriteSheet = "Dialog/SpriteSheet.rsc";
	String _spriteName = "Profession0";
	
	int _spacing = 4;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidCenter;
}
