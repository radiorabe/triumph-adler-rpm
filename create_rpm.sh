mkdir -p /root/rpmbuild/SOURCES
spectool -g /usr/local/share/triumph-adler.spec -C /root/rpmbuild/SOURCES/
rpmbuild -bb /usr/local/share/triumph-adler.spec
find /root/rpmbuild/RPMS/ -exec cp {} /rpmbuild/ \;
