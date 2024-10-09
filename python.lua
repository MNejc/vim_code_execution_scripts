
if vim.bo.filetype == 'python' then
    vim.api.nvim_buf_set_keymap(0, 'n', '<F5>', ":w<CR>:vsp<CR>:term python3 % | tee out.txt<CR>i", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<F4>', ":w<CR>:vsp<CR>:term python3 % | tee out.txt<CR>i", { noremap = true, silent = true })
end
