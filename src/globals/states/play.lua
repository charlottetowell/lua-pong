require "src/globals/states/init"

playState = GameState:new({
    key = "PLAY"
    ,transition_to_key = "GAME_OVER"
})

function playState:update(dt)
    print("Updating for state " .. playState.key)
    require "src/ball/update"
    ball:update()

    -- update players
    require "src/player/update"
    for i, player in ipairs(players) do
		player:update()
    end
end

function playState:draw()
  --draw ball
  love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)

	--draw paddles
	for i, player in ipairs(players) do
		love.graphics.rectangle("fill", player.paddle.x, player.paddle.y, player.paddle.width, player.paddle.height)
	end
end