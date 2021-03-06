#!/bin/bash

echo "##############################################"
echo "#                                            #"
echo "#               Building AOSP                #"
echo "#                  4.3_2.1                   #"
echo "#                                            #"
echo "##############################################"

# Starting Timer
START=$(date +%s)
DEVICE="$1"
ADDITIONAL="$2"
THREADS=`cat /proc/cpuinfo | grep processor | wc -l`

echo "Making directory"
mkdir AOSP
cd AOSP

echo "Initializing Repo"
repo init -u https://android.googlesource.com/platform/manifest -b android-4.3_r2.1

echo "Repo Syncing"
repo sync

END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
