#!/usr/bin/env bash
# package anki-setup-sh.service
# setup-anki-service.sh

anki-setup() {
    #./view/anki-setup-view.sh::show_anki_setup_view
    show_anki_setup_view
    #./service/create-environment-service.sh::create_environment
    create_environment && \
    #./service/activate-environment-service.sh::activate_environment
    activate_environment && \
    #./service/upgrade-pip-service.sh::upgrade_pipe
    upgrade_pip && \
    #./service/install-anki-service.sh::install_anki
    install_anki && \
    #./service/install-aqt-service.sh::install_aqt
    install_aqt && \
    # ./service/run-anki-service.sh::run_anki
    run_anki
}
