FROM gcc:7
RUN apt update
RUN apt install -y build-essential gcc-aarch64-linux-gnu git iasl lzma-dev mtools perl python subversion uuid-dev zip
RUN mkdir -p /home/workdir
CMD cd /home/workdir/pipxe && make
