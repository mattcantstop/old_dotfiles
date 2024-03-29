
# GENERAL ALIASES
alias ls='ls -Glah'
alias chrome='open /Applications/Google\ Chrome.app'
alias mail='open -a Mail.app'
alias todo='open -a Reminders.app'
alias paramed='cd ~/Dropbox/jvlabs/18insights'
alias projects='cd ~/projects'
alias work='cd ~/Dropbox/mdwork'
alias matt='cd ~/projects/mattcantstop.github.io'
alias nedry='cd ~/projects/nedry'
alias dot='source ~/dotfiles/.bash_profile ~/dotfiles/.bashrc'
alias dotfiles='cd ~/dotfiles'
alias cd..='cd ..'


# BUNDLE
alias bx='bundle exec'
alias b='bundle'
alias s='bundle exec rails s'

# GIT 
alias gs='git status'

git_branch () {
    if git rev-parse --git-dir >/dev/null 2>&1
        then echo -e "" [$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')]
    else
        echo ""
    fi
}
function git_color {
    local STATUS=`git status 2>&1`
    if [[ "$STATUS" == *'Not a git repository'* ]]
        then echo ""
    else
    if [[ "$STATUS" != *'working directory clean'* ]]
        then
        # red if need to commit
        echo -e '\033[0;31m'
    else
    if [[ "$STATUS" == *'Your branch is ahead'* ]]
        then
        # yellow if need to push
        echo -e '\033[0;33m'
    else
        # else cyan
        echo -e '\033[0;32m'
    fi
    fi
    fi
}
export PS1='\[\033[0;35m\]⌘ \[\033[0;36m\]\w/\[$(git_color)\]$(git_branch)\[\033[m\] '


