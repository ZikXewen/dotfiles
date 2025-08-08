if status is-interactive
  set fish_greeting
  starship init fish | source
  alias lg lazygit
  alias dcd "docker compose down"
  alias dcu "docker compose up --detach"
  alias dcub "dcu --build"
end

if status is-login 
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    dbus-run-session hyprland
  end
end
