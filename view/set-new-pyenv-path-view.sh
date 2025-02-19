#!/usr/bin/env bash
# package anki-setup-sh.view
# ./set-new-pyenv-path-view.sh

show_set_new_pyenv_path_view() {
    echo -e "\033[0;32m=======================================\033[0m"
    echo -e "\n🔧 New Pyenv Path 🔧\n"
    echo "Please enter the desired path for pyenv (e.g., /home/you-user/.pyenv):"
    read -p "New pyenv path: " NEW_PYENV_PATH
    echo -e "\nPyenv path selected: $NEW_PYENV_PATH"
    echo -e "\033[0;32m=======================================\033[0m"
}

