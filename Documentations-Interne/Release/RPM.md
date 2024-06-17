---
title: Builder le RPM
description: 
published: true
date: 2024-06-17T09:36:34.319Z
tags: 
editor: markdown
dateCreated: 2024-06-17T09:36:34.319Z
---

# Connection au serveur
## Depot RPM
```
ssh root@172.18.50.13
```

## Depot RPM SAAS
```
ssh root@172.18.50.22
```

# Edition du SPEC
```
vi ~/rpmbuild/SPECS/itsm-ng.spec
```

Modifier `Version` et `Release` si besoin, et rajouter le changelog dans `%changelog`.

# Generer le SRPM
```
rpmbuild -bs --undefine=_disable_source_fetch itsm-ng.spec
```

# Generer le RPM dans la CHROOT Docker
```
mock -r almalinux-9-x86_64 rebuild ~/rpmbuild/SRPMS/itsm-ng-1.6.4-1.el9.src.rpm
cp /var/lib/mock/almalinux-9-x86_64/result/*.noarch.rpm ~/
```

# Signer le RPM
```
rpm --addsign itsm-ng-1.6.4-1.el9.noarch.rpm
```

# L'ajouter dans le depot
```
/var/www/html/redhat/9
cp ~/itsm-ng-1.6.4-1.el9.noarch.rpm .
createrepo --update .
```

# Note cette procedure est à faire pour toutes les versions:
- almalinux-8-x86_64
- almalinux-9-x86_64

- fedora-39-x86_64
- fedora-40-x86_64
- fedora-41-x86_64
