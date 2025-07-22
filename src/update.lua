require "src/globals/states/registry"

function updateGame(dt)
    StateRegistry:getCurrentState():update(dt)
end