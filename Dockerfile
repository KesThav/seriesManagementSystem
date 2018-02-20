FROM python:2.7-jessie

RUN apt update && apt install -y \
texlive-latex-base \
texlive-fonts-recommended \
texlive-fonts-extra \
texlive-latex-extra \
latexmk

RUN git clone https://github.com/polchky/seriesManagementSystem.git

WORKDIR seriesManagementSystem

RUN python setup.py install --record files.txt
