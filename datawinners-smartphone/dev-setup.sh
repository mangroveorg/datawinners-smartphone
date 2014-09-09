rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update 7f025be4345e
hg import --no-commit ../authorities.patch ../icons.patch ../target_package_change.patch
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
cd ..
cp -r opendatakit.collect/libs/* libs/
cp -r playservices/libs/* libs/
