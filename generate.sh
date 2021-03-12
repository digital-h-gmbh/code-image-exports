#!/bin/bash
INPUT=$1
OUTPUT=$2

if ! [ -x "$(command -v silicon)" ]; then
  echo 'Error: silicon is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v bat)" ]; then
  echo 'Error: bat is not installed.' >&2
  exit 1
fi

THEMEFILE="$(bat --config-dir)/themes/digitalh.tmTheme"

if ! [ -f "$THEMEFILE" ]; then
  cp ./digitalh.tmTheme "$(bat --config-dir)/themes/digitalh.tmTheme"
fi

silicon $INPUT -o $OUTPUT --background "#ffffffff" --no-window-controls --theme "$(bat --config-dir)/themes/digitalh.tmTheme"
