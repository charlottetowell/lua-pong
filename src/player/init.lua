Player = {
    paddle = Paddle
    ,score = 0
    ,role = 0
}

function Player:new(role)
    local player = {}
    setmetatable(player, self)
    self.__index = self

    player.role = role
    require "/src/player/paddle/init"
    player.paddle = Paddle:new(player)

    return player
end