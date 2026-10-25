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

| Formula | Description | Installs |
| --- | --- | --- |
| [shepherd](https://github.com/jwarykowski/shepherd) | Interactive todo board backed by a markdown file | built from source |
| [drover](https://shepherdcli.dev) | Hands Shepherd tasks and other events to your coding agent | prebuilt binary |
| [keybars](https://github.com/jwarykowski/keybars) | Music equaliser on your keyboard's backlight (pulls in cava) | prebuilt binary |

## Notes

- Formulae built from source pull in their build toolchain automatically.
- Track shepherd's development tip instead of its latest release:
  `brew install --HEAD jwarykowski/tap/shepherd`.
- Release workflows in each project open a pull request here with the new
  version, so formulae track their latest release.
