# This repo will auto build some kernels like:

- linux-bfq-dev
- linux-cjktty
- linux-ck
- ~~linux-ck-lts~~
- linux-ck-uksm
- ~~linux-ck-uksm-cjktty~~
- linux-clear
- linux-gc
- linux-libre
- linux-lqx ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#liquorix) is the liquorix repo)
- linux-mainline
- ~~linux-mainline-anbox~~
- linux-next
- linux-pds
- linux-pf-git ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#kernel) is the kernel repo(include Pf,XanMod,Liquorix))
- ~~linux-rt~~ ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#realtime) is the realtime repo)
- ~~linux-rt-bfq-dev~~
- linux-rt-lts
- linux-uksm
- linux-xanmod
- linux-xanmod-anbox
- linux-xanmod-tt
- linux-xanmod-tt-uksm-cjktty
- linux-xanmod-edge
- linux-xanmod-lts
- linux-xanmod-rt
- linux-lts (from 4.4 to 5.10,[here](https://wiki.archlinux.org/title/Unofficial_user_repositories#kernel-lts) is the kernel-lts repo)

#### If you wanna use this repo, add following things to your `/etc/pacman.conf`

```
[kernels]
SigLevel = Never
Server = https://github.com/antman666/kernel-repo/releases/download/$arch
```

or you can use reverse proxy from [zhullyb](https://zhullyb.top) , [aya](https://github.com/Brx86) , [fastgit](https://fastgit.org)

```
[kernels]
SigLevel = Never
Server = https://r.zhullyb.top/https://github.com/antman666/kernel-repo/releases/download/$arch
Server = https://git.aya1.top/antman666/kernel-repo/releases/download/$arch
Server = https://hub.fastgit.xyz/antman666/kernel-repo/releases/download/$arch
```

Then run

```
sudo pacman -Syy
```

# This repo will update twice a week

---

## [linux-cachyos](https://wiki.cachyos.org/) is a great project, [here](https://mirror.cachyos.org/repo/x86_64/cachyos/) is repo

From CachyOS's wiki:

How to add our Repo automatically with CPU detection (if x86-64-v3 is supported)

Just run following command:

automatic march detection and changing the pacman.conf:

```
wget https://build.cachyos.org/cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz
sudo ./cachyos-repo.sh
```

manually:

```
sudo pacman-key --recv-keys F3B607488DB35A47 --keyserver keyserver.ubuntu.com

sudo pacman-key --lsign-key F3B607488DB35A47

sudo pacman -U 'https://mirror.cachyos.org/repo/x86_64/cachyos/cachyos-keyring-2-1-any.pkg.tar.zst' 'https://mirror.cachyos.org/repo/x86_64/cachyos/cachyos-mirrorlist-8-1-any.pkg.tar.zst' 'https://mirror.cachyos.org/repo/x86_64/cachyos/cachyos-v3-mirrorlist-8-1-any.pkg.tar.zst'
```

**Checking x86_64_v3 cpu support:**

```
/lib/ld-linux-x86-64.so.2 --help | grep "x86-64-v3 (supported, searched)"
```

if you get an output change at the /etc/pacman.conf following:

```
#Architecture = auto
Architecture = x86_64 x86_64_v3
```

add following under the arch repos the "-v3" repos only if they are supported:

```
# cachyos repos
[cachyos-desktop-v3]
Include = /etc/pacman.d/cachyos-v3-mirrorlist
[cachyos-v3]
Include = /etc/pacman.d/cachyos-v3-mirrorlist
[cachyos-desktop]
Include = /etc/pacman.d/cachyos-mirrorlist
[cachyos]
Include = /etc/pacman.d/cachyos-mirrorlist
```

if not, add this

```
[cachyos-desktop]
Include = /etc/pacman.d/cachyos-mirrorlist
[cachyos]
Include = /etc/pacman.d/cachyos-mirrorlist
```
---

About DKMS:

Q:How to ues CLANG/LLVM/LTO compiled kernels on Nvidia driver with DKMS?

A:Not need anymore since dkms 3.0.1
