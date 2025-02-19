#!/usr/bin/env bash
# package anki-setup-sh.service
# reload-pyenv-path-model-service.sh

reload_pyenv_path_model() {
    basedir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
    source "$basedir/model/pyenv-path-model.sh"
} 

