final: prev: {
  pythonPackagesExtensions = prev.pythonPackagesExtension ++ [
    (python-final: python-prev: { pygobject-stubs = python-prev.pygobject-stubs.overrideAttr (old-attrs: {
      patches = old-attrs.patches or [] ++ [
        ./gtk4layershell.patch
      ];
    });
  })];
}

