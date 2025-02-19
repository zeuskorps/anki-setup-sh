#!/usr/bin/env bash
# package anki-setup-sh.view
# ./set-new-pyenv-name-view.sh

show_set_new_pyenv_name_view() {
    echo -e "\033[0;32m=======================================\033[0m"
    echo -e "\n🔧 New Pyenv Name 🔧\n"
    echo "Please enter the desired name for pyenv (e.g., myenv-example):"
    read -p "New pyenv name: " NEW_PYENV_NAME
    echo -e "\nPyenv name selected: $NEW_PYENV_NAME"
    echo -e "\033[0;32m=======================================\033[0m"
}

