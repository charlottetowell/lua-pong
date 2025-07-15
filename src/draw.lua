function drawGame()
    love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)

	--draw paddles
	for i, player in ipairs(players) do
		print("Drawing paddle for player " .. i  .. "paddle coords:" .. player.paddle.x .. player.paddle.y)
		love.graphics.rectangle("fill", player.paddle.x, player.paddle.y, player.paddle.width, player.paddle.height)
	end
end