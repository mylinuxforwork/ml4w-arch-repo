# ML4W Arch Repository

Needed for ML4W OS ISO to provide selected AUR packages.

```
[ml4w-arch-repo]
SigLevel = Optional TrustAll
Server = https://raw.githubusercontent.com/mylinuxforwork/ml4w-arch-repo/refs/heads/main/$arch
```
## Compile package

For example for yay-bin

```
git clone https://aur.archlinux.org/yay-bin.git
cd package-name
makepkg -s
```

Copy the generated *.pkg.tar.zst to the x86_64 folder.

Run ./build.sh