# awesome-tapestry

Command line tool for managing wallpapers in awesomewm.

Tapestry allows setting wallpapers for awesome and storing the settings in a
configuration file. It supports several methods from `gears.wallpaper` and
setting different wallpapers for different screens.

## Installation

Requirements:

- zsh
- awesome's dbus interface must be enabled (i.e. `awesome-client` must be
  working)

Put the contents of this repository inside a folder named `tapestry` in your
awesome config dir (usually `~/.config/awesome`). If your awesome configuration
is managed by git, I recommend adding this repo as a git submodule:

```git submodule add https://github.com/crater2150/awesome-tapestry.git tapestry ```

Then, in your `rc.lua`:

```require("tapestry")```

Copy or link `tapestry` to somewhere in your `$PATH`.

## Usage

See `tapestry --help`

TODO: more doc
