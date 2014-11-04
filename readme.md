========================================
Rlon|Mod
========================================

 This is a first attempt at modding the game Banished. The goal is to produce an all-in-one type mod, with the common popular fixes, and greater compatibility.

 This mod is also an attempt at defining an acceptable common model for the development of Banished mods for Github.

========================================
Technical
========================================

 The repo should be cloned into the folder containing the Banished Mod Development Kit. That is, the folder containing /bin, /example, and /resource. If it is not, the build script will fail to run.

 To build this mod, run build.bat. It will:

	1. Increment the build number
	2. Compile the source.
	3. Package the compiled source from /bin.
	4. Copy the packaged file from ../bin/WinData to /dist.
	5. Attempt to copy the packaged file into the Steam installation, if it exists.

========================================
Package Hiearchy
========================================

  Mod
    |
    |-->Readme.txt
    |
    |-->build.bat
    |-->run.bat
    |
    |-->Package.rsc
    |-->rlonmodResources.rsc
    |
    |-->Misc   
    |     |-->Icon.png
    |     |-->Preview.png
    |
    |-->Language
    |     |-->Stringtable.rsc
    |
    |-->Structure
    |     |-->Structure.rsc
    |
    |-->Profession
    |     |-->Profession.rsc
    |
    |~~>Others (etc.)
    |