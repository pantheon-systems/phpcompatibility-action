#!/bin/bash

cd $GITHUB_ACTION_PATH

echo "TEST VERSIONS: $TEST_VERSIONS"
echo "PATHS: $PATHS"

composer install

export PATH=$PATH:$GITHUB_ACTION_PATH/vendor/bin

./vendor/bin/phpcs $PATHS --standard=PHPCompatibility --runtime-set testVersion $TEST_VERSIONS
