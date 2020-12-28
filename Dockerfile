FROM archlinux
# This image is used to build the IDE
# I made this because I don't want to bloat my machine

RUN pacman -Sy jdk8-openjdk jre8-openjdk apache-ant git base-devel --noconfirm
RUN git clone https://github.com/NightChips-dev/Arduino-ChipsFlavored.git

RUN cd Arduino-ChipsFlavored/build
RUN ant dist -noinput
