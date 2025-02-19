#!/usr/bin/env bash
# package anki-setup-sh.service
# get-pyenv-path-service.sh

get_pyenv_path() {
 #  ./view/get-pyenv-path-view.sh::show_get_pyenv_path_view
    show_get_pyenv_path_view
    validate_py_env_path
    echo "$PYENV_PATH"
}

validate_py_env_path() {
    if [[ -z "$PYENV_PATH" ]]; then
        echo "❌ Error: The Pyenv path is invalid."
        echo "➡️  Please set a new Pyenv path before proceeding."
        exit 1
    fi
}

