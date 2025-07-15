isGameOver = false

function updateGame(dt)
    if isGameOver then return end

    -- update ball
    require "src/ball/update"
    ball:update()

    -- update players
    require "src/player/update"
    for i, player in ipairs(players) do
		player:update()
	end
end