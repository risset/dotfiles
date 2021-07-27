# Install package
alias portget='doas emerge -qav'

# Remove package
alias portrm='doas emerge -qav --deselect'

# Clean dependencies
alias portclean='doas emerge -qav --depclean'

# Upgrade system
alias portupgrade='doas emerge -qavuDU --keep-going --with-bdeps=y @world'

# Update respositories
alias portsync='doas emerge --sync'

# List packages on system
alias portls='qlist -IRv'

# Show history of installed packages
alias porthist='doas genlop -lu'

# Update configuration files and USE flags after emerges
alias dispatch='doas dispatch-conf'

# Add an overlay
alias addoverlay='doas eselect repository enable'

# Remove an overlay
alias rmoverlay='doas eselect repository remove'
