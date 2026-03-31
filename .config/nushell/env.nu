# SSH Agent
$env.SSH_AUTH_SOCK = ($env.HOME | path join "Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock")

# $env.PATH = ($env.PATH | default [] prepend [
$env.PATH = [
  "/Applications/Wireshark.app/Contents/MacOS"
  "/Users/anthonyalvarez/.docker/bin"
  "/Users/anthonyalvarez/.volta/bin"
  "/opt/homebrew/bin"
  "/opt/homebrew/opt"
  "/opt/homebrew/bin/brew"
  "/Users/anthonyalvarez/.cargo/bin"
  "/usr/local/go/bin"
  "/Users/anthonyalvarez/bin"
  "/Users/anthonyalvarez/.local/bin"
  "/Users/anthonyalvarez/Library/Application Support/Herd/bin"
  "/Library/Frameworks/Python.framework/Version/3.13/bin"
  "/usr/local/opt/ruby/bin"
  "/Users/anthonyalvarez/Library/Application Support/carapace/bin"
  "/Applications/Obsidian.app/Contents/MacOS"
  "/usr/local/bin"
  "/usr/bin"
  "/bin"
  "/usr/sbin"
  "/sbin"
  "/Users/anthonyalvarez/.rvm/bin"
# ] | uniq)
]

$env.NVM_DIR = '$HOME/.nvm'

$env.HERD_PHP_83_INI_SCAN_DIR = "/Users/anthonyalvarez/Library/Application Support/Herd/config/php/83/"

# $env.PYENV_ROOT = "$env.HOME/.pyenv"

$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense'
mkdir $"($nu.cache-dir)"
carapace _carapace nushell | save --force $"($nu.cache-dir)/carapace.nu"
