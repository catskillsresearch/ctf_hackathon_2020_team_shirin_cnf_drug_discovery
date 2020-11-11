export TAG=001
export PROJECT=ctf_hackathon_2020_team_shirin_cnf_drug_discovery
export BUILD=$PROJECT:$TAG
docker build -f Dockerfile -t $BUILD .
#docker run -p 8888:8888 $BUILD
#docker run -it --entrypoint=/bin/bash -p 8000:80 -p 8888:8888 $BUILD
#docker run -it --entrypoint=/bin/bash --name foo -p 8000:80 -p 8888:8888 jupyter/base-notebook:python-3.8.6
