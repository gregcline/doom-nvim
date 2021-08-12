-- plugins - Doom nvim custom plugins
--
-- This file contains all the custom plugins that are not in Doom nvim but that
-- the user requires. All the available fields can be found here
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
--
-- By example, for including a plugin with a dependency on telescope:
-- return {
--     {
--         'user/repository',
--         requires = { 'nvim-lua/telescope.nvim' },
--     },
-- }

return {
  {
    'Olical/conjure',
    tag = 'v4.22.0'
  },
  {
    'kristijanhusak/orgmode.nvim',
    config = function ()
      require('orgmode').setup({
        org_agenda_files = {'~/org/**/*'},
        org_default_notes_file = '~/org/notes.org',
      })
    end
  },
  {
    'eraserhd/parinfer-rust',
  },
  {
    'tpope/vim-surround',
  },
  {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  {
    'marko-cerovac/material.nvim'
  },
  {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim'
  },
}
