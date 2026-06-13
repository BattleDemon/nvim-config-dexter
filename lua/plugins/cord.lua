return {
  {
    "vyfor/cord.nvim",
    event = "VeryLazy",
    build = ":Cord update",
    opts = {
      variables = true,
      user_id = nil, -- Use your custom Discord application client ID if you have one
      log_level = "error", -- Change to "debug" if you ever experience issues
      timer = {
        interval = 1500, -- How often the status refreshes (in milliseconds)
        reset_on_project_change = true, -- Restart the elapsed time clock when swapping projects
        reset_on_file_change = false, -- Keep the clock running when swapping files
      },
      editor = {
        image = nil, -- Tooltip icon layout style
        client = "neovim", -- Shows 'neovim' or 'vim'
        tooltip = "The One True Editor", -- Text when hovering over the Neovim icon
      },
      display = {
        show_time = true, -- Displays elapsed time
        show_repository = true, -- Displays the git repository name
        show_cursor_position = true, -- Set to true to show your current line/column number
      },
      lsp = {
        show_lsp = true, -- Shows the name of your active LSP client
      },
      idle = {
        enable = true, -- Switches status to 'Idle' when you step away
        timeout = 300000, -- Time in milliseconds before idling (3600,000 ms = 1 hour)
        show_status = true, -- Updates your text status to show you are away
        ignore_focus = true, -- If true, it won't idle if Neovim loses focus
      },
      text = {
        viewing = "Viewing ${filename}",
        editing = "Editing ${filename}",
        file_browser = "Browsing ${filename}",
        plugin_manager = "Managing Plugins",
        lsp = "LSP: ${lsp}",
        workspace = "In ${workspace}",
      },
      buttons = { -- Add web links to your Discord status profile
        -- {
        --   label = "View Repository",
        --   url = "git",               -- Using "git" automatically links your GitHub repo URL
        -- },
      },
    },
  },
}
