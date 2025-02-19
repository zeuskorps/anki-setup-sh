#!/usr/bin/env bash
# package anki-setup-sh.service
# validate-pyenv.sh


validate_pyenv() {
    if ! command -v pyenv &> /dev/null; then
        echo "Error: pyenv is not installed"
        exit 1
    fi 
}
