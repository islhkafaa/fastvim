return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	main = "nvim-treesitter",
	opts = {
		ensure_installed = { "lua", "vim", "vimdoc", "javascript", "typescript", "python", "html", "css", "c", "cpp", "rust" },
		highlight = { enable = true },
		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter").setup(opts)

		local function shim_parsers()
			local status, parsers = pcall(require, "nvim-treesitter.parsers")
			if status and type(parsers) == "table" then
				parsers.get_parser = parsers.get_parser or function(bufnr, lang)
					return vim.treesitter.get_parser(bufnr, lang)
				end
				parsers.ft_to_lang = parsers.ft_to_lang or function(ft)
					return vim.treesitter.language.get_lang(ft) or ft
				end
			end
		end

		local function shim_configs()
			local configs = package.loaded["nvim-treesitter.configs"] or {}
			configs.is_enabled = configs.is_enabled or function(module, lang, bufnr)
				if module ~= "highlight" or not lang or lang == "" or lang == "text" or lang == "plain" then
					return false
				end
				local success, _ = pcall(vim.treesitter.get_string_parser, "", lang)
				return success
			end
			configs.get_module = configs.get_module or function() return { enable = true } end
			package.loaded["nvim-treesitter.configs"] = configs
		end

		shim_parsers()
		shim_configs()
	end,
}
