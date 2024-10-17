local function setup()
  vim.api.nvim_create_user_command('RunPython', function()
    local filename = vim.fn.expand('%:p')

    vim.cmd('split | terminal')

    vim.api.nvim_feedkeys('python3 ' .. filename .. '\n', 't', false)
  end, {})
end

local function map(key='<leader>r')
  vim.api.nvim_set_keymap('n', key, ':RunPython<CR>', { noremap = true, silent = true })
end



