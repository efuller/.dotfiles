local status, matchup = pcall(require, 'andymass/vim-matchup')
if (not status) then return end

matchup.setup({})
