# This repo will auto build some kernels like:

- linux-bfq-dev
- linux-cjktty
- linux-ck
- linux-ck-uksm
- linux-ck-uksm-cjktty
- linux-clear
- linux-gc
- linux-libre
- linux-lqx ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#liquorix) is the liquorix repo)
- linux-mainline
- linux-mainline-anbox
- linux-next
- linux-pds
- linux-pf-git ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#kernel) is the kernel repo(include Pf,XanMod,Liquorix))
- linux-rt ([here](https://wiki.archlinux.org/title/Unofficial_user_repositories#realtime) is the realtime repo)
- linux-rt-bfq-dev
- linux-rt-lts
- linux-uksm
- linux-xanmod
- linux-xanmod-anbox
- linux-xanmod-cacule
- linux-xanmod-cacule-uksm-cjktty
- linux-xanmod-edge
- linux-xanmod-lts
- linux-xanmod-rt
- linux-lts (from 4.4 to 5.4,[here](https://wiki.archlinux.org/title/Unofficial_user_repositories#kernel-lts) is the kernel-lts repo)

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
Server = https://hub.fastgit.org/antman666/kernel-repo/releases/download/$arch
```

Then run

```bash
sudo pacman -Syy
```

# This repo will update twice a week
