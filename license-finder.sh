#!/bin/bash
set -e
PUPPET_GEM_VERSION='~> 5'
bundle install
bundle exec license_finder
