if vim.bo.filetype == 'tex' then

vim.keymap.set("n", "<F5>",  ":w<CR>:!pdflatex -interaction=nonstopmode -synctex=1 %<CR>", { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<F6>', ":w<CR>:!pdflatex -interaction=nonstopmode -synctex=1 % > /dev/null 2>&1<CR>", { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<F4>', ":!zathura %:r.pdf &<CR>", { noremap = true, silent = true })

vim.api.nvim_buf_set_keymap(0, 'n', '<C-s>', ":silent! w<CR>:execute '!pdflatex -interaction=nonstopmode -synctex=1 % > /dev/null 2>&1 &' | redraw!<CR>", { noremap = true, silent = true })

end
