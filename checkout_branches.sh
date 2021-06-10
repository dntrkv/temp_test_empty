#!/bin/sh

GIT=`which git`

counter=10

while [ $counter -lt 1000 ]
do
  branch_name="branch-$counter"

  echo "Checking out branch: $branch_name"

  ${GIT} checkout $branch_name

  counter=`expr $counter + 1`
done


