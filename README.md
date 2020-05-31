# lerna-get-version-action
Github Action for Retrieving Version from lerna.json

This GitHub Action retrieves the version from the lerna.json file and sets the version in the `lerna-version` output value usable in your workflow file.

## Example

To use this action in your project, use the following:

```yaml
- name: get-lerna-version
  id: lerna-version
  uses: saulonunesdev/lerna-get-version-action@master
```

The Action sets an output variable called `current-version` which can be used in a following step by using `${{ steps.package-version.outputs.lerna-version}}`.

Based on: https://github.com/martinbeentjes/npm-get-version-action