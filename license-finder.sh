#!/bin/bash
set -e
PUPPET_GEM_VERSION='~> 5'
bundle install 2>&1 > /dev/null
bundle exec license_finder
