# hyPiRion's emacs setup

This is hyPiRion's emacs setup, mark 2. Not done at all, but the goal
is to clean up cruft from my previous setup.

One aspect of this is to use tree-sitter and lsp stuff all over the
place.

## Treesit all over the place

`M-x treesit-auto-install-all` to install most (though not all) Treesitter
parsers. That should get us in the right location.

## Requirements

Emacs 30.0.92 or higher, `ripgrep` (for consul) and `pandoc` (for
markdown commands).

I use Comic Code as a developer font. You should get it or replace the
font in the `hypirion-gui.el` file.

When starting up, be sure to run the following:

- `M-x all-the-icons-install-fonts` ([all-the-icons](https://github.com/domtronn/all-the-icons.el))


### Requirements for Go development

I think only
[`gopls`](https://emacs-lsp.github.io/lsp-mode/page/lsp-gopls/) is
needed.

### Hype stuff burning down trees

I'm trying out aidermacs as an attempt to understand the hype.

So get [aider](https://aider.chat/docs/install.html) installed
following the steps here. Also add `ANTHROPIC_API_KEY` to your
`.profile` or something Emacs will catch.

I need to understand how people use this, as it seems a bit unwieldy
atm.

## Sources

This remake was initially triggered by a video about
[Elpaca](https://www.youtube.com/watch?v=5Ud-TE3iIQY), and me knowing
doing <kbd>M-x package-list-packages</kbd> wasn't exactly a repeatable
process.

Lots of new stuff I hadn't initally heard about (Vertico, Consult,
Corfu... the list goes on) was first detected in Marie-Hélène Burle's
talk about [modern
emacs](https://www.youtube.com/watch?v=SOxlQ7ogplA). I found the video
on [Vertico](https://www.youtube.com/watch?v=J0OaRy85MOo) helpful, and
[Consult etc](https://www.youtube.com/watch?v=d3aaxOqwHhI) was nice
for a bit of a repeat and a gentle intro to more packages.

It's imo a bit easier to understand the visual changes stuff by
watching videos, and you also see unrelated tricks you may not usually
come over by just reading some documentation. For setting up other
things (like lsp-mode) it's not that important I guess, but we'll see.

Thoughts on eglot vs. lsp-mode: Seems like flycheck and lsp-mode have
more batteries included.. a lot of batteries included, according to
some. Me included, maybe. However, flycheck and lsp-mode works well
with those wonky languages I'm using, and especially because Clojure
development with Eglot is hacky according to
https://andreyor.st/posts/2023-09-09-migrating-from-lsp-mode-to-eglot/

though maybe that's fixed now... Anyway, I'm going for flycheck and
lsp-mode for now.

## Struggles

Magit, transient and the right emacs version was a bit of a pain. I
ended up with a small package just to drag in transient from (m)elpa
to not have Magit depend on the one provided with emacs, which caused
just pain and suffering.

I think I understand what Cape does, but I don't really get the hype.
I don't complete lines or files, and don't really use a dictionary,
sooooo... Anyway.

use-package with elpaca and `lsp-clojure` isn't obvious to me, so I'll
have to discover what the thing is there.

# Copyright

Copyright © 2025 Jean Niklas L'orange

Licensed under the same license as Emacs (GPL v3 or later).
