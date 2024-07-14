#!/bin/sh

THEME=$1
BASE=/Users/pdt/.config/nvim

# 0 = switch to dark
# 1 = switch to light

if [[ "$THEME" == 0 ]]; then
	/opt/homebrew/bin/kitten themes --reload-in=all blazer-dark &> /tmp/log
	cp "$BASE/colors/blazer-dark.lua" "${BASE}/colors/blazer.lua"
	cp "$BASE/lua/lualine/themes/blazer-dark.lua" "${BASE}/lua/lualine/themes/blazer.lua"
else
	/opt/homebrew/bin/kitten themes --reload-in=all blazer-light &> /tmp/log
	cp "$BASE/colors/blazer-light.lua" "$BASE/colors/blazer.lua"
	cp "$BASE/lua/lualine/themes/blazer-light.lua" "$BASE/lua/lualine/themes/blazer.lua"
fi

killall -SIGUSR1 nvim
