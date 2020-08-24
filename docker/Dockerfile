FROM python:3.8

ARG project_dir=/home/jovyan
WORKDIR $project_dir

FROM jjanzic/docker-python3-opencv

# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
FROM jupyter/scipy-notebook:latest

USER root

RUN apt-get update

# pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# graphviz
RUN apt-get install -y graphviz
RUN pip install graphviz

# Japanese
RUN apt-get install -y fonts-ipafont

# clean
RUN apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*