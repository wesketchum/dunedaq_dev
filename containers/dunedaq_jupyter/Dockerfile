#allow a version argument
ARG DUNEDAQ_IMAGE_TAG=latest

#pull the base dunedaq image
FROM ghcr.io/dune-daq/c8-slim-externals:${DUNEDAQ_IMAGE_TAG}

#set environment var version argument
ARG DUNEDAQ_VERSION=latest
ENV MY_DUNEDAQ_VERSION=$DUNEDAQ_VERSION

#copy in what we need to set things up
COPY requirements.txt /tmp/
COPY setup_dunedaq.sh /tmp/

#set bash shell as default. Requires --format docker
SHELL ["/bin/bash", "-c"] 

#setup dunedaq and install into dunedaq python our requirements
RUN source /tmp/setup_dunedaq.sh \
    && pip3 install -r /tmp/requirements.txt

#expose default jupyter port
EXPOSE 8888

#start notebook on container start
COPY start_notebook.sh /tmp/
RUN chmod +x /tmp/start_notebook.sh
CMD ["/tmp/start_notebook.sh"]
