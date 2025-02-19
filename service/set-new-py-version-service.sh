#!/usr/bin/env bash
# package setup-anki-sh.py-version
# ./set-new-py-version-service.sh

NEW_VERSION=""

set_new_py_version() {
    # ./model/set-new-py-version-view.sh::show_set_new_version.view
    show_set_new_version_view 
    validate_new_version
    update_py_version_in_config_file
    # ./service/reload-py-version-model-service.sh::reload_py_version_model
    reload_py_version_model
}

validate_new_version() {
    if [[ -z "$NEW_VERSION" ]]; then
        throw_illegal_state_new_version_exception
    fi 
}

throw_illegal_state_new_version_exception() {
    echo "Error: the new version is invalid"
    exit 1 
}

update_py_version_in_config_file() {
    sed -i "s/^PY_VERSION=.*/PY_VERSION=\"$NEW_VERSION\"/" "$PY_VERSION_CONFIG_FILE"
    echo "Version updated in the config file to $NEW_VERSION"
}
