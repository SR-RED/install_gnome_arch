#!/bin/bash

# Actualizar el sistema
sudo pacman -Syu --noconfirm

# Instalar GNOME y componentes ligeros
sudo pacman -S gnome gnome-extra gnome-tweaks firefox pcmanfm mousepad telegram-desktop tor-browser  --noconfirm

# Eliminar aplicaciones innecesarias (ajústalo según tus necesidades)
sudo pacman -Rnsc gnome-backgrounds gnome-books gnome-boxes gnome-contacts gnome-documents gnome-maps gnome-photos gnome-weather gnome-music gnome-todo

# Habilitar servicios necesarios
sudo systemctl enable gdm.service
sudo systemctl enable NetworkManager.service

# Limpieza de caché y paquetes no necesarios
sudo pacman -Scc --noconfirm

echo "Instalación completada. Reinicie su sistema para iniciar GNOME ligero."
