local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>t', '<esc>:tabnew')

require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
  highlight = {
    enable = true
  }
})
vim.cmd("colorscheme catppuccin")
vim.opt.ignorecase = true

vim.cmd("autocmd FileType tex setlocal shiftwidth=2 tabstop=2")
vim.cmd("set number")

vim.g.clipboard = {
	name = 'win32yank clipboard',
	copy = {
		["+"] = {'/mnt/c/Users/schleucher/win32yank/target/release/win32yank.exe', '-i', '--crlf'},
		["*"] = {'/mnt/c/Users/schleucher/win32yank/target/release/win32yank.exe', '-i', '--crlf'},
	},
	paste = {
		["+"] = {'/mnt/c/Users/schleucher/win32yank/target/release/win32yank.exe', '-o', '--lf'},
		["*"] = {'/mnt/c/Users/schleucher/win32yank/target/release/win32yank.exe', '-o', '--lf'},
	},
	cache_enabled = true,
}

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
require("rust_conf")
