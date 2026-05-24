return {
	"ThePrimeagen/refactoring.nvim",

	dependencies = {
		"lewis6991/async.nvim",
	},

	lazy = false,

	config = function()
		local refactoring = require("refactoring")
		local debug = require("refactoring.debug")

		-- Refactoring actions
		vim.keymap.set({ "n", "x" }, "<leader>re", function()
			return refactoring.extract_func()
		end, { expr = true, desc = "Extract Function" })

		vim.keymap.set({ "n", "x" }, "<leader>rf", function()
			return refactoring.extract_func_to_file()
		end, { expr = true, desc = "Extract Function To File" })

		vim.keymap.set({ "n", "x" }, "<leader>rv", function()
			return refactoring.extract_var()
		end, { expr = true, desc = "Extract Variable" })

		vim.keymap.set({ "n", "x" }, "<leader>ri", function()
			return refactoring.inline_var()
		end, { expr = true, desc = "Inline Variable" })

		vim.keymap.set({ "n", "x" }, "<leader>rI", function()
			return refactoring.inline_func()
		end, { expr = true, desc = "Inline Function" })

		vim.keymap.set({ "n", "x" }, "<leader>rs", function()
			refactoring.select_refactor()
		end, { desc = "Select Refactor" })

		-- Debug helpers
		vim.keymap.set("n", "<leader>rp", function()
			return debug.print_loc({ output_location = "below" })
		end, { expr = true, desc = "Debug Print Location" })

		vim.keymap.set({ "n", "x" }, "<leader>rP", function()
			return debug.print_var({ output_location = "below" })
		end, { expr = true, desc = "Debug Print Variable" })

		vim.keymap.set("n", "<leader>rc", function()
			return debug.cleanup({ restore_view = true })
		end, { expr = true, desc = "Cleanup Debug Prints" })
	end,
}
