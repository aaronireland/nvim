local M = {
  "folke/drop.nvim",
  event = { "VimEnter" },
}

function M.config()
    math.randomseed(os.time())
    local theme = ({ "stars", "snow"})[math.random(1, 2)]
    require("drop").setup { theme = theme }
end

return M
