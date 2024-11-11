PHP Compatibility Github Action
===============================

This Github Action runs [`PHPCompatibility/PHPCompatibility`](https://github.com/PHPCompatibility/PHPCompatibility) on your source code in an easy way.

PHPCompatibility is a set of sniffs for PHP CodeSniffer that checks for PHP cross-version compatibility. It will allow you to analyse your code for compatibility with higher and lower versions of PHP. This way you can confidently make changes to your code and make sure you don't break backwards compatibility on it.

## PHP 8.x Compatibility checks
The `v1` branch of the action uses the latest stable release of PHPCompatibility (`^9.3`), however this release does not have any checks for PHP 8.x, so using `pantheon-systems/phpcompatibility-action@v1` with `test-versions: 8.0-` will not check anything. 

If you need to run 8.x checks on your project, use the `dev` branch of the `phpcompatibility-action`, e.g.: `uses: pantheon-systems/phpcompatibility-action@dev`. The `dev` branch uses the `develop` branch of PHPCompatibility where some 8.x checks have been added.

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
  extensions: php
```

## Development

### Autotag
This project uses our [autotag action](https://github.com/pantheon-systems/action-autotag). New releases are created on each merge to `main`. See the [autotag readme](https://github.com/pantheon-systems/autotag?tab=readme-ov-file#usage) for details.
