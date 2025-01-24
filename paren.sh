#!/bin/bash

__version__="2.3.5"

## DEFAULT HOST & PORT
HOST='127.0.0.1'
PORT='8080' 

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
CYANBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

banner_g() {
    echo	${CYAN}     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
    echo	${RED}        █░░░░░░░░░░░░░░░░░░░░░░█
    echo	${GREEN} █░█▀█░█▀█░█▀▄░█▀▀░█░░█░█
    echo	${BLUE}     █░█▀▀░█▀█░█▀▄░█▀▀░█▀▄█░█
    echo	${RED}        █░▀░░░▀░▀░▀░▀░▀▀▀░▀░░▀░█${YELLOW} ${__version__}
    echo	${CYAN}     ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
}


about() {
    echo "${GREEN}About this script:"
    echo "${GREEN}Version: ${__version__}"
    echo "${GREEN}This script provides various utility functions for system management."
}

exit_script() {
    echo "${GREEN}Exiting script..."
    clear
    exit 0
}

# Branch Management
branch_management() {
    echo "${CYAN}Branch Management Commands:"
    echo -e "${GREEN}1. Create a branch: ${ORANGE}git checkout -b branch_name"
    echo -e "${GREEN}2. Delete a branch: ${ORANGE}git branch -d branch_name"
    echo -e "${GREEN}3. Merge a branch: ${ORANGE}git merge branch_name"
    echo -e "${GREEN}4. List all branches: ${ORANGE}git branch"
    echo -e "${GREEN}5. Switch to a branch: ${ORANGE}git checkout branch_name"
}

# Configuration and Setup
configuration_setup() {
    echo "${CYAN}Configuration and Setup Commands:"
    echo -e "${GREEN}1. Set user name: ${ORANGE}git config --global user.name 'Your Name'"
    echo -e "${GREEN}2. Set user email: ${ORANGE}git config --global user.email 'your_email@example.com'"
    echo -e "${GREEN}3. View configuration: ${ORANGE}git config --list"
}

# Staging and Stash
staging_and_stash() {
    echo "${CYAN}Staging and Stash Commands:"
    echo -e "${GREEN}1. Add changes to staging: ${ORANGE}git add file_name"
    echo -e "${GREEN}2. Add changes interactively: ${ORANGE}git add -p"
    echo -e "${GREEN}3. Save changes in stash: ${ORANGE}git stash"
    echo -e "${GREEN}4. Apply a stash: ${ORANGE}git stash apply stash@{0}"
    echo -e "${GREEN}5. Drop a stash: ${ORANGE}git stash drop stash@{0}"
}

# Undoing Changes
undoing_changes() {
    echo "${CYAN}Undoing Changes Commands:"
    echo -e "${GREEN}1. Unstage a file: ${ORANGE}git reset HEAD file_name"
    echo -e "${GREEN}2. Undo last commit but keep changes staged: ${ORANGE}git reset --soft HEAD~1"
    echo -e "${GREEN}3. Undo last commit and discard all changes: ${ORANGE}git reset --hard HEAD~1"
    echo -e "${GREEN}4. Revert a commit: ${ORANGE}git revert commit_hash"
}

# Remote Repositories
remote_repositories() {
    echo "${CYAN}Remote Repositories Commands:"
    echo -e "${GREEN}1. Add a remote: ${ORANGE}git remote add origin https://github.com/user/repo.git"
    echo -e "${GREEN}2. Push to remote: ${ORANGE}git push origin branch_name"
    echo -e "${GREEN}3. Fetch from remote: ${ORANGE}git fetch origin"
    echo -e "${GREEN}4. Pull from remote: ${ORANGE}git pull origin branch_name"
    echo -e "${GREEN}5. Delete a remote branch: ${ORANGE}git push origin --delete branch_name"
}

# Logs and History
logs_and_history() {
    echo "${CYAN}Logs and History Commands:"
    echo -e "${GREEN}1. View commit history: ${ORANGE}git log"
    echo -e "${GREEN}2. Graph view of commits: ${ORANGE}git log --oneline --graph --all"
    echo -e "${GREEN}3. Show changes in each commit: ${ORANGE}git log -p"
    echo -e "${GREEN}4. View the reference logs: ${ORANGE}git reflog"
}

# Working with Submodules
submodules() {
    echo "${CYAN}Working with Submodules Commands:"
    echo -e "${GREEN}1. Add a submodule: ${ORANGE}git submodule add https://github.com/user/repo.git"
    echo -e "${GREEN}2. Update submodules: ${ORANGE}git submodule update --init --recursive"
    echo -e "${GREEN}3. Remove a submodule: ${ORANGE}git submodule deinit -f submodule_path"
}

# Advanced Commands
advanced_commands() {
    echo "${CYAN}Advanced Commands:"
    echo -e "${GREEN}1. Apply a specific commit: ${ORANGE}git cherry-pick commit_hash"
    echo -e "${GREEN}2. Find commit that introduced a bug: ${ORANGE}git bisect start"
    echo -e "${GREEN}3. Rewrite history with a filter: ${ORANGE}git filter-branch --tree-filter 'command' HEAD"
    echo -e "${GREEN}4. Show who last modified each line in a file: ${ORANGE}git blame file_name"
}

# Clean Up
clean_up() {
    echo "${CYAN}Clean Up Commands:"
    echo -e "${GREEN}1. Remove untracked files: ${ORANGE}git clean -f"
    echo -e "${GREEN}2. Remove untracked files and directories: ${ORANGE}git clean -fd"
    echo -e "${GREEN}3. Optimize the repository: ${ORANGE}git gc"
}

# Tagging
tagging() {
    echo "${CYAN}Tagging Commands:"
    echo -e "${GREEN}1. Create a tag: ${ORANGE}git tag -a tag_name -m 'Tag message'"
    echo -e "${GREEN}2. Push a tag to remote: ${ORANGE}git push origin tag_name"
    echo -e "${GREEN}3. Delete a tag locally: ${ORANGE}git tag -d tag_name"
}

# Main Menu
main_menu() {
    while true; do
        clear
        banner_g
        echo
        echo -e "${RED}[${WHITE}01${RED}]${ORANGE} Configuration and Setup"
        echo -e "${RED}[${WHITE}02${RED}]${ORANGE} Branch Management"
        echo -e "${RED}[${WHITE}03${RED}]${ORANGE} Staging and Stash"
        echo -e "${RED}[${WHITE}04${RED}]${ORANGE} Undoing Changes"
        echo -e "${RED}[${WHITE}05${RED}]${ORANGE} Remote Repositories"
        echo -e "${RED}[${WHITE}06${RED}]${ORANGE} Logs and History"
        echo -e "${RED}[${WHITE}07${RED}]${ORANGE} Working with Submodules"
        echo -e "${RED}[${WHITE}08${RED}]${ORANGE} Advanced Commands"
        echo -e "${RED}[${WHITE}09${RED}]${ORANGE} Clean Up"
        echo -e "${RED}[${WHITE}10${RED}]${ORANGE} Tagging"
        echo -e "${RED}[${WHITE}99${RED}]${ORANGE} About"
        echo -e "${RED}[${WHITE}00${RED}]${ORANGE} Exit"
        echo
        read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option: ${BLUE}" selected

        case $selected in
            01) source ./configuration_setup.sh ;;
            02) branch_management ;;
            03) staging_and_stash ;;
            04) undoing_changes ;;
            05) remote_repositories ;;
            06) logs_and_history ;;
            07) submodules ;;
            08) advanced_commands ;;
            09) clean_up ;;
            10) tagging ;;
            99) about ;;
            00) exit_script ;;
            *) echo "${RED}Invalid option! Please try again." ;;
        esac

        read -p "${GREEN}Press [Enter] to continue..." dummy
    done
}

# Run the menu
main_menu
