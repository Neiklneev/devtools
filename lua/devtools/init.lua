local function setup()
  vim.api.nvim_create_user_command('RunPython', run_file, {})
end

local function map()
  vim.api.nvim_set_keymap('n', "<leader>r", ':RunPython<CR>', { noremap = true, silent = true })
end

local function run_file()
  local filename = vim.fn.expand('%:p')
    vim.cmd('split | terminal')
    vim.api.nvim_feedkeys('python3 ' .. filename .. '\n', 't', false)
end


