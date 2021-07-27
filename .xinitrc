xrdb -merge ~/.Xresources 
picom &
fcitx5 &
unclutter &
xmodmap ~/.xmodmap &
emacs --daemon &
exec xmonad
