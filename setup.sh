cp launch-focus-or-hide.lua auto-reload.lua ~/.hammerspoon
if [ ! -f ~/.hammerspoon/init.lua ]
then
	touch ~/.hammerspoon/init.lua
fi
if ! grep -q "require('launch-focus-or-hide')" ~/.hammerspoon/init.lua; then
	echo "require('launch-focus-or-hide')\n" | cat - ~/.hammerspoon/init.lua > temp && mv temp ~/.hammerspoon/init.lua 
fi

if ! grep -q "require('auto-reload')" ~/.hammerspoon/init.lua; then
	echo "require('auto-reload')\n" | cat - ~/.hammerspoon/init.lua > temp && mv temp ~/.hammerspoon/init.lua 
fi
