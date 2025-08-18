{ fzf, git, stdenv, ... }:

stdenv.mkDerivation {
  pname = "fzf Git sh";
  version = "0.0.1";

  src = ./.;

  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir --parents $out/bin/

    install -D ./bin/__fzf_git          $out/bin/
    install -D ./bin/__fzf_git_cat      $out/bin/
    install -D ./bin/__fzf_git_color    $out/bin/
    install -D ./bin/__fzf_git_pager    $out/bin/
    install -D ./bin/_fzf_git_branches  $out/bin/
    install -D ./bin/_fzf_git_check     $out/bin/
    install -D ./bin/_fzf_git_each_ref  $out/bin/
    install -D ./bin/_fzf_git_files     $out/bin/
    install -D ./bin/_fzf_git_fzf       $out/bin/
    install -D ./bin/_fzf_git_hashes    $out/bin/
    install -D ./bin/_fzf_git_lreflogs  $out/bin/
    install -D ./bin/_fzf_git_remotes   $out/bin/
    install -D ./bin/_fzf_git_stashes   $out/bin/
    install -D ./bin/_fzf_git_tags      $out/bin/
    install -D ./bin/_fzf_git_worktrees $out/bin/

    mkdir --parents $out/share/fzf-git.sh/

    install -D ./fzf-git.sh.fish $out/share/fzf-git.sh/./fzf-git.sh.fish

    runHook postInstall
  '';

  outputs = [ "out" ];
}
