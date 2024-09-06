# pygobject-stubs extra patches

Some patches I use for [pygobject-stubs](https://github.com/pygobject/pygobject-stubs)

Includes:

- Stub file for [gtk4-layer-shell](https://github.com/wmww/gtk4-layer-shell) Python bindings.


## Licensing

'pygobject-stubs' is under LGPL2.1 and 'gtk4-layer-shell' is under a MIT License. While this
library is a patch for 'pygobject-stubs' it can be implemented as a standalone file that does *not*
modify any existing code, only provides type annotations for `gtk4-layer-shell`'s Python bindings;
does that mean that this should follow 'gtk4-layer-shell' or 'pygobject-stubs and follow their
licensing? Well I don't really know, so for now this repository is under LGPL2.1. If anyone knows
and wants to correct me feel free to send a PR or email at mailto:mail@michaellepera.xyz.
