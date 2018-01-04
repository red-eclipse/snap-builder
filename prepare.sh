#!/bin/bash
set -e

OLD_CWD="$(pwd)"
test -e snapcraft.yaml.in || { echo "Could not find snapcraft.yaml.in"; exit 1; }

export BRANCH=${BRANCH:-master}
export BUILD=${BUILD:-0}
export REVISION="0"
export GRADE=${grade:-devel}

echo "Working on $BRANCH branch (grade $GRADE), build $BUILD, revision $REVISION..."

mkdir -p build/$BRANCH/snap
cd build/$BRANCH

cp "$OLD_CWD/snapcraft.yaml.in" snap/snapcraft.yaml
sed -i "s/_BRANCH_/$BRANCH/g" snap/snapcraft.yaml
sed -i "s/_BUILD_/$BUILD/g" snap/snapcraft.yaml
sed -i "s/_REVISION_/$REVISION/g" snap/snapcraft.yaml
sed -i "s/_GRADE_/$GRADE/g" snap/snapcraft.yaml

echo "Prepared snapcraft project in" ./build/$BRANCH
