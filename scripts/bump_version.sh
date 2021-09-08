echo "Bumping pod version to v$1.$2"



sed -E "s/spec.version .+/spec.version      = \"$1.$2\"/g" "./dummy-pod-for-cd.podspec" > tempfile

sed -E "s/:commit => \".+\"/:commit => \"$2\"/g" tempfile > "./dummy-pod-for-cd.podspec" && rm -f tempfile


echo --------------------------
echo Done, Pod now at v$1.$2

