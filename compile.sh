# Copyright (C) 2013 Lounge Katt

# This script is designed to compliment .bash_profile code to automate the build process by adding a typical shell command such as:
# function buildStar { cd /Users/TwistedZero/Dropbox/StarKissedMod; tools/./compile.sh $1; }
# This script is designed by Lounge Katt for use on MacOSX 10.7 but can be modified for other distributions of Mac and Linux

export APKTOOLDIR=$DROPBOX_SYSTEM/android-apktool

    cd $APKTOOLDIR
	# ./gradlew applyPatches
    # ./gradlew build fatJar proguard
    ./gradlew build fatJar
    cp -R $APKTOOLDIR/brut.apktool/apktool-cli/build/libs/apktool-cli.jar $APKTOOLDIR/deconstruct/apktool.jar