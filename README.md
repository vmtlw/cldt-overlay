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
`chroot /run/calculate/mount/distros_CLS_amd64_20/`
* In chroot, fix the cyclic dependency error (temporarily) by running the command  
`mkdir /etc/portage/package.use`  
* Update the OS build to reformat the world  
* Log in to the chroot again  
* In the chroot, delete the folder with the circular-dependencies file by running the command  
`rm -r /etc/portage/package.use`
* Update the OS build again  
* Create a new image (proprietary video drivers are not included in the image, the '--video on' parameter will enable them) by running the command  
`cl-builder-image --id distros:CLS/amd64/20 --video off `
* Complete the OS build by running the command  
`cl-builder-break --id distros:CLS/amd64/20` 

The new image will be located in `/var/calculate/linux/`  

***Warning: Takes a long time.***  
