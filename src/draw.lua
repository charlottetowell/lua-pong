function drawGame()
    love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)

	--draw paddles
	for i, player in ipairs(players) do
		love.graphics.rectangle("fill", player.paddle.x, player.paddle.y, player.paddle.width, player.paddle.height)
	end
end