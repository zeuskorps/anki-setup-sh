#!/usr/bin/env bash
# package anki-setup-sh
# ./client.sh

export PY_VERSION_CONFIG_FILE="./model/py-version-model.sh"
export PYENV_PATH_CONFIG_FILE="./model/pyenv-path-model.sh"
export PYENV_NAME_CONFIG_FILE="./model/pyenv-name-model.sh"

source ./view/intro-view.sh
source ./service/reload-py-version-model-service.sh
source ./service/reload-pyenv-name-model-service.sh
source ./service/reload-pyenv-path-model-service.sh
source ./model/py-version-model.sh
source ./view/set-new-py-version-view.sh
source ./service/set-new-py-version-service.sh
source ./model/pyenv-path-model.sh
source ./view/set-new-pyenv-path-view.sh
source ./service/set-new-pyenv-path-service.sh
source ./model/pyenv-name-model.sh
source ./view/set-new-pyenv-name-view.sh
source ./service/set-new-pyenv-name-service.sh
source ./service/validate-pacman-service.sh
source ./service/validate-sudo-service.sh
source ./service/validate-virtualenv-service.sh
source ./service/validate-python-service.sh
source ./service/validate-pyenv-service.sh
source ./service/upgrade-pip-service.sh
source ./service/activate-environment-service.sh
source ./service/install-anki-service.sh
source ./service/install-aqt-service.sh
source ./service/setup-anki-service.sh
source ./service/run-anki-service.sh
source ./view/anki-setup-view.sh
source ./view/get-pyenv-path-view.sh 
source ./service/get-pyenv-path-service.sh
source ./view/get-pyenv-name-view.sh
source ./service/get-pyenv-name-service.sh
source ./view/get-py-version-view.sh
source ./service/get-py-version-service.sh
source ./service/install-pyenv-python-version-service.sh
source ./service/create-virtualenv-service.sh
source ./service/set-pyenv-config-service.sh
source ./service/set-pyenv-python-version-service.sh
source ./service/validate-environment-service.sh
source ./view/create-environment-view.sh
source ./service/create-environment-service.sh
# GET CONTROLLER
source ./controller/controller.sh
