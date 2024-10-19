# dotfiles-public

Florin's MacBook development setup, so yeah, it's more than dotfiles.  
This might work on other platforms, some parts of it, maybe.

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
- oh-my-zsh
- VsCode

### brew

Installs the main pieces of software on Mac.

### font-patcher

In order to display symbols in the terminal, use the _font-patcher_ script to patch the fonts. It's available on the Nerd Fonts website (see below). It requires the _fontforge_ python script, available via _brew_.

### iTerm2

Terminal able to display symbols, colors, transparent backgrounds, etc.

### VsCode

Code editor maintained by MicroSoft.

## Fonts

Use monospaced fonts for the terminal or the code editor.  
The _fonts_ directory contains a few fonts that are already patched.  
Here are the steps involved:

1. Download

2. Patch

Download a font, then run the command here below. This will create a new patched font in the same directory.

Example:

```
❯ fontforge --script ../FontPatcher/font-patcher --complete JetBrainsMono-Regular.ttf
```

3. Add it to your Mac  
   Open _Font Book_ and simply _drag & drop_ the new patched font.

4. Add it to your Software  
   See the _Terminal_ or _Code editor_ sections for the patched font setup.

###

Links:  
[Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development-use.
