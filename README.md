# This repo will auto build some kernels like:

linux-bfq-dev, linux-ck, linux-ck-uksm, linux-ck-uksm-cjktty, linux-clear, linux-gc, linux-libre, linux-lqx, linux-pds, linux-pf, linux-rt, linux-uksm, linux-xanmod, linux-xanmod-anbox, linux-xanmod-cacule, linux-xanmod-cacule-uksm-cjktty, linux-xanmod-edge, linux-xanmid-lts, linux-xanmod-rt, linux-next, linux-mainline, linux-lts

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
Server = https://git.aya1.xyz/https://github.com/antman666/kernel-repo/releases/download/$arch
Server = https://hub.fastgit.org/antman666/kernel-repo/releases/download/$arch
```

Then run

```bash
sudo pacman -Syy
```

# This repo will update once a week
