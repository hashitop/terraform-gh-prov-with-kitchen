# Terraform - GitHub Provider with Kitchen

## GitHub Token

Create testing.tfvars in working directory with the content below with your own GitHub token

> github_token="**\<YOUR TOKEN\>**"

Optionally with a name of repository to create

> repo="**\<YOUR REPO\>**"

## Initialise Kitchen

The project provides Gemfile with the required packages. Run `bundle install` to initialise the required `Kitchen` packages.

## Test


- `kitchen converge` to create the workspace
- `kitchen verify` to verify the workspace URL
- `kitchen destroy` to remove the workspace