function __fzf_git_sh
    # Get the absolute path to the parent directory of this script (i.e. the
    # parent directory of fzf-git.sh) to use in the key bindings to avoid
    # having to modify `$PATH`.
    set --function fzf_git_sh_path (realpath (status dirname))

    bash $fzf_git_sh_path/fzf-git.sh --run $argv
end

set --local commands branches each_ref files hashes lreflogs remotes stashes tags worktrees

for command in $commands
    set --function key (string sub --length=1 $command)

    eval "bind \cg$key   'commandline --insert (__fzf_git_sh $command | string join \" \")'"
    eval "bind \cg\c$key 'commandline --insert (__fzf_git_sh $command | string join \" \")'"
end
