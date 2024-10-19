# dotfiles-public

Florin's MacBook development setup, so yeah, it's more than dotfiles.  
This might work on other platforms, maybe.

**Word of caution**: I recommend understanding my settings before applying them. Use them at your own risk!

## Contents

- Requirements
- Fonts
- Terminal
- Code editor
- Git
- Programming languages

## Requirements

- brew
- font-patcher
- iTerm2
- VsCode

### brew

Installs the main pieces of software on Mac.

### font-patcher

In order to display symbols in the terminal, use the _font-patcher_ script to patch the fonts. It's available on the Nerd Fonts website (see below). It requires the _fontforge_ python script, available via _brew_.

A python script to patch the fonts

### iTerm2

Terminal able to display symbols, colors, transparent backgrounds, etc.

### VsCode

Code editor maintained by MicroSoft.

## Fonts

Use mono fonts for the terminal and the code editor(s).
The _fonts_ directory contains a few fonts that are already patched.

Example:

```
❯ fontforge --script ../FontPatcher/font-patcher --complete JetBrainsMono-Regular.ttf
```

###

Links:  
[Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development-use.
