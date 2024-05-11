#!/bin/bash

sudo pacman -Syu

sudo pamac install \
    mc \
    telegram-desktop \
    neofetch \
    google-chrome \
    steam \
    zoom \
    jupyter-notebook \
    docker-desktop --no-confirm

sudo pacman -S docker

sudo systemctl start docker.service
sudo systemctl enable docker.service

sudo usermod -aG docker $USER

