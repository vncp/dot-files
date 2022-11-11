if exists("g:neovide")
  set guifont=FiraCode\ NF:h14
  let g:neovide_cursor_vfx_mode = "railgun"
  let g:neovide_cursor_animation_length = 0.1
  let g:neovide_cursor_trail_length = 0.1
  let g:neovide_cursor_vfx_particle_density = 5
endif

set noswapfile
set mouse=a
set formatoptions-=o
set scrolloff=4
autocmd BufNewFile,BufRead * setlocal formatoptions-=r
set rnu
set hidden
set nobackup
set nowritebackup
