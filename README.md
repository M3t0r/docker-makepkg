# docker-makepkg
Build an Archlinux package without cluttering your system with build dependencies, or on non-arch hosts.

# Usage

    git clone "https://aur.archlinux.org/yay.git"
    docker run --rm -v $(pwd)/yay/:/pkg/ m3t0r/makepkg
    pacman -U yay/yay*.tar.gz
