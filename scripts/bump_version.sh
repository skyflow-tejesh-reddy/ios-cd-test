echo "Bumping pod version to $1.$2"

version=$1
SEMVER=${version:1}

if [ -z $2 ]
then
    sed -E "s/spec.version .+/spec.version      = \"$SEMVER\"/g" "./dummy-pod-for-cd.podspec" > tempfile
else
    sed -E "s/spec.version .+/spec.version      = \"$SEMVER-dev.$2\"/g" "./dummy-pod-for-cd.podspec" > tempfile
fi

sed -E "s/:commit => \".+\"/:commit => \"$2\"/g" tempfile > "./dummy-pod-for-cd.podspec" && rm -f tempfile


echo --------------------------
echo "Done, Pod now at $1.$2"
