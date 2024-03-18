-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.keys.normal_mode["w"] = ":w<CR>"
lvim.keys.normal_mode["q"] = ":q<CR>"

lvim.keys.normal_mode["C-J"] = "<C-W><C-J>"
lvim.keys.normal_mode["C-K"] = "<C-W><C-K>"
lvim.keys.normal_mode["C-L"] = "<C-W><C-L>"
lvim.keys.normal_mode["C-H"] = "<C-W><C-H>"

lvim.keys.normal_mode[";"] = ":"

lvim.plugins = {
  {
    "scalameta/nvim-metals",
    config = function()
      require("user.metals").config()
    end,
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },
}

lvim.format_on_save.enabled = true


-- dap.configurations.scala = {
--   {
--     type = "scala",
--     request = "launch",
--     name = "Run or Test Target",
--     metals = {
--       runType = "runOrTestFile",
--     },
--   },
--   {
--     type = "scala",
--     request = "launch",
--     name = "Test Target",
--     metals = {
--       runType = "testTarget",
--     },
--   },
-- }

lvim.builtin.telescope.defaults = {
  -- use fd to "find files" and return absolute paths
  find_command = { "fd", "-t=f", "-a" },
  path_display = { "absolute" },
  wrap_results = true
}

-- lvim.builtin.telescope.defaults.find_files.wrap_results = true
-- lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 200
-- lvim.builtin.telescope.defaults.find_files.path_display.truncate = false
