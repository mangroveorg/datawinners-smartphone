cd ..
rm -rf opendatakit.collect/ 
hg clone https://code.google.com/p/opendatakit.collect/
android update lib-project --target 2 --path ./opendatakit.collect/
cd opendatakit.collect/
echo "android.library=true" >> project.properties
echo "jar.libs.dir=lib" >> ant.properties
cd ../datawinners-smartphone/
ln -s ../opendatakit.collect/lib ./libs
