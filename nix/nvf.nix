{ lib, ... }: let
  inherit (lib.generators) mkLuaInline;
in {
  programs.nvf.settings.vim = {
    options = {
      tabstop = 2;
      shiftwidth = 2;
      cmdheight = 0;
    };
    theme = {
      enable = true;
      name = "tokyonight";
      style = "night";
      transparent = true;
    };
    mini.icons.enable = true;
    statusline.lualine.enable = true;
    telescope.enable = true;
    lsp.enable = true;
    treesitter.enable = true;
    utility.oil-nvim = {
      enable = true;
      setupOpts = {
        use_default_keymaps = false;
        keymaps = {
          "<C-r>" = "actions.refresh";
          "<CR>" = "actions.select";
          "<C-p>" = "actions.preview";
          "<BS>" = { "@1" = "actions.parent"; mode = "n"; };
          "q" = { "@1" = "actions.close"; mode = "n"; };
          "`" = { "@1" = "actions.cd"; mode = "n"; };
          "_" = { "@1" = "actions.open_cwd"; mode = "n"; };
          "H" = { "@1" = "actions.toggle_hidden"; mode = "n"; };
          "gx" = { "@1" = "actions.open_external"; mode = "n"; };
          "?" = { "@1" = "actions.show_help"; mode = "n"; };
        };
        view_options = {
          show_hidden = true;
          is_always_hidden = mkLuaInline ''
            function(name, _)
              return name == ".."
            end
          '';
        };
        confirmation.win_options.winblend = 10;
        progress.win_options.winblend = 10;
      };
    };
    autocomplete.blink-cmp = {
      enable = true;
      mappings = {
        next = "<C-n>";
        previous = "<C-p>";
      };
    };
    keymaps = [
      { mode = "n"; key = "<BS>"; action = "<Cmd>Oil<CR>"; }
      { mode = "n"; key = "<Leader>li"; action = "<Cmd>che vim.lsp<CR>"; }
    ];
    languages = {
      enableFormat = true;
      clang = {
        enable = true;
        lsp.enable = true;
      };
      java = {
        enable = true;
        lsp.enable = true;
      };
      kotlin = {
        enable = true;
        lsp.enable = true;
      };
      nix = {
        enable = true;
        lsp.enable = true;
      };
      rust = {
        enable = true;
        crates.enable = true;
        lsp.enable = true;
      };
    };
  };
}
