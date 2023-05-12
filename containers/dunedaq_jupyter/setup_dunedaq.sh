#!/bin/sh

source /cvmfs/dunedaq.opensciencegrid.org/setup_dunedaq.sh
setup_dbt latest
dbt-setup-release $MY_DUNEDAQ_VERSION
