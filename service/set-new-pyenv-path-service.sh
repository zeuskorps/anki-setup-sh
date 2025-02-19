#!/usr/bin/env bash
# package setup-anki-sh.py-version
# ./set-new-py-version-service.sh

NEW_PYENV_PATH=""

set_new_pyenv_path() {
    # ./model/set-new-py-version-view.sh::show_set_new_pyenv_path_view
     show_set_new_pyenv_path_view
     validate_pyenv_new_path
     update_pyenv_path_in_config_file
     # ./service/reload-pyenv-path-model-service.sh::reload_pyenv_path_model
     reload_pyenv_path_model
}

validate_pyenv_new_path() {
    if pyenv_new_path_is_blank || pyenv_new_path_no_exist_in_system; then
        throw_illegal_state_new_pyenv_path_exception
    fi
}

pyenv_new_path_is_blank() { 
    if [[ -z "$NEW_PYENV_PATH" ]]; then
        return 0 
    fi
    return 1
}

pyenv_new_path_no_exist_in_system() {
        if [[  ! -d "$NEW_PYENV_PATH" ]]; then
            return 0
        fi
        return 1
}


throw_illegal_state_new_pyenv_path_exception() {
    echo "Error: the new pyenv path is invalid"
    echo "$NEW_PYENV_PATH"
    exit 1 
}


update_pyenv_path_in_config_file() {
    sed -i "s|^PYENV_PATH=.*|PYENV_PATH=\"$NEW_PYENV_PATH\"|" "$PYENV_PATH_CONFIG_FILE"
    echo "Path to pyenv updated in the config file to: $NEW_PYENV_PATH"
}


