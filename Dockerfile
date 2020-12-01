FROM ubuntu:20.04
RUN apt-get update && apt-get -y install sudo
COPY . /
WORKDIR /scripts
RUN chmod +x make_scripts_executable.sh
RUN ./make_scripts_executable.sh
RUN ./get_nroot_dependencies.sh
RUN ./build_toybox.sh
WORKDIR /
CMD bash
