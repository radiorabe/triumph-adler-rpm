Build some RPMs for Triumph Adler printers.

Takes the upstream sources and builds an RPM containing all available Linux drivers.

Docker is used as a clean room build facility.

## Preparing the Build Env

```bash
docker build -t rpmbuild .
```

## Building the RPM

```bash
docker run --rm -it -v `pwd`/rpm:/rpmbuild rpmbuild
```

THe rpm subdir now contains some RPMs which are ready for further publishing.

Upload them to your spacewalk server or whatever. I don't believe we are
allowed to host the binaries in the open.
