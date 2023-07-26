M = {}
lvim.leader = "space"

local opts = { noremap = true, silent = true }

local map = vim.keymap.set
map("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.visual_mode["J"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["K"] = ":m '<-2<CR>gv=gv"
lvim.keys.normal_mode["<leader><leader>"] = ":Telescope buffers<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.keys.normal_mode["<leader>t"] = "<cmd>TroubleToggle<CR>"
lvim.keys.normal_mode["<leader>o"] = "<cmd>SymbolsOutline<CR>"

-- Normal --
-- Better window navigation
map("n", "<m-h>", "<C-w>h", opts)
map("n", "<m-j>", "<C-w>j", opts)
map("n", "<m-k>", "<C-w>k", opts)
map("n", "<m-l>", "<C-w>l", opts)
map("n", "<m-tab>", "<c-6>", opts)

map("n", "<leader>ss", function() vim.cmd("so") end)
map({ "n", "i" }, "<C-s>", function() vim.cmd("write") end)
map("n", "<M-e>", vim.cmd.Ex)
map("n", "<M-i>", "<leader>bf", opts)

-- Keep search terms in the middle of the screen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- map("x", "<leader>p", [["_dP]])

-- Copy to keeb too
map({"n", "v"}, "<leader>y", "[[\"+y]]", opts)
map("n", "<leader>Y", [["+Y]], opts)

-- replace from actual  world
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Toggle undotree
map("n", "<leader>u", vim.cmd.UndotreeToggle)



return M
