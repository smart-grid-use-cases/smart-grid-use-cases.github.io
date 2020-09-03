latest_url=$(wget https://github.com/smart-grid-use-cases/xml2md/releases/latest --max-redirect=0 2>&1 | grep Location)
echo "Latest URL: $latest_url"
prefix="Location: https://github.com/smart-grid-use-cases/xml2md/releases/tag/"
suffix=" [following]"
tail=${latest_url#"$prefix"}
release_version=${tail%"$suffix"}
echo "Release version: $release_version"
wget https://github.com/smart-grid-use-cases/xml2md/releases/download/${release_version}/Bridge.zip
unzip Bridge.zip -d content/en/docs/
rm Bridge.zip
