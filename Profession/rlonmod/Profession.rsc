Profession quarryman
{
	StringTable _stringTable = "Language\rlonmod\StringTable.rsc:profession";
	SpriteSheet _spriteSheet = "Dialog\SpriteSheet.rsc";

	String _text = "ProfessionQuarryman";
	String _toolTipText = "ProfessionQuarrymanTip";
	String _deathText = "ProfessionQuarrymanDeath";

	int _sortPriority = 650;
	bool _transient = false;

	RandomSelection _deathSelector
	{
		float _years = 5;
		float _population = 500;
	}
}
