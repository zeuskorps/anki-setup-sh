#!/usr/bin/env bash
# package setup-anki-sh.service
# ./set-new-pyenv-name-service.sh

NEW_PYENV_NAME=""

set_new_pyenv_name() {
    # ./view/set-new-pyenv-name-view.sh::show_set_new_pyenv_name_view
     show_set_new_pyenv_name_view
     validate_pyenv_new_name
     update_pyenv_name_in_config_file
     # ./service/reload-pyenv-name-model-service.sh::reload_pyenv_name_model
     reload_pyenv_name_model
}

validate_pyenv_new_name() {
    if pyenv_new_name_is_blank; then
        throw_illegal_state_new_pyenv_name_exception
    fi
}

pyenv_new_name_is_blank() { 
    if [[ -z "$NEW_PYENV_NAME" ]]; then
        return 0 
    fi
    return 1
}

throw_illegal_state_new_pyenv_name_exception() {
    echo "Error: the new pyenv name is invalid"
    exit 1 
}


update_pyenv_name_in_config_file() {
    sed -i "s|^PYENV_NAME=.*|PYENV_NAME=\"$NEW_PYENV_NAME\"|" "$PYENV_NAME_CONFIG_FILE"
    echo "Name to pyenv updated in the config file to: $NEW_PYENV_NAME"
}
