#!/usr/bin/env bash
# package anki-setup-sh.controller
# controller.sh

# ./view/intro-view.sh::show_intro_view
show_intro_view

handle_user_choice() {
    case "$USER_CHOICE" in
        1)
            echo -e "\nYou have selected: Set new python version"
            # ./service/set-new-py-version-service.sh::set_new_py_version
            set_new_py_version
            ;;
        2)
            echo -e "\nYou have selected: Validate python in ambient"
            # ./service/validate-python.sh::validate_python
            validate_python && echo "Sucess: python is ok"
            ;;
        
        3)
            echo -e "\nYou have selected: Validate pyenv in ambient"
            # ./service/validate-pyenv.sh::validate_pyenv
            validate_pyenv && echo "Sucess: pyenv is ok"
            ;;
         4)
            echo -e "\nYou have selected: Set a new pyenv-path"
            # ./service/set-new-pyenv-path-service.sh::set_new_pyenv_path
            set_new_pyenv_path
            ;;

         5) 
            echo -e "\n You have selected: Set a new pyenv-name"
            # ./service/set-new-pyenv-name-service.sh::set_new_pyenv_name
            set_new_pyenv_name
            ;;
        6) 
            echo -e "\n You have selected: Get pyenv-path"
            # ./service/get-pyenv-path-service.sh::get_pyenv_path
            get_pyenv_path
            ;;
        
        7) 
            echo -e "\n You have selected: Get pyenv-name"
            # ./service/get-pyenv-name-service.sh::get_pyenv_path
            get_pyenv_name
            ;;
        
        8) 
            echo -e "\n You have selected: Get py-version"
            # ./service/get-py-version-service.sh::get_py_version
            get_py_version
            ;;
        9) 
            echo -e "\n You have selected: Create pyenv environment"
            # ./service/create-pyenv-service.sh::create_pyenv_environment
            create_environment
            ;;
        
        10) 
            echo -e "\n You have selected: anki-setup service"
            # ./service/anki-setup-service.sh::anki_setup
            anki-setup
            ;;

        11)
            echo "-e \n You have selected: run anki in last environment"
            # ./service/run-anki-service.sh::run_anki
            run_anki
            ;;
        12)
            echo -e "\nExiting setup tool. Goodbye!"
            exit 0
            ;;
        *)
            echo -e "\nInvalid option. Please choose a valid option between 1 and 4."
            show_intro_view
            ;;
    esac
}

handle_user_choice
