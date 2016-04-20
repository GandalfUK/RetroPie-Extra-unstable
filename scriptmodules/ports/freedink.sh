#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="freedink"
rp_module_desc="FreeDink - Dink Smallwood Engine"
rp_module_menus="4+"
rp_module_flags="nobin !mali !x86"

function install_freedink() {
    aptInstall freedink
}

function configure_freedink() {
    mkRomDir "ports"
    moveConfigDir "$home/.dink" "$md_conf_root/$md_id"

    addPort "$md_id" "freedink" "FreeDink - Dink Smallwood Engine" "freedink"
}
