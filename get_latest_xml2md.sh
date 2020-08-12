latest_url=$(wget https://github.com/richardmarston/xml2md/releases/latest --max-redirect=0 2>&1 | grep Location)
echo "latest url: $latest_url"
prefix="Location: https://github.com/richardmarston/xml2md/releases/tag/"
suffix=" [following]"
tail=${latest_url#"$prefix"}
echo "tail: $tail"
release_version=${tail%"$suffix"}
echo "release version: $release_version"
wget https://github.com/richardmarston/xml2md/releases/download/${release_version}/Bridge.zip
