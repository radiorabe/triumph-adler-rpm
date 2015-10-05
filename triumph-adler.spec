%define _install_dir /usr/share/printers/triumph-adler/
%define _version 20140115


Name: triumph-adler
Summary: Printer Configuration for Triumph Adler Printer
Version: %{_version}
Release: 1
License: proprietary
Group: Applications/Printing
Source: http://www.triumph-adler.com/C125712200447418/vwLookupDownloads/TALinuxPackages_cCD-cLP_%{_version}.tar.gz/\$FILE/TALinuxPackages_cCD-cLP_%{_version}.tar.gz
URL: http://www.triumph-adler.com
Packager: RaBe IT <it@rabe.ch>

%description
Contains the Linux driver packages from the triumph
adler website in an rpm so they are easy to deploy.

%prep
%setup -n LinuxPackagesTA

%build
chown -R root:root .

%install
find . -type d -exec install -d $RPM_BUILD_ROOT%{_install_dir}{} \;
find . -type f -exec install {} $RPM_BUILD_ROOT%{_install_dir}{} \;

%files
%{_install_dir}
