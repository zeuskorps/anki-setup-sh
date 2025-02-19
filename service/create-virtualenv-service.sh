#!/usr/bin/env bash
# package anki-setup-sh.service
# create-virtualenv-service.sh

create_virtualenv() {
    virtualenv -p "$PYTHON_BIN" "$PYENV_PATH/$PYENV_NAME"
}
