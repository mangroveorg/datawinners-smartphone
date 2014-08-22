rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update b00ca8d82040
hg import --no-commit ../authorities.patch ../icons.patch
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
ln -s ./lib ./libs
cd ..
ln -s ./opendatakit.collect/lib ./libs
