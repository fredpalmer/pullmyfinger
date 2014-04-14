# pullmyfinger - A command line helper for github pull requests

## Features

* Command line completion for options, remotes
* Uses SSL and is compatible with 2-Factor authentication

## Usage:

    pullmyfinger [OPTION] branch|remote

## Options

    -h, --help                  Shows help text
    -v, --version               Display version
    --debug                     Displays debugging information
    --base                      Explicitly set the base (or target) branch for a pull request
    --head                      Explicitly set the head (or source) branch for a pull request
    --setup                     Creates an OAuth token for making pull requests
    --list-pull-requests        Lists open pull requests for the given remote
    --list-milestones           Lists open milestones for the given remote

## Config:

    Uses the following environment variables:
    GITHUB_LOGIN                A valid Github login (Required)
    GITHUB_OAUTH_TOKEN          A valid OAuth token for the Github login with repo scope access (Required)
    PULLMYFINGER_SIGNATURE      The signature to put at the end of a pull request message (Optional)

## Setup:

    # Runs the setup to create an OAuth token for making pull requests
    pullmyfinger --setup

## Examples

    # Within a clone of the pullmyfinger repo this command creates a pull request to the remote \"fredpalmer\" using the base (i.e. the target branch) of \"master\"
    pullmyfinger fredpalmer/master

    # List all pull requests to the remote \"fredpalmer\" for the current clone of pullmyfinger
    pullmyfinger --list-pull-requests fredpalmer
