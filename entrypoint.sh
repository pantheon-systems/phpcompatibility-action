#!/bin/bash

cd $GITHUB_ACTION_PATH

composer install

export PATH=$PATH:$GITHUB_ACTION_PATH/vendor/bin

./vendor/bin/phpcs -v $PATHS --standard=PHPCompatibility --runtime-set testVersion $TEST_VERSIONS
