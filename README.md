# mod_extract_forwarded

## Description

Installs/configures mod_extract_forwarded.

## Requirements

### Platforms

* RedHat 6.3 (Santiago)

### Cookbooks

* apache2

## Attributes

* `node['apache']['mod_extract_forwarded']['accept']` - array of trusted XFF proxy IPs, default to []

## Recipes

* `recipe[mod_extract_forwarded]` will install/configure mod_extract_forwarded.

## Usage

* Set accepted XFF proxy IPs in `node['apache']['mod_extract_forwarded']['accept']`
* Add `recipe[mod_extract_forwarded]` to your node's run list
