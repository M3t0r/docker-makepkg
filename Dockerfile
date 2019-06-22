FROM archlinux/base:latest

RUN useradd -d /pkg -m builder \
	&& pacman -Sy --noconfirm --needed base-devel devtools \
	&& echo "ALL ALL=NOPASSWD: /usr/bin/pacman" >> /etc/sudoers

USER builder
WORKDIR /pkg
VOLUME /pkg

ENTRYPOINT ["makepkg"]
CMD ["--syncdeps", "--noconfirm"]

