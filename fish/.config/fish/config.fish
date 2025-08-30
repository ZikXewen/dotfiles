if status is-interactive
  set fish_greeting
  starship init fish | source
  alias lg lazygit
  alias dsp "docker system prune -a --volumes -f"
  alias dcd "docker compose down"
  alias dcu "docker compose up --detach"
  alias dcub "dcu --build"
  alias ff "fastfetch"
  alias ls "eza"
  alias ll "eza -l"
  alias la "eza -alh"
  alias tree "eza -T"
  alias ox "oxker --host $DOCKER_HOST"
end

if status is-login 
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    dbus-run-session hyprland
  end
end
