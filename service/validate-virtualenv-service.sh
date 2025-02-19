#!/usr/bin/env bash
# package anki-setup-sh.service
# validate-virtualenv-service.sh

validate_virtualenv() {
    if ! command -v virtualenv &> /dev/null; then
        echo "Error: virtualenv is not installed"
        exit 1
    fi 
}
