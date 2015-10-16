" Run Neomake at save

if has("autocmd")
  au bufwritepost * Neomake
  au bufread * Neomake
endif
