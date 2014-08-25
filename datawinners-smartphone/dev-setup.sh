rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update b00ca8d82040
hg import --no-commit ../authorities.patch ../icons.patch ../target_package_change.patch
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
cd ..
mkdir libs
cp -r opendatakit.collect/libs/* libs/
cp -r playservices/libs/* libs/
