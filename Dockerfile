FROM ubuntu:18.10
RUN apt-get update && apt-get install -y texlive-latex-recommended texlive-fonts-extra vim
RUN mkdir /input /output
WORKDIR /output
ADD pdf.sh pdf.sh
CMD ./pdf.sh
