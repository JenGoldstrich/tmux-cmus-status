# tmux-cmus-enhanced by JenGoldstrich

Cmus status bar tmux plugin which allows you granular control with simplicity

Works on OS X and probably Linux, no idea if Windows shell comes with grep.

### Status Options

`cmus_status` prints playing or paused

`cmus_title` prints currently playing track

`cmus_artist` prints currently playing artist

`cmus_by` prints the word "by" if and only if cmus is playing or paused on a track

None of these will print anything if cmus is not started

### Usage

Add any of the above items to your `status-right` or `status-left` with the following syntax

I.E. `set -g status-right "#{cmus_status} #{cmus_title} #{cmus_by} #{cmus_artist}"` Will result in printing "playing Song by Artist" when cmus is running being on the right hand status bar. (see below)

![plain_cmus_status](https://i.imgur.com/tNHu6E4.png)

You can also add color options to each field, example

`set -g status-right "#[fg=colour44]#{cmus_status} #{cmus_title} #[fg=white]#{cmus_by} #[fg=colour99]#{cmus_artist}"`

Results in (below)

![pretty cmus status](https://i.imgur.com/1dkrCB5.png)

Song in screenshot is Ripe by Screaming Females off the album Rose Mountain, really good album avaliable on [their bandcamp](https://screamingfemales.bandcamp.com/album/rose-mountain-2)


#### Requirements 

cmus, cmus-remote 

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'JenGoldstrich/tmux-cmus-status'

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

Idea and most code taken from: https://github.com/Mpdreamz/tmux-cmus
