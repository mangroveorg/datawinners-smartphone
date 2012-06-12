rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update 15185704d55c
hg import ../month-year.patch -m"issue 432  - provide a "month-year" and "year" appearance to show only those"
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
echo "jar.libs.dir=lib" >> ant.properties
cd ..
ln -s ./opendatakit.collect/lib ./libs
