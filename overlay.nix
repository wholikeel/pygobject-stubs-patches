final: prev: {
  pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
    (python-final: python-prev: {
      pygobject-stubs = python-prev.pygobject-stubs.overrideAttrs (old-attrs: {
        patches = old-attrs.patches or [ ] ++ [
          ./patches/gtk4layershell.patch
          ./patches/random.patch
        ];
      });
    })
  ];
}
