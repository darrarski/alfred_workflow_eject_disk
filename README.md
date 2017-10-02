# Eject Disk (Alfred Workflow)

## Info

Eject Disk is a workflow for [Alfred](https://www.alfredapp.com) app that allows to eject disk from macOS. Unlike the build-in "eject" command it really ejects a disk, instead just unmounting it.

Works with Alfred v3.5 with Power Pack.

## Installation

1. Download `Eject Disk.alfredworkflow` from releases
2. Open the file in Alfred to import workflow

## Usage

1. Type `eject` in Alfred to see list of ejectable disks
2. You can filter results by adding name of the disk after the command
3. If you don't want to use build-in eject (that unmounts the disk) you can disable it in Alfred Preferences (Features/System/Eject)

## Technical details

This workflow talks to `Finder` app  using Apple Script. There are two scripts:

1. [list\_ejectable\_disks](Scripts/list_ejectable_disks.applescript) - script that returns list of ejectable disks
2. [eject\_disk](Scripts/eject_disk.applescript) - script that ejects a disk

## License

Copyright © 2017 Dariusz Rybicki Darrarski

[MIT License](LICENSE). You are allowed to use the source code commercially, but licence and copyright notice MUST be distributed along with it.
