# adrien-overlay

## Install

### With eselect repository : (Calculate Linux way)

Make sure /etc/portage/repos.conf directory exists, and make sure dev-vcs/git and app-eselect/eselect-repository installed.

*eselect repository add adrien-overlay git https://github.com/aaaaadrien/adrien-overlay.git*

## Note for Calculate Linux

To enable updates from my overlay, set to ON the cl_update_other_set with

*cl-core-variables --set update.cl_update_other_set=on*
