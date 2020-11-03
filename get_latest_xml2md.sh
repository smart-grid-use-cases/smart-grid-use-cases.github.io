set -o nounset
set -o errexit

latest_url=$(wget https://github.com/smart-grid-use-cases/xml2md/releases/latest --max-redirect=0 2>&1 | grep Location)
echo "Latest URL: $latest_url"
prefix="Location: https://github.com/smart-grid-use-cases/xml2md/releases/tag/"
suffix=" [following]"
tail=${latest_url#"$prefix"}
release_version=${tail%"$suffix"}
echo "Release version: $release_version"
wget https://github.com/smart-grid-use-cases/xml2md/releases/download/${release_version}/Bridge.zip
unzip Bridge.zip -d content/en/docs/
for dir in $(find content/en/docs/Bridge/ -mindepth 1 -maxdepth 1 -type d);
do
  cp -a $dir content/en/docs/UseCases
done
rm Bridge.zip
rm -f content/en/docs/Bridge/_index.md
