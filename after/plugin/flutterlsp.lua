require("flutter-tools").setup {} -- use defaults

vim.keymap.set("n", "<leader>fr", "<cmd>FlutterRun<cr>", { desc = "Flutter Run" })
vim.keymap.set("n", "<leader>fq", "<cmd>FlutterQuit<cr>", { desc = "Flutter Quit" })
vim.keymap.set("n", "<leader>fh", "<cmd>FlutterReload<cr>", { desc = "Flutter Hot Reload" })
vim.keymap.set("n", "<leader>fR", "<cmd>FlutterRestart<cr>", { desc = "Flutter Hot Restart" })
vim.keymap.set("n", "<leader>fd", "<cmd>FlutterDevices<cr>", { desc = "Flutter Devices" })
vim.keymap.set("n", "<leader>fe", "<cmd>FlutterEmulators<cr>", { desc = "Flutter Emulators" })
vim.keymap.set("n", "<leader>fl", "<cmd>FlutterLogToggle<cr>", { desc = "Flutter Logs Toggle" })
vim.keymap.set("n", "<leader>flc", "<cmd>FlutterLogClear<cr>", { desc = "Flutter Logs Clear" })
vim.keymap.set("n", "<leader>fo", "<cmd>FlutterOutlineToggle<cr>", { desc = "Flutter Outline Toggle" })

