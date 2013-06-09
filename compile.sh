# Copyright (C) 2013 Lounge Katt

# This script is designed to compliment .bash_profile code to automate the build process by adding a typical shell command such as:
# function buildStar { cd /Users/TwistedZero/Dropbox/StarKissedMod; tools/./compile.sh $1; }
# This script is designed by Lounge Katt for use on MacOSX 10.7 but can be modified for other distributions of Mac and Linux

export CODESERVER=/Users/TwistedZero/Dropbox
export APKTOOLDIR=$CODESERVER/android-apktool

if cat /etc/issue | grep Ubuntu; then

ssh -t -t TwistedZero@twisted.dyndns.tv -p 6270 << EOF
        
        exit
EOF

else

    cd $APKTOOLDIR
    ./gradlew build fatJar proguard
    cp -R $APKTOOLDIR/brut.apktool/apktool-cli/build/libs/apktool-cli-2.0.0-Beta1-small.jar $APKTOOLDIR/deconstruct/apktool.jar

fi