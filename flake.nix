{
  description = "pygobject-stubs-patches";

  outputs = _: {
    overlays.default = import ./overlay.nix;
  };
}
