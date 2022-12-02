PHP Compatibility Github Action
===============================

This Github Action runs PHPCompatibility/PHPCompatibility on your source code in an easy way.

## Inputs

### skip-php-setup

Allows you to skip the usage of shivammathur/setup-php when running the action. Default: false.

### test-versions

Select the test versions to run PHPCompatibility. It supports any format accepted by https://github.com/PHPCompatibility/PHPCompatibility (Default: 8.0-)

### paths

Paths to run compatibility check on. Default: ${{ github.workspace }}

## Example Usage

```
uses: pantheon-systems/phpcompatibility-action@v1
with:
  test-versions: 7.4-
  paths: ${{ github.workspace }}/src
```