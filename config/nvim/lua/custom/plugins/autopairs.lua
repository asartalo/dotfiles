return {
  "windwp/nvim-autopairs",
  config = function ()
    require("nvim-autopairs").setup({
      disable_filetype = {
        "TelescopePrompt",
        "guihua",
        "guihua_rust",
        "clap_input",
      },
    })
    NVIM_AUTOPAIRS_INSTALLED = true
  end
}
