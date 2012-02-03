#!/usr/bin/env bash
set -e

declare -r LOG_DEFAULT_COLOR="\033[0m"
declare -r LOG_ERROR_COLOR="\033[1;31m"
declare -r LOG_INFO_COLOR="\033[1m"
declare -r LOG_SUCCESS_COLOR="\033[1;32m"
declare -r LOG_WARN_COLOR="\033[1;33m"
declare -r LOG_DEBUG_COLOR="\033[1;34m"

log() {
    local log_text="$1"
    echo -e "${LOG_DEBUG_COLOR}[$(date +"%Y-%m-%d %H:%M:%S %Z")] ${log_text}${LOG_DEFAULT_COLOR}";
}

source ./pullmyfinger
set | grep pmf

log "Testing --version"
__pmf_gateway --version

log "Testing --help"
__pmf_gateway --help

log "Testing --list-pull-requests"
__pmf_gateway --list-pull-requests origin

log "Testing a pull request creation"
__pmf_gateway master

