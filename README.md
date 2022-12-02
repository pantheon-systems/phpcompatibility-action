PHP Compatibility Github Action
===============================

This Github Action runs PHPCompatibility/PHPCompatibility on your source code in an easy way.

PHPCompatibility is a set of sniffs for PHP CodeSniffer that checks for PHP cross-version compatibility. It will allow you to analyse your code for compatibility with higher and lower versions of PHP. This way you can confidently make changes to your code and make sure you don't break backwards compatibility on it.

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