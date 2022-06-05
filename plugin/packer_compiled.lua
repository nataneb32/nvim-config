-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/natabastos/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/natabastos/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/natabastos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/natabastos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/natabastos/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  dracula = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\24colorscheme dracula\bcmd\bvim\0" },
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfeline\frequire\0" },
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimú\b\1\0\b\0009\0ë\0016\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\6\0005\3\4\0003\4\3\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0029\3\t\0009\3\n\0039\3\v\0035\4\r\0009\5\t\0009\5\f\5)\6¸ˇB\5\2\2=\5\14\0049\5\t\0009\5\f\5)\6\4\0B\5\2\2=\5\15\0049\5\t\0009\5\16\5B\5\1\2=\5\17\0049\5\t\0009\5\18\5B\5\1\2=\5\19\0049\5\t\0009\5\20\0055\6\21\0B\5\2\2=\5\22\4B\3\2\2=\3\t\0029\3\23\0009\3\24\0034\4\3\0005\5\25\0>\5\1\0045\5\26\0>\5\2\0044\5\3\0005\6\27\0>\6\1\5B\3\3\2=\3\24\2B\1\2\0019\1\2\0009\1\28\1'\2\29\0005\3 \0009\4\23\0009\4\24\0044\5\3\0005\6\30\0>\6\1\0054\6\3\0005\a\31\0>\a\1\6B\4\3\2=\4\24\3B\1\3\0019\1\2\0009\1!\1'\2\"\0005\3#\0009\4\t\0009\4\n\0049\4!\4B\4\1\2=\4\t\0034\4\3\0005\5$\0>\5\1\4=\4\24\3B\1\3\0019\1\2\0009\1!\1'\2%\0005\3&\0009\4\t\0009\4\n\0049\4!\4B\4\1\2=\4\t\0039\4\23\0009\4\24\0044\5\3\0005\6'\0>\6\1\0054\6\3\0005\a(\0>\a\1\6B\4\3\2=\4\24\3B\1\3\0016\1\0\0'\2)\0B\1\2\0029\1*\0016\2+\0009\2,\0029\2-\0029\2.\2B\2\1\0A\1\0\0026\2\0\0'\3/\0B\2\2\0029\0020\0029\2\2\0025\0031\0=\0012\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\0023\0029\2\2\0025\0034\0=\0012\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\0025\0029\2\2\0025\0036\0=\0012\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\0027\0029\2\2\0025\0038\0=\0012\3B\2\2\1K\0\1\0\1\0\0\bhls\1\0\0\brls\1\0\0\ngopls\17capabilities\1\0\0\17intelephense\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\vwindow\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2ë\f\0\0\a\0007\0C6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0005\3\5\0004\4\0\0=\4\6\3=\3\a\2=\2\b\0015\2\f\0005\3\t\0005\4\n\0=\4\v\3=\3\r\0025\3\14\0=\3\v\2=\2\15\0015\2\16\0=\2\17\0015\2\18\0004\3\0\0=\3\19\2=\2\20\0014\2\0\0=\2\21\0015\2\22\0004\3\0\0=\3\23\2=\2\24\0015\2\25\0005\3\26\0=\3\v\2=\2\27\0015\2\28\0004\3\0\0=\3\29\0024\3\0\0=\3\30\2=\2\31\0015\2 \0=\2!\0015\2\"\0005\3#\0=\3$\0025\3%\0005\4&\0005\5(\0005\6'\0=\6)\0055\6*\0=\6+\5=\5\30\4=\4,\3=\3-\2=\2.\0015\2/\0=\0020\0015\0021\0=\0022\0015\0023\0005\0034\0=\0035\2=\0026\1B\0\2\1K\0\1\0\blog\ntypes\1\0\6\ball\1\vconfig\1\bgit\1\16diagnostics\1\fprofile\1\15copy_paste\1\1\0\2\rtruncate\1\venable\1\16live_filter\1\0\2\24always_show_folders\2\vprefix\15[FILTER]: \ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\2\17quit_on_open\1\15change_dir\1\0\3\23restrict_above_cwd\1\vglobal\1\venable\2\1\0\1\25use_system_clipboard\2\bgit\1\0\3\vignore\2\ftimeout\3ê\3\venable\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\tinfo\bÔÅö\thint\bÔÅ™\nerror\bÔÅó\fwarning\bÔÅ±\1\0\2\17show_on_dirs\2\venable\2\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\23hijack_directories\1\0\2\14auto_open\2\venable\2\rrenderer\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\1\0\0\nicons\1\0\3\tedge\t‚îÇ \tnone\a  \vcorner\t‚îî \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\vnumber\1\tside\tleft\21hide_root_folder\1\vheight\3\30\19relativenumber\1 preserve_window_proportions\2\15signcolumn\byes\nwidth\3\30\1\0\r\fsort_by\tname\18open_on_setup\1\23reload_on_bufenter\1\16open_on_tab\1'hijack_unnamed_buffer_when_opening\1\15auto_close\2\18hijack_cursor\1\23open_on_setup_file\1\17hijack_netrw\2\15update_cwd\1\27ignore_buffer_on_setup\1\18disable_netrw\1\25auto_reload_on_write\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2ˆ\2\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\6\0\0\6c\blua\trust\ago\fhaskell\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/natabastos/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2ˆ\2\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\6\0\0\6c\blua\trust\ago\fhaskell\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimú\b\1\0\b\0009\0ë\0016\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\6\0005\3\4\0003\4\3\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0029\3\t\0009\3\n\0039\3\v\0035\4\r\0009\5\t\0009\5\f\5)\6¸ˇB\5\2\2=\5\14\0049\5\t\0009\5\f\5)\6\4\0B\5\2\2=\5\15\0049\5\t\0009\5\16\5B\5\1\2=\5\17\0049\5\t\0009\5\18\5B\5\1\2=\5\19\0049\5\t\0009\5\20\0055\6\21\0B\5\2\2=\5\22\4B\3\2\2=\3\t\0029\3\23\0009\3\24\0034\4\3\0005\5\25\0>\5\1\0045\5\26\0>\5\2\0044\5\3\0005\6\27\0>\6\1\5B\3\3\2=\3\24\2B\1\2\0019\1\2\0009\1\28\1'\2\29\0005\3 \0009\4\23\0009\4\24\0044\5\3\0005\6\30\0>\6\1\0054\6\3\0005\a\31\0>\a\1\6B\4\3\2=\4\24\3B\1\3\0019\1\2\0009\1!\1'\2\"\0005\3#\0009\4\t\0009\4\n\0049\4!\4B\4\1\2=\4\t\0034\4\3\0005\5$\0>\5\1\4=\4\24\3B\1\3\0019\1\2\0009\1!\1'\2%\0005\3&\0009\4\t\0009\4\n\0049\4!\4B\4\1\2=\4\t\0039\4\23\0009\4\24\0044\5\3\0005\6'\0>\6\1\0054\6\3\0005\a(\0>\a\1\6B\4\3\2=\4\24\3B\1\3\0016\1\0\0'\2)\0B\1\2\0029\1*\0016\2+\0009\2,\0029\2-\0029\2.\2B\2\1\0A\1\0\0026\2\0\0'\3/\0B\2\2\0029\0020\0029\2\2\0025\0031\0=\0012\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\0023\0029\2\2\0025\0034\0=\0012\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\0025\0029\2\2\0025\0036\0=\0012\3B\2\2\0016\2\0\0'\3/\0B\2\2\0029\0027\0029\2\2\0025\0038\0=\0012\3B\2\2\1K\0\1\0\1\0\0\bhls\1\0\0\brls\1\0\0\ngopls\17capabilities\1\0\0\17intelephense\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\vwindow\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2ë\f\0\0\a\0007\0C6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0005\3\5\0004\4\0\0=\4\6\3=\3\a\2=\2\b\0015\2\f\0005\3\t\0005\4\n\0=\4\v\3=\3\r\0025\3\14\0=\3\v\2=\2\15\0015\2\16\0=\2\17\0015\2\18\0004\3\0\0=\3\19\2=\2\20\0014\2\0\0=\2\21\0015\2\22\0004\3\0\0=\3\23\2=\2\24\0015\2\25\0005\3\26\0=\3\v\2=\2\27\0015\2\28\0004\3\0\0=\3\29\0024\3\0\0=\3\30\2=\2\31\0015\2 \0=\2!\0015\2\"\0005\3#\0=\3$\0025\3%\0005\4&\0005\5(\0005\6'\0=\6)\0055\6*\0=\6+\5=\5\30\4=\4,\3=\3-\2=\2.\0015\2/\0=\0020\0015\0021\0=\0022\0015\0023\0005\0034\0=\0035\2=\0026\1B\0\2\1K\0\1\0\blog\ntypes\1\0\6\ball\1\vconfig\1\bgit\1\16diagnostics\1\fprofile\1\15copy_paste\1\1\0\2\rtruncate\1\venable\1\16live_filter\1\0\2\24always_show_folders\2\vprefix\15[FILTER]: \ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\2\17quit_on_open\1\15change_dir\1\0\3\23restrict_above_cwd\1\vglobal\1\venable\2\1\0\1\25use_system_clipboard\2\bgit\1\0\3\vignore\2\ftimeout\3ê\3\venable\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\tinfo\bÔÅö\thint\bÔÅ™\nerror\bÔÅó\fwarning\bÔÅ±\1\0\2\17show_on_dirs\2\venable\2\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\23hijack_directories\1\0\2\14auto_open\2\venable\2\rrenderer\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\1\0\0\nicons\1\0\3\tedge\t‚îÇ \tnone\a  \vcorner\t‚îî \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\vnumber\1\tside\tleft\21hide_root_folder\1\vheight\3\30\19relativenumber\1 preserve_window_proportions\2\15signcolumn\byes\nwidth\3\30\1\0\r\fsort_by\tname\18open_on_setup\1\23reload_on_bufenter\1\16open_on_tab\1'hijack_unnamed_buffer_when_opening\1\15auto_close\2\18hijack_cursor\1\23open_on_setup_file\1\17hijack_netrw\2\15update_cwd\1\27ignore_buffer_on_setup\1\18disable_netrw\1\25auto_reload_on_write\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfeline\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: dracula
time([[Config for dracula]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\24colorscheme dracula\bcmd\bvim\0", "config", "dracula")
time([[Config for dracula]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
