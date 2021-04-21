upm_path=upm-storage
version=0.0.3

mkdir $upm_path

# 拷贝资源
cp -r storage/ $upm_path/
cd $upm_path
git init
git config user.name "test-bot"
git config user.email "test@email.com"
git add .
git commit -m "version: "$version;
git tag $version
# git push origin $version
git push -f git@github.com:onerain88/UPMTest.git $version

cd ..

rm -rf $upm_path

echo "done"
