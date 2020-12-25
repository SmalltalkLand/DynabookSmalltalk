#!/bin/sh
cp -r sqcogspur64linuxht release
cp release.image.gz release/squeak.image.gz
cat <<"END" > release/start.sh
#!/bin/sh
t=$(mktemp /tmp/XXXXXX)
cat ./squeak.image.gz | gzip -d > $t
exec ./squeak $t $@
END
tar -czvf release.tar.gz ./release
