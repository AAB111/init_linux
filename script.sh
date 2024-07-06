#!/bin/bash -x

sudo pacman -Syu

sudo pamac install base-devel --no-confirm

sudo pacman -Syu mc \
    telegram-desktop \
    neofetch \
    steam \
    jupyter-notebook \
    docker \
    docker-compose \
    code \
    pycharm-community-edition \
    optimus-manager \
    optimus-manager-qt

sudo systemctl enable optimus-manager

sudo pamac build \
     google-chrome \
     docker-desktop

sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

sudo mhwd -f -i pci video-hybrid-intel-nvidia-prime
sudo mhwd -f -i pci video-linux

reboot
