#!/usr/bin/env bash
# package anki-setup-sh.service
# run-anki-service.sh

run_anki() {
    #./service/activate-environment-service.sh::activate_environment
    activate_environment && exec anki
}
