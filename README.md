# PIPXE stable build container 

This repo tries to provide a stable build environment for pipxe (https://github.com/ipxe/pipxe)
It makes use of the gcc7 container from https://hub.docker.com/_/gcc with the underlying debian. 

### Getting started

1. Clone this repo with: `git clone git@github.com:DieOrganisation/pipxe-builder.git && cd pipxe-builder`

3. Clone the current pipxe code to pipxe_src with the following command: `cd pipxe_src && git clone git@github.com:ipxe/pipxe.git`

TODO: Automate customization, add pipxe as submodule maybe? 

