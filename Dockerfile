FROM ubuntu:18.10
RUN export DEBIAN_FRONTEND=noninteractive
ADD install.sh install.sh
RUN ./install.sh
RUN mkdir /input /output
WORKDIR /output
ADD pdf.sh pdf.sh
CMD ./pdf.sh
