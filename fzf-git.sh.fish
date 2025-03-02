function __fzf_git_sh_fish
    commandline --insert (eval $argv[1] | string join ' ')
end

bind \cg\cb '__fzf_git_sh_fish _fzf_git_branches'
bind \cg\ce '__fzf_git_sh_fish _fzf_git_each_ref'
bind \cg\cf '__fzf_git_sh_fish _fzf_git_files'
bind \cg\ch '__fzf_git_sh_fish _fzf_git_hashes'
bind \cg\cl '__fzf_git_sh_fish _fzf_git_lreflogs'
bind \cg\cr '__fzf_git_sh_fish _fzf_git_remotes'
bind \cg\cs '__fzf_git_sh_fish _fzf_git_stashes'
bind \cg\ct '__fzf_git_sh_fish _fzf_git_tags'
bind \cg\cw '__fzf_git_sh_fish _fzf_git_worktrees'

bind \cgb '__fzf_git_sh_fish _fzf_git_branches'
bind \cge '__fzf_git_sh_fish _fzf_git_each_ref'
bind \cgf '__fzf_git_sh_fish _fzf_git_files'
bind \cgh '__fzf_git_sh_fish _fzf_git_hashes'
bind \cgl '__fzf_git_sh_fish _fzf_git_lreflogs'
bind \cgr '__fzf_git_sh_fish _fzf_git_remotes'
bind \cgs '__fzf_git_sh_fish _fzf_git_stashes'
bind \cgt '__fzf_git_sh_fish _fzf_git_tags'
bind \cgw '__fzf_git_sh_fish _fzf_git_worktrees'
