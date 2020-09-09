# tmux-cmus-enhanced by JenGoldstrich

Cmus status bar tmux plugin which allows you granular control with simplicity

Works on OS X and probably Linux, no idea if Windows shell comes with grep.

### Status Options

`cmus_status` prints playing or paused

`cmus_title` prints currently playing track

`cmus_artist` prints currently playing artist

`cmus_by` prints the word "by" if and only if cmus is playing or paused on a track

None of these will print anything if cmus is not started

#### Requirements 

cmus, cmus-remote 

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'JenGoldstrich/tmux-cmus-status'

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

Idea and most code taken from: https://github.com/Mpdreamz/tmux-cmus
