#!/usr/bin/env bash

EXTPATH=$(dirname $0)

# Clean up the old font location if present.
rm -rf ~/.local/share/fonts/shamsiCalendarFonts

# Use the system font when available; only install a per-user copy otherwise.
if fc-list : family 2>/dev/null | grep -qi 'Vazir'; then
  exit 0
fi

mkdir -p ~/.fonts/shamsi-calendar
cp "$EXTPATH/../fonts/Vazir.ttf" ~/.fonts/shamsi-calendar/
