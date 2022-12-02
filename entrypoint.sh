#!/bin/bash

cd /app
composer install

export PATH=$PATH:/app/vendor/bin

./vendor/bin/phpcs --standard=PHPCompatibility --runtime-set testVersion $TEST_VERSION $PATHS
