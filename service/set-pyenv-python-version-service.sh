#!/usr/bin/env bash
# package anki-setup-sh.service
# set-pyenv-python-version-service.sh

set_pyenv_python_version() {
    eval "$(pyenv init --path)"
    pyenv local "$PY_VERSION"
    PYTHON_BIN="$(pyenv prefix)/bin/python"
}
