FROM centos

RUN yum install -y rpmdevtools

COPY create_rpm.sh /usr/local/bin/create_rpm.sh
COPY triumph-adler.spec /usr/local/share/triumph-adler.spec

CMD /usr/local/bin/create_rpm.sh
