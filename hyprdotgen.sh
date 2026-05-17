#!/bin/bash

HYPRDIR=$HOME/.config/hypr
SETUPDIR=$HOME/GitHub/DotFiles/MyHyprlandConfig/

ln -sf $SETUPDIR/defines.conf $HYPRDIR/
ln -sf $SETUPDIR/env_desktop.conf $HYPRDIR/machine.conf
ln -sf $SETUPDIR/sets_desktop.conf $HYPRDIR/environments.conf
ln -sf $SETUPDIR/autostart.conf $HYPRDIR/
ln -sf $SETUPDIR/visual.conf $HYPRDIR/
ln -sf $SETUPDIR/shared_binds.conf $HYPRDIR/
ln -sf $SETUPDIR/shared_rules.conf $HYPRDIR/

ln -sf $SETUPDIR/hyprland.conf $HYPRDIR/

echo "Hyprland setup done!"
