echo "Bumping pod version to v$1"

#targetFile = "./dummy-pod-for-cd.podspec"

sed -E "s/([0-9]+)\.([0-9]+)\.([0-9]+)(.([0-9]+))?/$1/g" "./dummy-pod-for-cd.podspec" > tempfile && cat tempfile > "./dummy-pod-for-cd.podspec" && rm -f tempfile
echo --------------------------
echo Done, Pod now at v$1
