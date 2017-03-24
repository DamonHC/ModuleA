#!/bin/bash


Cyan='\033[0;36m'
Default='\033[0;m'

projectName=""
tag=""
confirmed="n"

getProjectName()
{
read -p "Enter Project Name: " projectName

if test -z "$projectName"; then
getProjectName
fi
}

getTag() {
read -p "Enter tag: " tag

if test -z "$tag"; then
getTag
fi
}

getInfomation() {
getProjectName
getTag

echo -e "\n${Default}================================================"
echo -e "  Project Name  :  ${Cyan}${projectName}${Default}"
echo -e "  tag           :  ${Cyan}${tag}${Default}"
echo -e "================================================\n"
}

echo -e "\n"
while [ "$confirmed" != "y" -a "$confirmed" != "Y" ]
do
if [ "$confirmed" == "n" -o "$confirmed" == "N" ]; then
getInfomation
fi
read -p "confirm? (y/n):" confirmed
done

specFilePath="${projectName}.podspec"

echo "editing..."
sed -i "" "s%s.version .*%s.version       = \"${tag}\"%g" "$specFilePath"
echo "edit finished"

echo "adding tag..."
git add .
git commit -m "${tag}"
git tag ${tag}
git push origin master --tags
echo "finished adding tag"

