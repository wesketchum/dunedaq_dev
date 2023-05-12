#!/bin/bash

source /tmp/setup_dunedaq.sh

jupyter notebook --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
