#!/usr/bin/env bash
# package anki-setup-sh.service
# activate-environment-service.sh

activate_environment() {
    source "$PYENV_PATH/$PYENV_NAME/bin/activate"
}
