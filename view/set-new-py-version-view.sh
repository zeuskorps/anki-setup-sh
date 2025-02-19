#!/usr/bin/env bash
# package anki-setup-sh.view
# ./set-new-version-view.sh


show_set_new_version_view() {
    echo -e "\033[0;32m=======================================\033[0m"
    echo -e "\n🔧 New Python Version 🔧\n"
    echo "Please enter the desired Python version (e.g., 3.9.7):"
    read -p "New version: " NEW_VERSION
    echo -e "\nVersion selected: $NEW_VERSION"
    echo -e "\033[0;32m=======================================\033[0m"
}
