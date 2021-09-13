echo "Bumping pod version to $1.$2"

version=$1
SEMVER=${version:1}

if [ -z $2 ]
then
    sed -E "s/spec.version .+/spec.version      = \"$SEMVER\"/g" "./dummy-pod-for-cd.podspec" > tempfile
    
    echo --------------------------
    echo "Done, Pod now at v$1"

else
    sed -E "s/spec.version .+/spec.version      = \"$SEMVER-dev.$2\"/g" "./dummy-pod-for-cd.podspec" > tempfile
    
    echo --------------------------
    echo "Done, Pod now at v$1-dev.$2"

fi

sed -E "s/:commit => \".+\"/:commit => \"$2\"/g" tempfile > "./dummy-pod-for-cd.podspec" && rm -f tempfile

