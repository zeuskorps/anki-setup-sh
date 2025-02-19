#!/usr/bin/env bash
# package anki-setup-sh.service
# validate-environment-service.sh

validate_environment() {
    # ./service/validate-pacman-service.sh::validate_pacman
    validate_pacman && \
    # ./service/validate-sudo-service.sh::validate_sudo
    validate_sudo && \
    # ./service/validate-python-service.sh::validate_python
    validate_python && \
    # ./service/validate-pyenv-service.sh:validate_pyenv 
    validate_pyenv && \
    # ./service/validate-virtualenv-service.sh::validate_virtualenv
    validate_virtualenv 
}
