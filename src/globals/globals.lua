WINDOW_WIDTH_PX = 600
WINDOW_HEIGHT_PX = 600

STATES = {
    START_GAME = {
        transition_to = "PLAY_GAME"
    },
    PLAY_GAME = {
        transition_to = "END_GAME"
    },
    END_GAME = {
        transition_to = "START_GAME"
    }
}