echo "Bumping pod version to $1"

sed -E "s/([0-9]+)\.([0-9]+)\.([0-9]+)(.([0-9]+))?/$1/g" "./dummy-pod-for-cd.podspec"
