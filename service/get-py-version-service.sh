#!/usr/bin/env bash
# package anki-setup-sh
# get-py-version-service.sh

get_py_version() {
    # ./view/get-pyenv-name-view.sh::show_get_py_version_view
    show_get_py_version_view
    validate_py_version
    echo "$PY_VERSION"
}

validate_py_version() { 
    if [[ -z "$PY_VERSION" ]]; then
        echo ""
        exit 1
    fi
    return 0
} 
