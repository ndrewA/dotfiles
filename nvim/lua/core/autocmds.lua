-- remove trailing spaces after a file save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- save cursor position when formating, after a file save
_G.clang_format = function()
    local style_path = vim.fn.stdpath('config') .. "/lua/utils/.clang-format"
    local cmd = string.format("%%!clang-format -style=file:%s", style_path)

    -- Save cursor position
    local winview = vim.fn.winsaveview()

    -- Execute clang-format
    vim.cmd(cmd)

    -- Restore cursor position
    vim.fn.winrestview(winview)
end

-- format using clang when save
vim.api.nvim_exec([[
augroup clang_format
    autocmd!
    autocmd BufWritePre *.cpp,*.h,*.c,*.hpp lua clang_format()
augroup END
]], false)

-- add #pragma once to every header file
vim.api.nvim_exec([[
augroup auto_pragma_once
  autocmd!
  autocmd BufNewFile *.h,*h.in,*.hpp silent! 0put =['#pragma once', '']
augroup END
]], false)

-- update lsp every time file is saved
vim.cmd [[
    autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
    autocmd BufWritePost * lua vim.diagnostic.show()
]]

-- open terminal when leaving neovide
if vim.g.neovide then
    local function open_kitty_on_exit()
        local cwd = vim.fn.getcwd()
        local term_cmd = 'kitty --directory ' .. cwd
        os.execute(term_cmd)
    end
    vim.api.nvim_create_autocmd("VimLeave", {callback = open_kitty_on_exit})
end
