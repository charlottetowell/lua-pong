require "src/globals/states/registry"

function drawGame()
    StateRegistry:getCurrentState():draw()
end