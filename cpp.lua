if vim.bo.filetype == 'cpp' then
    vim.api.nvim_buf_set_keymap(0, 'n', '<F5>', ":w<CR>:!g++ -g -o %< %<CR>:vsp<CR>:term ./%< | tee out.txt<CR>i", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<F4>', ":w<CR>:!g++ -g -o %< %<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<F6>', ":vsp<CR>:term ./%< | tee out.txt<CR>i", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<F7>', ":w<CR>:!g++ -g -o %< % `pkg-config --cflags --libs opencv4`<CR>", { noremap = true, silent = true })
end

