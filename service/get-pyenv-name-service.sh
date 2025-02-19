#!/usr/bin/env bash
# package anki-setup-sh
# get-pyenv-name-service.sh

get_pyenv_name() {
    # ./view/get-pyenv-name-view.sh::show_get_pyenv_name_view
    show_get_pyenv_name_view
    validate_pyenv_name
    echo "$PYENV_NAME"
}

validate_pyenv_name() { 
    if [[ -z "$PYENV_NAME" ]]; then
        echo ""
        exit 1
    fi
    return 0
} 
