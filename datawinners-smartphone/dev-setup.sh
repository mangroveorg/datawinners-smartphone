rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update cae3c64dbea7
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
echo "jar.libs.dir=lib" >> ant.properties
cd ..
ln -s ./opendatakit.collect/lib ./libs
