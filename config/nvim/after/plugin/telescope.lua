local ok, telescope = pcall(require, "telescope")

if not ok then
    return
end

local nnoremap = require("akxcix.keymap").nnoremap

telescope.setup()

nnoremap("<C-p>", function()
    require("telescope.builtin").git_files()
end)

