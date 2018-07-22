#!/bin/bash

add_to_taskbar=$1

if [ "$add_to_taskbar" != "" ]
then

  new_app=$(gsettings get com.canonical.Unity.Launcher favorites | sed "s~]~, 'application://${add_to_taskbar}.desktop']~")

  gsettings set com.canonical.Unity.Launcher favorites "$new_app"


fi
