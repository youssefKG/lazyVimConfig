local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'solarized-osaka',
		section_separators = { left = '', right = '' },
		component_separators = { left = '', right = '' },
		disabled_filetypes = {}
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch', 'diff', 'diagnostics' },
		lualine_c = { {
			'filename',
			file_status = true, -- displays file status (readonly status, modified status)
			path = 2         -- 0 = just filename, 1 = relative path, 2 = absolute path
		} },
		lualine_x = {
			'filetype',
			{
				'diagnostics',
				sources = { "nvim_diagnostic" },
				symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
			},
			'encoding',
		},
		lualine_y = { 'progress' },
		lualine_z = { 'location' }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { {
			'filename',
			file_status = true, -- displays file status (readonly status, modified status)
			path = 1         -- 0 = just filename, 1 = relative path, 2 = absolute path
		} },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = { 'fugitive' }
}
