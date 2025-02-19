#!/usr/bin/env bash
# package anki-setup-sh.service
# reload-py-version-model-service

reload_py_version_model() {
    basedir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
    source "$basedir"/model/py-version-model.sh 
}
