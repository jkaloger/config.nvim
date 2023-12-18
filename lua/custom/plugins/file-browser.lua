return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  config = function ()
    require('neo-tree').setup {
      enable_git_status = true,
      window = {

      },
      event_handlers = {

          {
            event = "file_opened",
            handler = function(file_path)
              -- auto close
              -- vimc.cmd("Neotree close")
              -- OR
              require("neo-tree.command").execute({ action = "close" })
            end
          },

        },
      filesystem = {
        hijack_netrw_behavior = "disabled",
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false
        }
      }
    }
  end,
}
