cd ..
rm -rf opendatakit.collect/ 
hg clone https://code.google.com/p/opendatakit.collect/
android update lib-project --target 2 --path ./opendatakit.collect/
cd opendatakit.collect/
echo "android.library=true" >> project.properties
cd ../datawinners-smartphone/
echo "android.library.reference.1=../opendatakit.collect" > project.properties
ln -s ../opendatakit.collect/lib ./libs
