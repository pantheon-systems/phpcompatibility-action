#!/bin/bash

cd $GITHUB_PATH

composer install

export PATH=$PATH:$GITHUB_PATH/vendor/bin

./vendor/bin/phpcs --standard=PHPCompatibility --runtime-set testVersion $TEST_VERSION $PATHS
