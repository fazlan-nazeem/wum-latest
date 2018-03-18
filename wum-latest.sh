#!/bin/bash 
#description     :This script will check for the latest available wum pack in the local computer, and copy it to the current directory
#author		 :fazlann@wso2.com

if [ $# -lt 2 ]
  then
    echo "Error : Please specify a product name and its version"
    exit 
fi

LATEST_WUM_PACK=`ls -t ~/.wum-wso2/products/"$1"/"$2" | head -n1`

echo "Latest wum pack of $1 version $2 is : $LATEST_WUM_PACK"
echo "Copying $LATEST_WUM_PACK to current directory"

cp ~/.wum-wso2/products/"$1"/"$2"/$LATEST_WUM_PACK .

