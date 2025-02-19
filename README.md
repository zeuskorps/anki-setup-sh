# anki-setup-sh

## Overview
A modular Anki setup for Arch Linux, structured with the MVCS (Model, View, Controller, Service) architecture.

## Structure
```
.
├── client.sh
├── controller
│   └── controller.sh
├── model
│   ├── pyenv-name-model.sh
│   ├── pyenv-path-model.sh
│   └── py-version-model.sh
├── service
│   ├── activate-environment-service.sh
│   ├── create-environment-service.sh
│   ├── create-virtualenv-service.sh
│   ├── get-pyenv-name-service.sh
│   ├── get-pyenv-path-service.sh
│   ├── get-py-version-service.sh
│   ├── install-anki-service.sh
│   ├── install-aqt-service.sh
│   ├── install-pyenv-python-version-service.sh
│   ├── reload-pyenv-name-model-service.sh
│   ├── reload-pyenv-path-model-service.sh
│   ├── reload-py-version-model-service.sh
│   ├── run-anki-service.sh
│   ├── set-new-pyenv-name-service.sh
│   ├── set-new-pyenv-path-service.sh
│   ├── set-new-py-version-service.sh
│   ├── set-pyenv-config-service.sh
│   ├── set-pyenv-python-version-service.sh
│   ├── setup-anki-service.sh
│   ├── upgrade-pip-service.sh
│   ├── validate-environment-service.sh
│   ├── validate-pacman-service.sh
│   ├── validate-pyenv-service.sh
│   ├── validate-python-service.sh
│   ├── validate-sudo-service.sh
│   └── validate-virtualenv-service.sh
└── view
    ├── anki-setup-view.sh
    ├── create-environment-view.sh
    ├── get-pyenv-name-view.sh
    ├── get-pyenv-path-view.sh
    ├── get-py-version-view.sh
    ├── intro-view.sh
    ├── set-new-pyenv-name-view.sh
    ├── set-new-pyenv-path-view.sh
    └── set-new-py-version-view.sh
``` 

## Usage
```bash
git clone https://github.com/zeuskorps/anki-setup-sh.git
cd anki-setup-sh
chmod +x client.sh model/*.sh service/*.sh controller/*.sh view/*.sh
./client.sh
```

## License
MIT License
