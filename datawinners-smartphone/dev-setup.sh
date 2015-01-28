rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update 4dba16025944
hg import --no-commit ../authorities.patch ../icons.patch ../target_package_change.patch ../removed-send-batching.patch
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
cd ..
rm -rf libs/
cp -rf opendatakit.collect/libs/ .
cp -r playservices/libs/* libs/
