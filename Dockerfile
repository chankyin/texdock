FROM ubuntu:18.04
RUN apt update && apt install texlive-latex-recommended texlive-fonts-extra vim -y
RUN mkdir /input /output
WORKDIR /output
ADD pdf.sh pdf.sh
CMD ./pdf.sh
