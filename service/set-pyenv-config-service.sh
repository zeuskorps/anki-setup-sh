#!/usr/bin/env bash
# package anki-setup-sh.service
# set-pyenv-config-service

set_pyenv_config() {
    # ./service/set-new-py-version-service.sh::set_new_py_version
    set_new_py_version && \
    # ./service/set-new-pyenv-path-service.sh::set_new_pyenv_path
    set_new_pyenv_path && \
    # ./service/set-new-pyenv-name-service.sh::set_new_pyenv_name
    set_new_pyenv_name   
}
