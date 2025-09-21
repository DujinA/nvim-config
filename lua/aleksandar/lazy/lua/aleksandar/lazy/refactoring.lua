return {
	"ThePrimeagen/refactoring.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup({
			prompt_func_return_type = {
				go = false,
				java = false,

				cpp = false,
				c = false,
				h = false,
				hpp = false,
				cxx = false,
			},
			prompt_func_param_type = {
				go = false,
				java = false,

				cpp = false,
				c = false,
				h = false,
				hpp = false,
				cxx = false,
			},
			printf_statements = {},
			print_var_statements = {},
			show_success_message = false, -- shows a message with information about the refactor on success
			-- i.e. [Refactor] Inlined 3 variable occurrences
		})
		vim.keymap.set({ "n", "x" }, "<leader>re", function()
			return require("refactoring").refactor("Extract Function")
		end, { expr = true })
		vim.keymap.set({ "n", "x" }, "<leader>rf", function()
			return require("refactoring").refactor("Extract Function To File")
		end, { expr = true })
		vim.keymap.set({ "n", "x" }, "<leader>rv", function()
			return require("refactoring").refactor("Extract Variable")
		end, { expr = true })
		vim.keymap.set({ "n", "x" }, "<leader>rI", function()
			return require("refactoring").refactor("Inline Function")
		end, { expr = true })
		vim.keymap.set({ "n", "x" }, "<leader>ri", function()
			return require("refactoring").refactor("Inline Variable")
		end, { expr = true })

		vim.keymap.set({ "n", "x" }, "<leader>rbb", function()
			return require("refactoring").refactor("Extract Block")
		end, { expr = true })
		vim.keymap.set({ "n", "x" }, "<leader>rbf", function()
			return require("refactoring").refactor("Extract Block To File")
		end, { expr = true })

		-- load refactoring Telescope extension
		require("telescope").load_extension("refactoring")

		vim.keymap.set({ "n", "x" }, "<leader>rr", function()
			require("telescope").extensions.refactoring.refactors()
		end)

		-- You can also use below = true here to to change the position of the printf
		-- statement (or set two remaps for either one). This remap must be made in normal mode.
		vim.keymap.set("n", "<leader>rp", function()
			require("refactoring").debug.printf({ below = false })
		end)

		-- Print var

		vim.keymap.set({ "x", "n" }, "<leader>rv", function()
			require("refactoring").debug.print_var()
		end)
		-- Supports both visual and normal mode

		vim.keymap.set("n", "<leader>rc", function()
			require("refactoring").debug.cleanup({})
		end)
		-- Supports only normal mode
	end,
}
