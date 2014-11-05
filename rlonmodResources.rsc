//This resource needs to be named <ModName>Resources.rsc:resource. If not, it will not load properly when packaged in mod format.

ExternalList resource
{
	External _resources
	[
		// toolbar - references building and everything else - nothing else need be listed here
		"Toolbars/Toolbar.rsc:advancedcropfield"
		"Toolbars/Toolbar.rsc:advancedorchard"
		"Toolbars/Toolbar.rsc:advancedmine"
		"Toolbars/Toolbar.rsc:advancedquarry"
		"Toolbars/Toolbar.rsc:storagewagon"
		
		"Toolbars/AdvancedStorageToolbar.rsc:advancedstorage"
		"Toolbars/AdvancedStorageToolbar.rsc:wood"
		"Toolbars/AdvancedStorageToolbar.rsc:iron"
		"Toolbars/AdvancedStorageToolbar.rsc:stone"
		"Toolbars/AdvancedStorageToolbar.rsc:fuel"
		// To be readded
		//"Toolbars/AdvancedStorageToolbar.rsc:firewood"
		//"Toolbars/AdvancedStorageToolbar.rsc:coal"
		
		// To be readded when the modkit allows for custom roadspeeds.
		//"Toolbar/Toolbars.rsc:packeddirtroad"
		//"Toolbar/Toolbars.rsc:pavedstoneroad"		
	]
}