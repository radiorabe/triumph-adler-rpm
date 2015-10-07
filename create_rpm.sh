mkdir -p /root/rpmbuild/SOURCES
spectool -g /usr/local/share/triumph-adler.spec -C /root/rpmbuild/SOURCES/
rpmbuild -bb /usr/local/share/triumph-adler.spec
mkdir -p /tmp/rpmbuild
find /root/rpmbuild/RPMS/ -exec cp {} /tmp/rpmbuild/ \;
cd /tmp/rpmbuild
createrepo .
cp -r /tmp/rpmbuild/* /rpmbuild/
