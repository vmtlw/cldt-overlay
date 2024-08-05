# calculate-hyprland 

## Hyprland Profile for Calculate Linux Desktop  

***Warning: It may take a long time. You will lose the installed programs that are not in the profile templates.***  

### How to create an image on the Calculate linux Desktop OS?  
**Using calculate utilities (recommended):**  
* [Download](https://wiki.calculate-linux.org/desktop) Calculate Linux Scratch (CLS) image  
* Prepare a new OS build by running the command  
`cl-builder-prepare --iso /[imagepath]/[isoname].iso --id distros:CLDT/amd64/20`
* Update the OS build by running the command  
  `cl-builder-update -o on -e on -C  on -v on -f`
* Update the OS build profile by running the command  
  `cl-builder-profile --id distros:CLDT/amd64/20 --url https://github.com/vmtlw/cldt-overlay.git CLDT/20`
* Log in to chroot by running the command from root or using sudo  
`chroot /run/calculate/mount/distros_CLDT_amd64_20/`
`cl-builder-image --id distros:CLDT/amd64/20 --video off `
* Complete the OS build by running the command  
`cl-builder-break` 

The new image will be located in `/var/calculate/linux/`  

***Warning: Takes a long time.***  
