#!/bin/bash

cd $GITHUB_ACTION_PATH

composer install

export PATH=$PATH:$GITHUB_ACTION_PATH/vendor/bin

./vendor/bin/phpcs --standard=PHPCompatibility --runtime-set testVersion $TEST_VERSION $PATHS
