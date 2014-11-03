SliderDescription slider
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _left = "SliderStart";
	String _center = "SliderMid";
	String _right = "SliderEnd";
	String _slider = "Slider";
	String _sliderHighlight = "SliderHighlight";
	int _sliderOffset = 4;
	int _sliderPad = 1;
	float _minValue = 0.0;
	float _maxValue = 1.0;
}

ProgressDescription progressBar
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _left = "ProgressStart";
	String _center = "ProgressMid";
	String _right = "ProgressEnd";
	String _backgroundLeft = "ProgressBackgroundStart";
	String _backgroundCenter = "ProgressBackgroundMid";
	String _backgroundRight = "ProgressBackgroundEnd";
}

ScrollDescription verticalScrollbar
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _backStart = "VScrollBackStart";
	String _backMid = "VScrollBackMid";
	String _backEnd = "VScrollBackEnd";

	String _barStart = "VScrollBarStart";
	String _barMid = "VScrollBarMid";
	String _barEnd = "VScrollBarEnd";

	String _highlightStart = "VScrollHighStart";
	String _highlightMid = "VScrollHighMid";
	String _highlightEnd = "VScrollHighEnd";

	bool _vertical = true;
	int _barSpacing = 2;
}

ScrollDescription horizontalScrollbar
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";

	String _backStart = "HScrollBackStart";
	String _backMid = "HScrollBackMid";
	String _backEnd = "HScrollBackEnd";

	String _barStart = "HScrollBarStart";
	String _barMid = "HScrollBarMid";
	String _barEnd = "HScrollBarEnd";

	String _highlightStart = "HScrollHighStart";
	String _highlightMid = "HScrollHighMid";
	String _highlightEnd = "HScrollHighEnd";

	bool _vertical = false;
	int _barSpacing = 2;
}

BorderDescription dialogBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "DialogUpperLeft";
	String _upperCenter = "DialogUpperCenter";
	String _upperRight = "DialogUpperRight";
	String _midLeft = "DialogMidLeft";
	String _midCenter = "DialogMidCenter";
	String _midRight = "DialogMidRight";
	String _lowerLeft = "DialogLowerLeft";
	String _lowerCenter = "DialogLowerCenter";
	String _lowerRight = "DialogLowerRight";
}

BorderDescription keyBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "KeyUpperLeft";
	String _upperCenter = "KeyUpperCenter";
	String _upperRight = "KeyUpperRight";
	String _midLeft = "KeyMidLeft";
	String _midCenter = "KeyMidCenter";
	String _midRight = "KeyMidRight";
	String _lowerLeft = "KeyLowerLeft";
	String _lowerCenter = "KeyLowerCenter";
	String _lowerRight = "KeyLowerRight";
}


BorderDescription toolTipBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "ToolTipUpperLeft";
	String _upperCenter = "ToolTipUpperCenter";
	String _upperRight = "ToolTipUpperRight";
	String _midLeft = "ToolTipMidLeft";
	String _midCenter = "ToolTipMidCenter";
	String _midRight = "ToolTipMidRight";
	String _lowerLeft = "ToolTipLowerLeft";
	String _lowerCenter = "ToolTipLowerCenter";
	String _lowerRight = "ToolTipLowerRight";
}

BorderDescription raisedBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "RaisedUpperLeft";
	String _upperCenter = "RaisedUpperCenter";
	String _upperRight = "RaisedUpperRight";
	String _midLeft = "RaisedMidLeft";
	String _midCenter = "RaisedMidCenter";
	String _midRight = "RaisedMidRight";
	String _lowerLeft = "RaisedLowerLeft";
	String _lowerCenter = "RaisedLowerCenter";
	String _lowerRight = "RaisedLowerRight";
}

BorderDescription raisedBorderPad : "raisedBorder"
{
	int _leftPad = 4;
	int _topPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
}

BorderDescription sunkenBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "SunkenUpperLeft";
	String _upperCenter = "SunkenUpperCenter";
	String _upperRight = "SunkenUpperRight";
	String _midLeft = "SunkenMidLeft";
	String _midCenter = "SunkenMidCenter";
	String _midRight = "SunkenMidRight";
	String _lowerLeft = "SunkenLowerLeft";
	String _lowerCenter = "SunkenLowerCenter";
	String _lowerRight = "SunkenLowerRight";
}

BorderDescription sunkenBorderPad : "sunkenBorder"
{
	int _leftPad = 4;
	int _topPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;
}

BorderDescription sunkenBorderPad5 : "sunkenBorder"
{
	int _leftPad = 5;
	int _topPad = 5;
	int _rightPad = 5;
	int _bottomPad = 5;
}

BorderDescription sunkenBorderPad6 : "sunkenBorder"
{
	int _leftPad = 6;
	int _topPad = 6;
	int _rightPad = 6;
	int _bottomPad = 6;
}

BorderDescription sunkenBorderPad8 : "sunkenBorder"
{
	int _leftPad = 8;
	int _topPad = 8;
	int _rightPad = 8;
	int _bottomPad = 8;
}

BorderDescription sunkenRaisedBorder : "raisedBorder"
{
	int _leftPad = 4;
	int _topPad = 4;
	int _rightPad = 4;
	int _bottomPad = 4;

	ElementDescription _border = "sunkenBorder";
}

BorderDescription darkBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "DarkUpperLeft";
	String _upperCenter = "DarkUpperCenter";
	String _upperRight = "DarkUpperRight";
	String _midLeft = "DarkMidLeft";
	String _midCenter = "DarkMidCenter";
	String _midRight = "DarkMidRight";
	String _lowerLeft = "DarkLowerLeft";
	String _lowerCenter = "DarkLowerCenter";
	String _lowerRight = "DarkLowerRight";
}

BorderDescription tabBorderTop
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "SunkenUpperLeft";
	String _upperCenter = "SunkenUpperCenter";
	String _upperRight = "SunkenUpperRight";
	String _midLeft = "SunkenMidLeft";
	String _midCenter = "SunkenMidCenter";
	String _midRight = "SunkenMidRight";
	String _lowerLeft = "SunkenMidLeft";
	String _lowerCenter = "SunkenMidCenter";
	String _lowerRight = "SunkenMidLeft";
}

BorderDescription tabBorderBottom
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "SunkenMidLeftTab";
	String _upperCenter = "SunkenUpperCenter";
	String _upperRight = "SunkenUpperRight";
	String _midLeft = "SunkenMidLeft";
	String _midCenter = "SunkenMidCenter";
	String _midRight = "SunkenMidRight";
	String _lowerLeft = "SunkenLowerLeft";
	String _lowerCenter = "SunkenLowerCenter";
	String _lowerRight = "SunkenLowerRight";
}

BorderDescription flatButtonEnabledBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "White";
	String _upperCenter = "White";
	String _upperRight = "White";
	String _midLeft = "White";
	String _midCenter = "White";
	String _midRight = "White";
	String _lowerLeft = "White";
	String _lowerCenter = "White";
	String _lowerRight = "White";
	Color _color = 0x10FFFFFF;
}

BorderDescription flatButtonDisabledBorder : "flatButtonEnabledBorder"
{
	Color _color = 0x10000000;
}

BorderDescription flatButtonHighlightBorder : "flatButtonEnabledBorder"
{
	Color _color = 0x20FFFFFF;
}

BorderDescription flatButtonPressedBorder : "flatButtonEnabledBorder"
{
	Color _color = 0x20000000;
}

BorderDescription buttonEnabledBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "ButtonUpperLeftEn";
	String _upperCenter = "ButtonUpperCenterEn";
	String _upperRight = "ButtonUpperRightEn";
	String _midLeft = "ButtonMidLeftEn";
	String _midCenter = "ButtonMidCenterEn";
	String _midRight = "ButtonMidRightEn";
	String _lowerLeft = "ButtonLowerLeftEn";
	String _lowerCenter = "ButtonLowerCenterEn";
	String _lowerRight = "ButtonLowerRightEn";
}

BorderDescription buttonEnabledBorderPad : "buttonEnabledBorder"
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _topPad = 3;
	int _bottomPad = 3;
}

BorderDescription buttonDisabledBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "ButtonUpperLeftDi";
	String _upperCenter = "ButtonUpperCenterDi";
	String _upperRight = "ButtonUpperRightDi";
	String _midLeft = "ButtonMidLeftDi";
	String _midCenter = "ButtonMidCenterDi";
	String _midRight = "ButtonMidRightDi";
	String _lowerLeft = "ButtonLowerLeftDi";
	String _lowerCenter = "ButtonLowerCenterDi";
	String _lowerRight = "ButtonLowerRightDi";
}

BorderDescription buttonDisabledBorderPad : "buttonDisabledBorder"
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _topPad = 3;
	int _bottomPad = 3;
}

BorderDescription buttonHighlightBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "ButtonUpperLeftHi";
	String _upperCenter = "ButtonUpperCenterHi";
	String _upperRight = "ButtonUpperRightHi";
	String _midLeft = "ButtonMidLeftHi";
	String _midCenter = "ButtonMidCenterHi";
	String _midRight = "ButtonMidRightHi";
	String _lowerLeft = "ButtonLowerLeftHi";
	String _lowerCenter = "ButtonLowerCenterHi";
	String _lowerRight = "ButtonLowerRightHi";
}

BorderDescription buttonHighlightBorderPad : "buttonHighlightBorder"
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _topPad = 3;
	int _bottomPad = 3;
}

BorderDescription buttonPressedBorder
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _upperLeft = "ButtonUpperLeftPr";
	String _upperCenter = "ButtonUpperCenterPr";
	String _upperRight = "ButtonUpperRightPr";
	String _midLeft = "ButtonMidLeftPr";
	String _midCenter = "ButtonMidCenterPr";
	String _midRight = "ButtonMidRightPr";
	String _lowerLeft = "ButtonLowerLeftPr";
	String _lowerCenter = "ButtonLowerCenterPr";
	String _lowerRight = "ButtonLowerRightPr";
}

BorderDescription buttonPressedBorderPad : "buttonPressedBorder"
{
	int _leftPad = 3;
	int _rightPad = 3;
	int _topPad = 3;
	int _bottomPad = 3;
}

ButtonDescription borderButton
{
	ElementDescription _enabledBorder = "commonButtonEnabled";
	ElementDescription _disabledBorder = "commonButtonDisabled";
	ElementDescription _highlightedBorder = "commonButtonHighlight";
	ElementDescription _pressedBorder = "commonButtonPressed";

	Color _enabledColor = 0xFFC0C0C0;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFFFFFFFF;
	Color _pressedColor = 0xFF716A63;
}

ButtonDescription raisedButton
{
	ElementDescription _enabledBorder = "buttonEnabledBorder";
	ElementDescription _disabledBorder = "buttonDisabledBorder";
	ElementDescription _highlightedBorder = "buttonHighlightBorder";
	ElementDescription _pressedBorder = "buttonPressedBorder";

	Color _enabledColor = 0xFFC0C0C0;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFFFFFFFF;
	Color _pressedColor = 0xFF716A63;
}

ButtonDescription floatingButton
{
	ElementDescription _enabledBorder = "floatButtonEnabled";
	ElementDescription _disabledBorder = "floatButtonDisabled";
	ElementDescription _highlightedBorder = "floatButtonHighlight";
	ElementDescription _pressedBorder = "floatButtonPressed";

	Color _enabledColor = 0xFFC0C0C0;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFFFFFFFF;
	Color _pressedColor = 0xFF716A63;
}

ButtonDescription flatButton
{
	ElementDescription _enabledBorder = "flatButtonEnabledBorder";
	ElementDescription _disabledBorder = "flatButtonDisabledBorder";
	ElementDescription _highlightedBorder = "flatButtonHighlightBorder";
	ElementDescription _pressedBorder = "flatButtonPressedBorder";

	Color _enabledColor = 0xFFC0C0C0;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFFFFFFFF;
	Color _pressedColor = 0xFF716A63;
}

GroupDescription commonButtonEnabled
{
	ElementDescription _elements
	[
		"sunkenBorder",
		"buttonEnabledBorderPad"
	]
}

GroupDescription commonButtonDisabled
{
	ElementDescription _elements
	[
		"sunkenBorder",
		"buttonDisabledBorderPad"
	]
}

GroupDescription commonButtonHighlight
{
	ElementDescription _elements
	[
		"sunkenBorder",
		"buttonHighlightBorderPad"
	]
}

GroupDescription commonButtonPressed
{
	ElementDescription _elements
	[
		"sunkenBorder",
		"buttonPressedBorderPad"
	]
}

GroupDescription floatButtonEnabled
{
	ElementDescription _elements
	[
		"dialogBorder",
		"buttonEnabledBorderPad"
	]
}

GroupDescription floatButtonDisabled
{
	ElementDescription _elements
	[
		"dialogBorder",
		"buttonDisabledBorderPad"
	]
}

GroupDescription floatButtonHighlight
{
	ElementDescription _elements
	[
		"dialogBorder",
		"buttonHighlightBorderPad"
	]
}

GroupDescription floatButtonPressed
{
	ElementDescription _elements
	[
		"dialogBorder",
		"buttonPressedBorderPad"
	]
}

CheckDescription checkSimple : "borderButton"
{
	ElementDescription _check = "checkSimpleChecked";
	ElementDescription _content = "checkSimpleUnchecked";

	Color _enabledColor = 0xFF2E2B28;
	Color _disabledColor = 0xFF2E2B28;
	Color _highlightedColor = 0xFF2E2B28;
	Color _pressedColor = 0xFF2E2B28;
}

ImageDescription checkSimpleChecked
{
	int _topPad = 5;
	int _leftPad = 5;
	int _rightPad = 5;
	int _bottomPad = 5;
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "SimpleCheck";	
}

ImageDescription checkSimpleUnchecked : "checkSimpleChecked"
{
	Color _color = 0xFF2E2B28;
}

ComboDescription textCombo : "borderButton"
{
	ElementDescription _content = "textComboLabel";
	ElementDescription _list = "textComboDropdown";
	ElementDescription _label = "comboListText";
}

LabelDescription textComboLabel
{
	Alignment _alignment = MidRight;
	Flags _flags = ExpandWidth;
	
	int _bottomPad = 4;
	int _leftPad = 6;
	int _rightPad = 6;
	int _topPad = 4;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowDown";

	int _spacing = 4;
	LabelPosition _labelPosition = TextLeft;
	Alignment _textAlignment = MidLeft;
}

ListDescription textComboDropdown
{
	ElementDescription _border = "darkBorder";
	ElementDescription _container = "textComboContainer";

	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "White";

	Color _hoverColor = 0xFF706d68;
	Color _selectColor = 0xFFC6663C;
}

ContainerDescription textComboContainer
{
	int _leftPad = 4;
	int _rightPad = 4;
	int _topPad = 4;
	int _bottomPad = 4;

	int _width = -1;
	int _height = 208;
	int _scrollSpacing = 4;

	bool _allowShrinkHeight = true;

	ElementDescription _verticalScroll = "verticalScrollbar";
	ElementDescription _content = "textComboList";
}

RibbonDescription textComboList
{
	Flags _flags = ExpandWidth;
	bool _vertical = true;
	int _cellPad = 2;
}

LabelDescription comboListText
{
	Alignment _alignment = MidLeft;

	int _bottomPad = 0;
	int _leftPad = 2;
	int _rightPad = 2;
	int _topPad = 0;

	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:general";
	String _text = "Parameter";

	int _spacing = 0;
	int _textWidth = 0;
	LabelPosition _labelPosition = TextRight;
	Alignment _textAlignment = MidLeft;
}

TextDescription commonButtonText
{
	int _leftPad = 8;
	int _rightPad = 8;
	int _topPad = 4;
	int _bottomPad = 4;

	int _minWidth = 80;
	Font _font = "Font\FontMedium.rsc";
	StringTable _stringTable = "StringTable.rsc:common";
	String _text = "Ok";
}

ButtonDescription buttonOk : "borderButton" { ElementDescription _content = "buttonOkText"; }
ButtonDescription buttonCancel : "borderButton" { ElementDescription _content = "buttonCancelText"; }
ButtonDescription buttonYes : "borderButton" { ElementDescription _content = "buttonYesText"; }
ButtonDescription buttonNo : "borderButton" { ElementDescription _content = "buttonNoText"; }
ButtonDescription buttonApply : "borderButton" { ElementDescription _content = "buttonApplyText"; }

TextDescription buttonOkText : "commonButtonText" { String _text = "Ok"; }
TextDescription buttonCancelText : "commonButtonText" { String _text = "Cancel"; }
TextDescription buttonYesText : "commonButtonText" { String _text = "Yes"; }
TextDescription buttonNoText : "commonButtonText" { String _text = "No"; }
TextDescription buttonApplyText : "commonButtonText" { String _text = "Apply"; }

SpinnerDescription spinnerSmall
{
	ElementDescription _edit = "spinnerEditSmall";
	ElementDescription _buttonUp = "spinnerButtonUpSmall";
	ElementDescription _buttonDown = "spinnerButtonDownSmall";
}

NumberEditDescription spinnerEditSmall
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _minWidth = 32;
	int _rightPad = 2;
	int _leftPad = 2;

	Font _font = "Font\FontSmall.rsc";
	int _initialValue = 0;
	int _maxLength = 4;
	int _minValue = 0;
	int _maxValue = 9999;
	bool _allowNegative = false;
}

SpinnerDescription spinnerSmall5
{
	ElementDescription _edit = "spinnerEditSmall5";
	ElementDescription _buttonUp = "spinnerButtonUpSmall";
	ElementDescription _buttonDown = "spinnerButtonDownSmall";
}

NumberEditDescription spinnerEditSmall5
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _minWidth = 32;
	int _rightPad = 2;
	int _leftPad = 2;

	Font _font = "Font\FontSmall.rsc";
	int _initialValue = 0;
	int _maxLength = 5;
	int _minValue = 0;
	int _maxValue = 99999;
	bool _allowNegative = false;
}

SpinnerDescription spinnerSmall6
{
	ElementDescription _edit = "spinnerEditSmall6";
	ElementDescription _buttonUp = "spinnerButtonUpSmall";
	ElementDescription _buttonDown = "spinnerButtonDownSmall";
}

NumberEditDescription spinnerEditSmall6
{
	ElementDescription _border = "SharedElements.rsc:sunkenBorder";
	int _minWidth = 42;
	int _rightPad = 2;
	int _leftPad = 2;

	Font _font = "Font\FontSmall.rsc";
	int _initialValue = 0;
	int _maxLength = 6;
	int _minValue = 0;
	int _maxValue = 999999;
	bool _allowNegative = false;
}

ButtonDescription spinnerButtonUpSmall : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "spinnerImageUpSmall";
}

ButtonDescription spinnerButtonDownSmall : "SharedElements.rsc:raisedButton"
{
	ElementDescription _content = "spinnerImageDownSmall";
}

ImageDescription spinnerImageSmall
{
	int _bottomPad = 1;
	int _leftPad = 1;
	int _rightPad = 1;
	int _topPad = 1;
}

ImageDescription spinnerImageUpSmall : "spinnerImageSmall"
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowUpSmall";
}

ImageDescription spinnerImageDownSmall : "spinnerImageSmall"
{
	SpriteSheet _spriteSheet = "SpriteSheet.rsc";
	String _spriteName = "ArrowDownSmall";
}