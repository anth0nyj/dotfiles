$env.config.buffer_editor = "vim"
$env.config.completions.external.enable = true

# [[ -d $PYENV_ROOT/bin ]] and $env.PATH = "$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"

# # The following lines have been added by Docker Desktop to enable Docker CLI completions.
# fpath=(/Users/anthonyalvarez/.docker/completions $fpath)
# autoload -Uz compinit
# compinit
# # End of Docker CLI completions

# Source carapace completions
source ~/.config/nushell/env/carapace.nu

# Create vendor autoload directory
mkdir ($nu.data-dir | path join "vendor/autoload")

# Initialize starship prompt
starship init nu | save --force ($nu.data-dir | path join "vendor/autoload/starship.nu")
source ($nu.data-dir | path join "vendor/autoload/starship.nu")

# Override macOS system SSH agent with 1Password
$env.SSH_AUTH_SOCK = ($env.HOME | path join "Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock")
