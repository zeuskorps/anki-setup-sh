#!/usr/bin/env bash
# package anki-setup-sh.service
# validate-python.sh

validate_python() {
    if ! command -v python &> /dev/null; then 
        echo "ERROR: python is not installed"
        exit 1
    fi
}
