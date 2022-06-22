# lockpick
> Redm minigame

## Installation
1. Download this repo/codebase
2. Extract and place `lockpick` into your `resources` folder
3. Add `lockpick` to your `server.cfg` file
4. Restart your server


## How-to-use
local testplayer = exports["lockpick"]:lockpick()
if testplayer then 

elseif not testplayer then 

end

## example
wiring = exports ["fixwiring"]:CircuitGame('50%', '50%', '1.0', '30vmin', '1.ogg')
