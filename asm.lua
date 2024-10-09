if vim.bo.filetype == 'asm' then
vim.bo.filetype = 'asm'

vim.keymap.set("n", "<F5>", ":!nasm -f elf64 % -o %<.o <CR> :!ld -o %< %<.o <CR> :vsp <CR> :term ./%< <CR> i")
vim.keymap.set("n", "<F4>", ":!nasm -f elf64 % -o %<.o <CR> :!ld -o %< %<.o <CR>")
vim.keymap.set("n", "<F6>", ":vsp <CR> :term ./%< <CR> i")

end

