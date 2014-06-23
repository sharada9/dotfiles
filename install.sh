#!/bin/sh

link() { local src="$1"; local dest="$2"

  if [ -h "$dest" ]; then echo "Symlink exists: $dest";            return; fi
  if [ -d "$dest" ]; then echo "Directory exists, skipped: $dest"; return; fi

  ln -s "$src" "$dest" && echo "Linked $dest"
}

link_all() { local root="$1"
  cd "$root"

  for dotfile in .*; do
    if [ "$dotfile" = ".git" ]; then continue; fi
    link "$root/$dotfile" "$HOME/$dotfile"
  done
}

cwd=$(dirname "$0")

link_all "$cwd"
link     "$cwd/.config/gtk-3.0/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
