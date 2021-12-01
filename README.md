# PIPXE stable build container 

This repo tries to provide a stable build environment for pipxe (https://github.com/ipxe/pipxe)
It makes use of the gcc7 container from https://hub.docker.com/_/gcc with the underlying debian. 

### Getting started

Clone this repo

`git clone git@github.com:DieOrganisation/pipxe-builder.git && cd pipxe-builder`

Clone the current pipxe code to pipxe_src with the following command

`cd pipxe_src && git clone git@github.com:ipxe/pipxe.git`


### Build and run the docker image with podman 

`cd .. && podman build --no-cache --tag pipxegcc7 -f ./Dockerfile`

After that run the container and let it do its magic with

`podman run -it -v "$(pwd)"/pipxe_src:/home/workdir:z -w /home/pipxe_src localhost/pipxegcc7`

### Build and run the docker image with Docker 

`cd .. && docker build --no-cache --tag pipxegcc7 -f ./Dockerfile`

After that run the container and let it do its magic with

`dcoker run -it -v "$(pwd)"/pipxe_src:/home/workdir -w /home/pipxe_src localhost/pipxegcc7`

Description: 
* -it => Interactive run
* -v => Mount your pipxe_src (here is the pipxe code located) into the container* 
* -w => set the working dir to /home/pipxe_src 
* localhost/pipxegcc7 => image name 

\* :z is a SELinux flag, podman needs it because it runs rootless see [Podman Volumes and SELinux](https://blog.christophersmart.com/2021/01/31/podman-volumes-and-selinux/) for further details)


TODO: Automate customization, add pipxe as submodule maybe? 
HINT: Files in pipxe_src/pi_pxe_custom_cfg are for testing purposes. Ignore them for now.
