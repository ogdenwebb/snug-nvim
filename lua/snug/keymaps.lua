local nest = require('nest')

-- register groups name via which-key and apply via nest
local register_groups = function(maps)
    for _, map in pairs(maps) do
        nest.applyKeymaps(map)
    end
end

local escapes = {
    { mode = "i", { "jk", "<Esc>" } },
    { mode = "t", { "jk", "<C-\\><C-N>" } },
}

local leader = {
    prefix = "<leader>",
    { "l", "<cmd>luaf%<cr>" },
    { "q", "<cmd>Format<cr>" },
}

-- Easy align
local align = {
  { options = { noremap = false }, {
    { mode = "n", { "ga", "<Plug>(EasyAlign)" } },
    { mode = "v", { "ga", "<Plug>(EasyAlign)" } },
  }}
}

local telescope = {
    name = "telescope",
    prefix = "<leader>t",
    { "t", "<cmd>Telescope<cr>" },
    { "f", "<cmd>Telescope fd<cr>" },
    { "s", "<cmd>Telescope file_browser<cr>" },
    { "b", "<cmd>Telescope buffers<cr>" },
    { "g", "<cmd>Telescope live_grep<cr>" },
    { "h", "<cmd>Telescope command_history<cr>" },
    { "r", "<cmd>Telescope oldfiles<cr>" },
}


register_groups({
    escapes,
    leader,
    telescope,
    align
})
