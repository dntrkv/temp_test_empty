#!/bin/sh

GIT=`which git`
TEMP_DIR="./temp"

counter=11000

while [ $counter -lt 100000 ]
do
  branch_name="branch-$counter"

  echo "Creating branch: $branch_name"

  ${GIT} checkout -b $branch_name

  touch "$TEMP_DIR/$counter"

  echo "$counter - this is some data" > $TEMP_DIR/$counter

  ${GIT} add --all .
  ${GIT} commit -m "Test commit $counter"

  counter=`expr $counter + 1`
done


