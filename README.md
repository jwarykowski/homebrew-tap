# homebrew-tap

Homebrew tap for [jwarykowski](https://github.com/jwarykowski) tools.

## Install

```sh
brew install jwarykowski/tap/<formula>
```

`brew` adds the tap automatically; the `homebrew-` prefix is implied. Or tap
once and install by bare name:

```sh
brew tap jwarykowski/tap
brew install <formula>
```

## Formulae

| Formula | Description |
| --- | --- |
| [shepherd](https://github.com/jwarykowski/shepherd) | Interactive todo board backed by a markdown file |

## Notes

- Formulae build from source and pull in their build toolchain automatically.
- Track a project's development tip instead of its latest release:
  `brew install --HEAD jwarykowski/tap/<formula>`.

## Adding a formula

Drop a `Formula/<name>.rb` in this repo and add a row to the table above. On a
new release of the tool, bump the formula's `url` + `sha256` (get the hash with
`curl -sL <tarball-url> | shasum -a 256`).
