final: prev: {
  pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
    (python-final: python-prev: {
      pygobject-stubs = python-prev.pygobject-stubs.overrideAttrs (old-attrs: {
        patches = old-attrs.patches or [ ] ++ (
          let
            patch-dir = ./patches;
            dir-contents = builtins.readDir patch-dir;
            files = prev.lib.filterAttrs (_: v: v == "regular") dir-contents;
            patch-names = prev.lib.getAttrs files;
            patches = map (n: patch-dir + n) patch-names;
          in
          patches
        );
      });
    })
  ];
}
