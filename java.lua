if vim.bo.filetype == 'java' then
    vim.api.nvim_buf_set_keymap(0, 'n', '<F5>', ":w<CR>:vsp<CR>:term java %<.java | tee out.txt<CR>i", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<F4>', ":w<CR>:!javac %<.java<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<F6>', ":vsp<CR>:term java %< | tee out.txt<CR>i", { noremap = true, silent = true })
end

