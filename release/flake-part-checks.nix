{ withSystem, nixos-mailserver, ... }:

{
  flake = {
    checks.x86_64-linux = withSystem "x86_64-linux"
      ({ pkgs, ... }:
        let
          inherit (pkgs) lib;
          tests = import ../tests {
            inherit nixos-mailserver pkgs;
            system = "x86_64-linux";
          };

          flattenPackageAttrset =
            attrs:
            visitedAttrPath:
              (lib.flatten
                (lib.mapAttrsToList
                  (n: v:
                    let
                      attrPath = visitedAttrPath ++ [n];
                      dottedName = (lib.concatStringsSep "." attrPath);
                    in
                      if lib.isDerivation v then (builtins.trace dottedName) lib.nameValuePair dottedName v
                      else if lib.isAttrs v then flattenPackageAttrset v attrPath
                      else null)
                  attrs));
        in
          lib.listToAttrs
            (lib.filter
              (p: p != null)
              (flattenPackageAttrset tests []))
      );
  };
}
