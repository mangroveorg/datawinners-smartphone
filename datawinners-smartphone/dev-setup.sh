rm -rf ./opendatakit.collect/
hg clone https://code.google.com/p/opendatakit.collect/
cd ./opendatakit.collect/
hg update 4dba16025944
hg import --no-commit ../authorities.patch ../icons.patch ../target_package_change.patch ../removed-send-batching.patch ../enable_autocomplete.patch ../fix_backspace_bug_in_autocomplete.patch ../warning_message_toast_for_autocomplete.patch
android update lib-project --target 2 --path ./
echo "android.library=true" >> project.properties
cd ..
rm -rf libs/
cp -rf opendatakit.collect/libs/ .
cp -r playservices/libs/* libs/
