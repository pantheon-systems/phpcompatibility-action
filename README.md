PHP Compatibility Github Action
===============================

[![Unofficial Support](https://img.shields.io/badge/Pantheon-Unofficial_Support-yellow?logo=pantheon&color=FFDC28)](https://docs.pantheon.io/oss-support-levels#unofficial-support)

This Github Action runs [`PHPCompatibility/PHPCompatibility`](https://github.com/PHPCompatibility/PHPCompatibility) on your source code in an easy way.

PHPCompatibility is a set of sniffs for PHP CodeSniffer that checks for PHP cross-version compatibility. It will allow you to analyse your code for compatibility with higher and lower versions of PHP. This way you can confidently make changes to your code and make sure you don't break backwards compatibility on it.

## PHP 8.x Compatibility checks
Version 2 of the action uses the `dev-develop` branch of PHPCompatibility, as the latest stable release (9.3.5) does not have any checks for PHP 8.x. When a new release of PHPCompatibility is released, this action will revert to using stable releases.

## Inputs

### skip-php-setup

Allows you to skip the usage of [`shivammathur/setup-php`](https://github.com/shivammathur/setup-php) when running the action. Default: `false`.

### test-versions

Select the test versions to run PHPCompatibility. It supports any format accepted by [PHPCompatibility](https://github.com/PHPCompatibility/PHPCompatibility) (Default: 8.0-)

### paths

Paths to run compatibility check on. Default: `${{ github.workspace }}`

### extensions

Specify the extensions of the files that will be checked. Example: `extensions: php,inc,lib`. By default, it uses the options set by PHPCompatibility and PHP_CodeSniffer.

## Example Usage

```
uses: pantheon-systems/phpcompatibility-action@v1
with:
  test-versions: 7.4-
  paths: ${{ github.workspace }}/src
  extensions: 'php,inc'
```

## Development

### Autotag
This project uses our [autotag action](https://github.com/pantheon-systems/action-autotag). New releases are created on each merge to `main`. See the [autotag readme](https://github.com/pantheon-systems/autotag?tab=readme-ov-file#usage) for details.
