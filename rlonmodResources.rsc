//This resource needs to be named <ModName>Resources.rsc:resource. If not, it will not load properly when packaged in mod format.

ExternalList resource
{
	External _resources
	[
		// toolbar - references building and everything else - nothing else need be listed here
		"Toolbar/Toolbars.rsc:advancedmine"
		"Toolbar/Toolbars.rsc:advancedquarry"
		"Toolbar/Toolbars.rsc:storagewagon"
		
		// To be readded when the modkit allows for custom roadspeeds.
		//"Toolbar/Toolbars.rsc:packeddirtroad"
		//"Toolbar/Toolbars.rsc:pavedstoneroad"		
	]
}