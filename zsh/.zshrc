#--------------------------------------------------------------------------
# Zsh Env
#--------------------------------------------------------------------------
export XDG_DATA_HOME="${HOME}/.local/share"

#--------------------------------------------------------------------------
# Zsh Configuration
#--------------------------------------------------------------------------
# Add all local binaries to the system path.
typeset -U path
path=(
    $HOME/.local/bin
    /opt/homebrew/bin
    ./vendor/bin
    $path
)

# History settings.
export HISTFILE="${XDG_CACHE_HOME}/zsh/.history"
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "
export HISTSIZE=50000        # History lines stored in mememory.
export SAVEHIST=50000        # History lines stored on disk.
setopt INC_APPEND_HISTORY    # Immediately append commands to history file.
setopt HIST_IGNORE_ALL_DUPS  # Never add duplicate entries.
setopt HIST_IGNORE_SPACE     # Ignore commands that start with a space.
setopt HIST_REDUCE_BLANKS    # Remove unnecessary blank lines.

# Load / source zsh plugins.
. "${XDG_DATA_HOME}/zsh-last-working-dir/last-working-dir.plugin.zsh"
. "${XDG_DATA_HOME}/z/z.plugin.zsh"

#--------------------------------------------------------------------------
# Aliases
#--------------------------------------------------------------------------
alias db="mysql -uroot -e"
alias art="php artisan"
alias tinker="php artisan tinker"
alias mfs="php artisan migrate:fresh --seed"
alias c="composer"
alias g="git"
alias gs="git s"
alias gc="git commit -m"
alias ga="git add "
alias gaa="git add ."
alias gp="git push"
alias gpl="git pull"
alias gco="git checkout"
alias wip="git add . && git commit -m wip"
alias nah="git reset --hard && git clean -df"
