# lerna-get-version-action

This GitHub Action retrieves the version from the lerna.json file and sets the version in the `lerna-version` output value usable in your workflow file.

## Example

To use this action in your project, use the following:

```yaml
      - name: get-lerna-version
        id: lerna-version
        uses: saulonunesdev/lerna-get-version-action@v1.0.4
```

The Action sets an output variable called `lerna-version` which can be used in a following step by using `${{ steps.lerna-version.outputs.lerna-version}}`.

If you are using a monorepo or otherwise have some packages in a subdirectory of your repo, add the path to the lerna.json as a parameter:

```yaml
      - name: get-lerna-version
        id: lerna-version
        uses: saulonunesdev/lerna-get-version-action@v1.0.4
        with:
          path: packages/<yourpackage>
```

Forked from https://github.com/saulonunesdev/lerna-get-version-action, Based on: https://github.com/martinbeentjes/npm-get-version-action
