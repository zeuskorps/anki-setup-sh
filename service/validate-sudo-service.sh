#!/usr/bin/env bash
# package anki-setup-sh.service
# validate-sudo-service.sh

validate_sudo() {
    if ! command -v sudo &> /dev/null; then 
            echo "ERROR: sudo is not installed"
        exit 1
    fi
}
