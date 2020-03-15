#!/bin/bash

# Installing HACS and PyLoxone custom_components before starting HA


if [ ! -d "/config/custom_components" ]; then
  printf "### Creating custom_components folder"
  mkdir /config/custom_components
fi


if [ ! -d "/config/custom_components/hacs" ]; then
  printf "### HACS plugin not found. Installing latest release from GitHub repo"
  # Required if moving to balenaos base image
  # install_packages git
  git clone https://github.com/hacs/integration.git
  mv integration/custom_components/hacs /config/custom_components/hacs
  rm -rf integration
fi

# Starting HA
python -m homeassistant --config /config
