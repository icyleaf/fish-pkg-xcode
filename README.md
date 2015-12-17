![][license-badge]

# xcode

Xcode Plugin for [Wahoo][wahoo-link]/[Oh My Fish][omf-link]. Inspire based [oh-my-zsh/plugins/xcode][omz-xcode-link]

## Install

```fish
# wahoo
$ wa g https://github.com/icyleaf/fish-pkg-xcode
# oh-my-fish
$ omf install https://github.com/icyleaf/fish-pkg-xcode
```

## Usage

function | description
---|---
xc | Find & Open Xcode project or workspace
xcb | Alias to xcodebuild
xcdd | Clear xcode derived data
xcp | Show the path to the active developer directory
xcsel | Set the path to the active developer directory
simulator | Open iPhone Simulator app

# License

[MIT][mit] © [icyleaf][author]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/icyleaf
[wahoo-link]:     http://github.com/wa/wahoo
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[omz-xcode-link]: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/xcode/xcode.plugin.zsh
[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
