function __fzf_git_sh_fish
    commandline --insert (eval $argv | string join ' ')
end

bind \cg\cb '__fzf_git_sh_fish bash fzf-git.sh --run branches'
bind \cg\ce '__fzf_git_sh_fish bash fzf-git.sh --run each_ref'
bind \cg\cf '__fzf_git_sh_fish bash fzf-git.sh --run files'
bind \cg\ch '__fzf_git_sh_fish bash fzf-git.sh --run hashes'
bind \cg\cl '__fzf_git_sh_fish bash fzf-git.sh --run lreflogs'
bind \cg\cr '__fzf_git_sh_fish bash fzf-git.sh --run remotes'
bind \cg\cs '__fzf_git_sh_fish bash fzf-git.sh --run stashes'
bind \cg\ct '__fzf_git_sh_fish bash fzf-git.sh --run tags'
bind \cg\cw '__fzf_git_sh_fish bash fzf-git.sh --run worktrees'

bind \cgb '__fzf_git_sh_fish bash fzf-git.sh --run branches'
bind \cge '__fzf_git_sh_fish bash fzf-git.sh --run each_ref'
bind \cgf '__fzf_git_sh_fish bash fzf-git.sh --run files'
bind \cgh '__fzf_git_sh_fish bash fzf-git.sh --run hashes'
bind \cgl '__fzf_git_sh_fish bash fzf-git.sh --run lreflogs'
bind \cgr '__fzf_git_sh_fish bash fzf-git.sh --run remotes'
bind \cgs '__fzf_git_sh_fish bash fzf-git.sh --run stashes'
bind \cgt '__fzf_git_sh_fish bash fzf-git.sh --run tags'
bind \cgw '__fzf_git_sh_fish bash fzf-git.sh --run worktrees'
