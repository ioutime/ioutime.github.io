# $nvm = nvm use 12.19.0
# if ($nvm -eq "Now using node v12.19.0 (64-bit)") {
#     Start-Sleep 1
#     hexo clean
#     hexo g
#     hexo d
# }
hexo clean
hexo g
hexo d