#!/bin/bash

# All-in-One Install script for b;eat 3.5 GPIO Control and UPS Tools.
# Author: yhlee @ SDT Inc. DX Device Team
# Date: 2025.04.30

# Changelog
# 2025-04-30    : Add select features for which tool installed.

# Ask to User which want to install.
PS3="Select which want to instll : "
select menu in "Install GPIO & UPS Tools" "GPIO Tool" "UPS Tool" "- Exit Program"
do
    case $menu in
        "Install GPIO & UPS Tools")
            echo -e '\033[33m''<< Install GPIO & UPS Tools >>''\033[0m'
            # Download packages from SDT-yhlee's OneDrive storage
            echo -e '\033[33m''<< Download packages from SDT-yhlee_archive... >>''\033[0m'
            sudo wget "https://github.com/SDT-yhlee/spc_tools_storage/raw/refs/heads/main/spc_gpio_ctl_tool.tar.gz" -O spc_gpio_ctl_tool.tar.gz
            sudo wget "https://github.com/SDT-yhlee/spc_tools_storage/raw/refs/heads/main/Install_Script_For_UPS.tar.gz" -O Install_Script_For_UPS.tar.gz

            # Extract Download files
            echo -e '\033[33m''<< Extract spc_gpio_ctl_tool files ... >>''\033[0m' 
            tar -xzf spc_gpio_ctl_tool.tar.gz
            echo -e '\033[33m''<< Extract UPS daemon files ... >>''\033[0m' 
            tar -xzf Install_Script_For_UPS.tar.gz

            # Install SPC GPIO Control Tool
            echo -e '\033[33m''<< Install spc_gpio_ctl tool ... >>''\033[0m'
            cd spc_gpio_ctl_tool/
            sudo ./install_spc_gpio_ctl.sh
            cd ..

            # Install UPS Tool
            echo -e '\033[33m''<< Install UPS tool ... >>''\033[0m'
            cd Install_Script_For_UPS/
            sudo ./install_apcupsd.sh
            cd ..

            # Remove Downloaded files.
            # sudo rm spc_gpio_ctl_tool.tar.gz
            sudo rm -r spc_gpio_ctl_tool/
            # sudo rm Install_Script_For_UPS.tar.gz
            sudo rm -r Install_Script_For_UPS/

            echo -e '\033[33m''<< Install beat_spc_tools complete ... ! >>''\033[0m'
            break
            ;;
        "GPIO Tool")
            echo -e '\033[33m''<< Install GPIO Tool >>''\033[0m'
            echo -e '\033[33m''<< Download packages from SDT-yhlee_archive... >>''\033[0m'
            sudo wget "https://github.com/SDT-yhlee/spc_tools_storage/raw/refs/heads/main/spc_gpio_ctl_tool.tar.gz" -O spc_gpio_ctl_tool.tar.gz
            # sudo wget "https://github.com/SDT-yhlee/spc_tools_storage/raw/refs/heads/main/Install_Script_For_UPS.tar.gz" -O Install_Script_For_UPS.tar.gz

            # Extract Download files
            echo -e '\033[33m''<< Extract spc_gpio_ctl_tool files ... >>''\033[0m' 
            tar -xzf spc_gpio_ctl_tool.tar.gz
            # echo -e '\033[33m''<< Extract UPS daemon files ... >>''\033[0m' 
            # tar -xzf Install_Script_For_UPS.tar.gz

            # Install SPC GPIO Control Tool
            echo -e '\033[33m''<< Install spc_gpio_ctl tool ... >>''\033[0m'
            cd spc_gpio_ctl_tool/
            sudo ./install_spc_gpio_ctl.sh
            cd ..

            # # Install UPS Tool
            # echo -e '\033[33m''<< Install UPS tool ... >>''\033[0m'
            # cd Install_Script_For_UPS/
            # sudo ./install_apcupsd.sh
            # cd ..

            # Remove Downloaded files.
            # sudo rm spc_gpio_ctl_tool.tar.gz
            sudo rm -r spc_gpio_ctl_tool/
            # sudo rm Install_Script_For_UPS.tar.gz
            # sudo rm -r Install_Script_For_UPS/

            echo -e '\033[33m''<< Install GPIO Tool complete ... ! >>''\033[0m'
            break
            ;;
        "UPS Tool")
            echo -e '\033[33m''<< Install UPS Tool >>''\033[0m'
            echo -e '\033[33m''<< Download packages from SDT-yhlee_archive... >>''\033[0m'
            # sudo wget "https://github.com/SDT-yhlee/spc_tools_storage/raw/refs/heads/main/spc_gpio_ctl_tool.tar.gz" -O spc_gpio_ctl_tool.tar.gz
            sudo wget "https://github.com/SDT-yhlee/spc_tools_storage/raw/refs/heads/main/Install_Script_For_UPS.tar.gz" -O Install_Script_For_UPS.tar.gz

            # Extract Download files
            # echo -e '\033[33m''<< Extract spc_gpio_ctl_tool files ... >>''\033[0m' 
            # tar -xzf spc_gpio_ctl_tool.tar.gz
            echo -e '\033[33m''<< Extract UPS daemon files ... >>''\033[0m' 
            tar -xzf Install_Script_For_UPS.tar.gz

            # # Install SPC GPIO Control Tool
            # echo -e '\033[33m''<< Install spc_gpio_ctl tool ... >>''\033[0m'
            # cd spc_gpio_ctl_tool/
            # sudo ./install_spc_gpio_ctl.sh
            # cd ..

            # Install UPS Tool
            echo -e '\033[33m''<< Install UPS tool ... >>''\033[0m'
            cd Install_Script_For_UPS/
            sudo ./install_apcupsd.sh
            cd ..

            # Remove Downloaded files.
            # sudo rm spc_gpio_ctl_tool.tar.gz
            # sudo rm -r spc_gpio_ctl_tool/
            # sudo rm Install_Script_For_UPS.tar.gz
            sudo rm -r Install_Script_For_UPS/

            echo -e '\033[33m''<< Install UPS Tool complete ... ! >>''\033[0m'
            break
            ;;
        "- Exit Program")
            echo -e '\033[33m''<< Exit Install Program >>''\033[0m'
            break
            ;;
        *)
            echo "Wrong select."
            ;;
    esac
done


