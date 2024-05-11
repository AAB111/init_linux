#!/bin/bash -ex

sudo pacman -Syu

sudo pamac install base-devel --no-confirm

sudo pacman -Syu mc \
    telegram-desktop \
    neofetch \
    steam \
    jupyter-notebook \
    docker \
    code \
    pycharm-community-edition

sudo pamac build \
     google-chrome \
     zoom \
     docker-desktop

sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

reboot
