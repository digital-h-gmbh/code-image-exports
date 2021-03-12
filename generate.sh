#!/bin/bash
INPUT=$1

if ! [ -x "$(command -v silicon)" ]; then
  echo 'Error: silicon is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v bat)" ]; then
  echo 'Error: bat is not installed.' >&2
  exit 1
fi

THEMEFILE="$(bat --config-dir)/themes/digitalh.tmTheme"

if ! [ -f "$FILE" ]; then
  cp ./digitalh.tmTheme "$(bat --config-dir)/themes/digitalh.tmTheme"
fi

silicon $INPUT -o ./generated.png --background "#ffffffff" --no-window-controls --theme "/home/dennis/.config/bat/themes/digitalh.tmTheme"