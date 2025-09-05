function _fzf_git_sh
    # Get the absolute path to the parent directory of this script (i.e. the
    # parent directory of fzf-git.sh) to use in the key bindings to avoid
    # having to modify `$PATH`.
    set --function fzf_git_sh_path (realpath (status dirname))

    SHELL=bash bash $fzf_git_sh_path/fzf-git.sh --run $argv
end

set --local commands branches each_ref files hashes lreflogs remotes stashes tags worktrees

for command in $commands
    set --function key (string sub --length=1 $command)

    eval "function _fzf_git_$command; _fzf_git_sh $command; end"

    eval "bind -M default \cg$key   'commandline --insert (_fzf_git_$command | string join \" \")'"
    eval "bind -M insert  \cg$key   'commandline --insert (_fzf_git_$command | string join \" \")'"
    eval "bind -M default \cg\c$key 'commandline --insert (_fzf_git_$command | string join \" \")'"
    eval "bind -M insert  \cg\c$key 'commandline --insert (_fzf_git_$command | string join \" \")'"
end
