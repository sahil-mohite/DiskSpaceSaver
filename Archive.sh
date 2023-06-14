#!/bin/bash

#Revision:001$
#$Wednesday 14 June 2023 12:59:06 PM IST

BASE=/home/sahil/Desktop
DAYS=10
DEPTH=1
RUN=0

#check if directory is present or not
if [ ! -d $BASE ]
then
    echo "Directory does not exist: $BASE"
    exit 1
fi

#Create 'archive' folder if not present

if [ ! -d $BASE/archive ]
then
    mkdir $BASE/archive
fi

#Find the list of files larger than 20MB

for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
    if [ $RUN -eq 0 ]
    then
        #echo "[$(date "+%Y-%m-%d")]" archiving $i --> $BASE/archive
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done


#Find the list of files more than 10 days
for i in `find $BASE -maxdepth $DEPTH -type f -mtime +10`
do
    if [ $RUN -eq 0 ]
    then
        #echo "[$(date "+%Y-%m-%d")]" archiving $i --> $BASE/archive
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done
