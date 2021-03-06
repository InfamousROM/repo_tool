#!/bin/sh

version=1.0

chmod -R +x tools
PATH=tools:$PATH

while :
do

  clear
  echo 
  echo "##########################################################"
  echo "#                 Jamison904 Tools                       #"
  echo "#========================================================#"  
  echo "#               1 - Install Java-6                       #"
  echo "#               2 - Install Required Packages            #"
  echo "#               3 - Sync AoCP Jellybean                  #"
  echo "#               4 - Sync CM9                             #"
  echo "#               5 - Sync AOSP Jellybean                  #"
  echo "#               6 - Sync LiquidSmooth JB                 #"
  echo "#               7 - sync CNA Jellybean                   #"
  echo "#               8 - Sync CM10                            #"
  echo "#               9 - Sync AOKP                            #"
  echo "#              10 - Sync AOKP Jellybean                  #"
  echo "#              11 - Sync Baked AOSP                      #"
  echo "#              12 - Slim 4.2                             #"
  echo "#              13 - AOKP MR2                             #"
  echo "#              14 - Sync AOSP 4.3                        #"
  echo "##########################################################"
  echo "#                      x - Exit                          #"
  echo "##########################################################"
  echo 
  echo -n "Enter option: "
  read opt
  
  if [ "$?" != "1" ]
  then
    case $opt in
     1) sh tools/java-6.sh; echo "Done.";;
      2) sh tools/packages.sh; echo "Done.";;     
      3) sh tools/AoCP.sh; echo "Done.";;
      4) sh tools/CM9.sh; echo "Done.";;
      5) sh tools/AOSP.sh; echo "Done";;
      6) sh tools/Liquid.sh; echo "Done";;
      7) sh tools/CNA.sh; echo "Done";;
      8) sh tools/CM10.sh; echo "Done";;
      9) sh tools/AOKP.sh; echo "Done";;
     10) sh tools/AOKP-JB.sh; echo "Done";;
     11) sh tools/AOSPBaked.sh; echo "Done";;
     12) sh tools/Slim.sh; echo "Done";;
     13) sh tools/AOKP-MR2.sh; echo "Done";;
     14) sh tools/AOSP_4.3.sh; echo "Done";;
      x) clear; echo; echo "Goodbye."; echo; exit 1;;
      *) echo "Invalid option"; continue;;
    esac
  fi

  tools/press_enter

done

