Name:           acc
Version:        1.0
Release:        2%{?dist}
Summary:        Ada Completion Candidates

License:        MIT
URL:            https://github.com/kg6zvp/%{name}
Source0:        acc-1.0.tar.gz

BuildRequires:  gcc-gnat fedora-gnat-project-common ahven gprbuild
# Build only on architectures where gcc-gnat is available:
ExclusiveArch:  %{GPRbuild_arches}

%global common_description_en \
Completion Candidates for the Ada programming language.

%global common_description_de \
Completion Candidates for the Ada programming language.

%description %{common_description_en}

Features:
 - Easy to use

%description -l de %{common_description_de}

 - Einfach zu benutzen

%global debug_package %{nil}

%prep
%setup -c acc-1.0

%build
gprclean acc.gpr
gprbuild acc.gpr

%install
gprinstall -r --prefix=%{buildroot}/usr --lib-subdir=lib64 -p acc.gpr

%files
%{_includedir}/%{name}
%{_libdir}/%{name}.*
%{_GNAT_project_dir}/*

%changelog
* Sun Apr 18 2021 Sam <kg6zvp@gmail.com> - 1.0
- Created

