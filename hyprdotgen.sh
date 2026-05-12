#!/bin/bash

HYPRDIR=$HOME/.config/hypr
SETUPDIR=$HOME/GitHub/DESDF/Hyprland

ln -s $SETUPDIR/defines.conf $HYPRDIR/
ln -s $SETUPDIR/env_desktop.conf $HYPRDIR/machine.conf
ln -s $SETUPDIR/sets_desktop.conf $HYPRDIR/environments.conf
ln -s $SETUPDIR/autostart.conf $HYPRDIR/
ln -s $SETUPDIR/visual.conf $HYPRDIR/
ln -s $SETUPDIR/shared_binds.conf $HYPRDIR/
ln -s $SETUPDIR/shared_rules.conf $HYPRDIR/

ln -s $SETUPDIR/hyprland.conf $HYPRDIR/

echo "Hyprland setup done!"
