#!/usr/bin/env bash
# package anki-setup-sh.view
# ./intro-view.sh

show_intro_view() {
    echo -e "\033[0;35m=======================================\033[0m"
    echo -e "\n🔧 Welcome to the anki-setup-sh 🔧\n"
    echo "Please choose the operation you want to perform:"
    echo "1. Set a new python version"
    echo "2. Validate python in ambient"
    echo "3. Validate pyenv in ambient"
    echo "4. Set a new pyenv-path"
    echo "5. Set a new pyenv-name"
    echo "6. Get pyenv-path"
    echo "7. Get pyenv-name"
    echo "8. Get py-version"
    echo "9. Create pyenv environment"
    echo "10. anki-setup service"
    echo "11. Run anki in last environment"
    echo "12. Exit"
    
    read -p "Enter your choice (1-12): " USER_CHOICE
}
