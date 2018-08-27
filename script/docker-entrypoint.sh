#!/bin/bash
set -e
export SECRET_KEY_BASE=`rake secret`
bundle exec unicorn -c $UNICORN_CONFIG -E $RAILS_ENV -D
tail -f $RAILS_LOG
#tail -f $UNICORN_ERROR_LOG
