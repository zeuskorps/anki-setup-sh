#!/usr/bin/env bash
# package anki-setup-sh.service
# validate-pacman-service.sh

validate_pacman() {
    if ! command -v pacman &> /dev/null; then 
            echo "ERROR: the script is archbased, use arch btw"
        exit 1
    fi
}
