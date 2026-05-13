FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
        archiso \
        base-devel \
        git \
        sudo \
        squashfs-tools \
        dosfstools \
        mtools \
        xorriso \
        e2fsprogs \
        libisoburn \
        grub

RUN useradd -m builder && \
    echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER builder
WORKDIR /home/builder

CMD ["/bin/bash"]