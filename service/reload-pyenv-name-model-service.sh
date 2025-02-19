#!/usr/bin/env bash
# package anki-setup-sh.service
# reload-pyenv-name-model-service.sh

reload_pyenv_name_model() {
    basedir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
    source "$basedir/model/pyenv-name-model.sh" 
}
