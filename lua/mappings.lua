require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
map("n", "<leader>rm", function ()
    local file_name = vim.api.nvim_buf_get_name(0)
    local file_type = vim.bo.filetype
    if file_type == "lua" then
        vim.cmd(": terminal lua " .. file_name)
    elseif file_type == "c" then
        vim.cmd(": terminal gcc " .. file_name .. "; ./a.out")
    elseif file_type == "python" then
        vim.cmd(": terminal python ".. file_name)
    end
end)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
