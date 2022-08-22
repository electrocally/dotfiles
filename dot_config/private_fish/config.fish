#!/usr/local/bin/fish

if status is-interactive
# Commands to run in interactive sessions can go here
  set -U PATH /usr/local/bin $PATH
  set fish_greeting

  # Check for iTerm2 shell integration when using iTerm
  if [ "$TERM_PROGRAM" = "iTerm.app" ]
      test -e $HOME/.iterm2_shell_integration.zsh && bass $HOME/.iterm2_shell_integration.zsh
  end

  starship init fish | source
  zoxide init fish --cmd cd | source

  # Aliases
  which bat 1>/dev/null && alias cat="bat --theme=Dracula"
  which viddy 1>/dev/null && alias watch=viddy
  
  # Add VSCode to Path
  set PATH "$HOME/bin/:$(go env GOPATH)/bin:$HOME/.cargo/bin:$HOME/.krew/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH

  # Misc
  source (pack completion --shell fish)
  set -Ux EXA_STANDARD_OPTIONS --no-user --git --group-directories-first --icons --long -all
  set -g SSH_AUTH_SOCK /Users/(whoami)/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
end
thefuck --alias | source

# pnpm
set -gx PNPM_HOME "/Users/calumdaines/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# bun
set -Ux BUN_INSTALL "/Users/calumdaines/.bun"
fish_add_path "/Users/calumdaines/.bun/bin"

