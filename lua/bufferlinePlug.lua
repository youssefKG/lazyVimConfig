vim.opt.termguicolors = true
require("bufferline").setup{
	options = {
		mode = "buffers",
		separator_style = 'slant',
		show_buffer_icons = true
	},
	highlights = {
	    separator = {
		guifg = '#073642',
		guibg = '#002b36',
	    },
	    separator_selected = {
	     	guifg = '#073642',
	    },
	    buffer_selected = {
		guifg = '#fdf6e3',
		gui = "bold",
	    },
       }
}

