##Start from base jupyter notebook docker container
FROM jupyter/base-notebook:python-3.8.6

##jupyter does not have root user as default, so switch to root to use apt-get and pip3
USER root 

RUN apt-get update
RUN apt-get -y install gcc

#upgrade pip and get synapseclient
RUN pip install matplotlib
RUN pip install numpy
RUN pip install bokeh
RUN pip install pandas
RUN pip install seaborn
RUN pip install sklearn
RUN pip install synapseclient
RUN pip install umap-learn
RUN pip install adjustText
RUN pip install hdbscan
RUN pip install dfply
RUN pip install feather-format

RUN mkdir /home/jovyan/work/output

COPY nfCopper.ipynb /home/jovyan/work
