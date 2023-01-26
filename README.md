# This repo will auto build some kernels like:

- linux-cjktty
- linux-ck
- linux-clear
- linux-git
- linux-libre
- linux-lqx ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#liquorix) is the liquorix repo)
- linux-mainline
- linux-multimedia
- linux-next-git
- linux-pds
- linux-pf-git ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#kernel) is the kernel repo(include Pf,XanMod,Liquorix))
- ~~linux-rt~~ ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#realtime) is the realtime repo)
- linux-shmilee (with the xanmod, uksm and cjktty patches)
- ~~linux-uksmd (need [uksmd](https://aur.archlinux.org/packages/uksmd))~~
- linux-xanmod
- linux-xanmod-anbox
- ~~linux-xanmod-edge~~
- linux-xanmod-lts
- linux-xanmod-rt
- ~~linux-xanmod-tt~~
- linux-xanmod-tt-uksm-cjktty
- linux-lts (from 4.9 to 5.10,[here](https://wiki.archlinux.org/title/Unofficial_user_repositories#kernel-lts) is the kernel-lts repo)

You can find ```linux-git, linux-libre, linux-mainline, linux-next-git, linux-xanmod, linux-xanmod-edge``` in [archlinux-cn](https://repo.archlinuxcn.org/)

#### If you wanna use this repo, add following things to your `/etc/pacman.conf`

```
[kernels]
SigLevel = Never
Server = https://github.com/antman666/kernel-repo/releases/download/$arch
```

Then run

```
sudo pacman -Syy
```

# This repo will update twice a week

---

About DKMS:

Q:How to ues CLANG/LLVM compiled kernels on Nvidia driver with DKMS?

A:Not need anymore since dkms 3.0.1 (as you have installed a kernel compiled with CLANG/LLVM)
