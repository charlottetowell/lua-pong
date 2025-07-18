GameState = {
    key = ""
    ,transition_to_key = ""
    ,is_game_active = false
}

function GameState:new(s)
    local state = s
    setmetatable(state, self)
    self.__index = self

    return state
end

function GameState:setNewState(newState)
    if GameState.transition_to_key == newState.key then
        currentState = newState
    else
        error("Invalid state change from " .. GameState.key .. " to " .. newState.key) 
    end
end