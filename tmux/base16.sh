# Hydrangea Styling Guidelines:
base00=default   # - Default
base01='#1e222c' # - Lighter Background (Used for status bars)
base02='#2a303b' # - Selection Background
base03='#c3d5ec' # - Comments, Invisibles, Line Highlighting
base04='#505050' # - Dark Foreground (Used for status bars)
base05='#586374' # - Default Foreground, Caret, Delimiters, Operators
base06='#edf5ff' # - Light Foreground (Not often used)
base07='#ffffff' # - Light Background (Not often used)
base08='#e91e63' # - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
base09='#e99a1e' # - Integers, Boolean, Constants, XML Attributes, Markup Link Url
base0A='#e9c91e' # - Classes, Markup Bold, Search Text Background
base0B='#36c2c2' # - Strings, Inherited Class, Markup Code, Diff Inserted
base0C='#169ec4' # - Support, Regular Expressions, Escape Characters, Markup Quotes
base0D='#537dd5' # - Functions, Methods, Attribute IDs, Headings
base0E='#996ddb' # - Keywords, Storage, Selector, Markup Italic, Diff Changed
base0F='#e242ac' # - Deprecated, Opening/Closing Embedded Language Tags, e.g. <? php ?>

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5

# default statusbar colors
set-option -g status-style fg=$base02,bg=$base00,default

set-window-option -g window-status-style fg=$base03,bg=$base00
set-window-option -g window-status-format " #I #W"

# active window title colors
set-window-option -g window-status-current-style fg=$base0C,bg=$base00
set-window-option -g window-status-current-format " #[bold]#W"

# pane border colors
set-window-option -g pane-active-border-style fg=$base0B
set-window-option -g pane-border-style fg=$base0B

# message text
set-option -g message-style bg=$base00,fg=$base0C

# pane number display
set-option -g display-panes-active-colour $base08
set-option -g display-panes-colour $base0A

# clock
set-window-option -g clock-mode-colour $base0C

tm_session_name="#[default,bg=$base00,fg=$base0E] #S "
set -g status-left "$tm_session_name"

tm_tunes="#[bg=$base00,fg=$base0D] ♫ #(osascript -l JavaScript ~/.dotfiles/applescripts/tunes.js)"
tm_battery="#[fg=$base0F,bg=$base00] ♥ #(battery)"
tm_date="#[default,bg=$base00,fg=$base0C] %R"
tm_host="#[fg=$base0E,bg=$base00] #h "
set -g status-right "$tm_tunes $tm_battery $tm_date $tm_host"


# Colors Backup

# Base16 Styling Guidelines:
# base00=default   # - Default
# base01='#151515' # - Lighter Background (Used for status bars)
# base02='#202020' # - Selection Background
# base03='#909090' # - Comments, Invisibles, Line Highlighting
# base04='#505050' # - Dark Foreground (Used for status bars)
# base05='#D0D0D0' # - Default Foreground, Caret, Delimiters, Operators
# base06='#E0E0E0' # - Light Foreground (Not often used)
# base07='#F5F5F5' # - Light Background (Not often used)
# base08='#AC4142' # - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
# base09='#D28445' # - Integers, Boolean, Constants, XML Attributes, Markup Link Url
# base0A='#F4BF75' # - Classes, Markup Bold, Search Text Background
# base0B='#90A959' # - Strings, Inherited Class, Markup Code, Diff Inserted
# base0C='#75B5AA' # - Support, Regular Expressions, Escape Characters, Markup Quotes
# base0D='#6A9FB5' # - Functions, Methods, Attribute IDs, Headings
# base0E='#AA759F' # - Keywords, Storage, Selector, Markup Italic, Diff Changed
# base0F='#8F5536' # - Deprecated, Opening/Closing Embedded Language Tags, e.g. <? php ?>

# Rebecca Styling Guidelines:
# base00=default   # - Default
# base01='#151515' # - Lighter Background (Used for status bars)
# base02='#202020' # - Selection Background
# base03='#909090' # - Comments, Invisibles, Line Highlighting
# base04='#505050' # - Dark Foreground (Used for status bars)
# base05='#D0D0D0' # - Default Foreground, Caret, Delimiters, Operators
# base06='#E0E0E0' # - Light Foreground (Not often used)
# base07='#F5F5F5' # - Light Background (Not often used)
# base08='#AC4142' # - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
# base09='#D28445' # - Integers, Boolean, Constants, XML Attributes, Markup Link Url
# base0A='#F4BF75' # - Classes, Markup Bold, Search Text Background
# base0B='#90A959' # - Strings, Inherited Class, Markup Code, Diff Inserted
# base0C='#78a1fa' # - Support, Regular Expressions, Escape Characters, Markup Quotes
# base0D='#6efedf' # - Functions, Methods, Attribute IDs, Headings
# base0E='#af81fe' # - Keywords, Storage, Selector, Markup Italic, Diff Changed
# base0F='#f072bb' # - Deprecated, Opening/Closing Embedded Language Tags, e.g. <? php ?>

# Solarflare Styling Guidelines:
# base00=default   # - Default
# base01='#151515' # - Lighter Background (Used for status bars)
# base02='#202020' # - Selection Background
# base03='#a6afb8' # - Comments, Invisibles, Line Highlighting
# base04='#505050' # - Dark Foreground (Used for status bars)
# base05='#D0D0D0' # - Default Foreground, Caret, Delimiters, Operators
# base06='#E0E0E0' # - Light Foreground (Not often used)
# base07='#F5F5F5' # - Light Background (Not often used)
# base08='#AC4142' # - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
# base09='#D28445' # - Integers, Boolean, Constants, XML Attributes, Markup Link Url
# base0A='#F4BF75' # - Classes, Markup Bold, Search Text Background
# base0B='#90A959' # - Strings, Inherited Class, Markup Code, Diff Inserted
# base0C='#33b5e1' # - Support, Regular Expressions, Escape Characters, Markup Quotes
# base0D='#7cc844' # - Functions, Methods, Attribute IDs, Headings
# base0E='#a363d5' # - Keywords, Storage, Selector, Markup Italic, Diff Changed
# base0F='#f072bb' # - Deprecated, Opening/Closing Embedded Language Tags, e.g. <? php ?>
