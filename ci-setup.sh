rm -rf /var/lib/jenkins/opendatakit.collect
cd /var/lib/jenkins
hg clone https://code.google.com/p/opendatakit.collect/
android update lib-project --target 2 --path ./opendatakit.collect/
cd opendatakit.collect/
echo "jar.libs.dir=lib" > ant.properties
echo "android.library=true" >> project.properties
cd ../jobs/Datawinners-SmartPhone/workspace/
echo "android.library.reference.1=../../../opendatakit.collect" > ant.properties
ln -s ../../../opendatakit.collect/lib ./libs
ant release
