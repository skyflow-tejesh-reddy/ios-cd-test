echo "Bumping pod version to $1.$2"

version=$1
SEMVER=${version:1}

sed -E "s/spec.version .+/spec.version      = \"$1.$2\"/g" "./dummy-pod-for-cd.podspec" > tempfile

sed -E "s/:commit => \".+\"/:commit => \"$2\"/g" tempfile > "./dummy-pod-for-cd.podspec" && rm -f tempfile


echo --------------------------
echo "Done, Pod now at $1.$2"

