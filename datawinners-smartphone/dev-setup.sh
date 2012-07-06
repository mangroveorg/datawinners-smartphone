rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update f3d6d92d3066
hg import --no-commit ../month-year.patch ../authorities.patch
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
ln -s ./lib ./libs
cd ..
ln -s ./opendatakit.collect/lib ./libs
