#!/usr/bin/env bash
# package anki-setup-sh.service
# create-pyenv-service.sh

create_environment() {  
    # ./view/create-environment-view.sh::show_create_environment_view
    show_create_environment_view
    configure_environment && setup_environment   
}

setup_environment() { 
    #./service/install-environment-python-version-service.sh/install_pyenv_python_version
    install_pyenv_python_version && \

    #./service/set-pyenv-python-version-service.sh/set_pyenv_python_version
    set_pyenv_python_version && \

    #./service/create-virtualenv-service.sh::create_virtualenv
    create_virtualenv
}


configure_environment() {
    #./service/validate-environment-service.sh
    validate_environment && \
    #./service/set-pyenv-config-sh::set_pyenv_config
    set_pyenv_config  
}
