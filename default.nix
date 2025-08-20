{ fzf, git, stdenv, ... }:

stdenv.mkDerivation {
  pname = "fzf-git-sh";
  version = "0.0.1";

  src = ./.;

  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir --parents $out/bin/

    install -D ./fzf-git.sh $out/bin/

    mkdir --parents $out/share/fzf-git.sh/

    install -D ./fzf-git.sh      $out/share/fzf-git.sh/fzf-git.sh
    install -D ./fzf-git.sh.fish $out/share/fzf-git.sh/fzf-git.sh.fish

    runHook postInstall
  '';

  outputs = [ "out" ];
}
