# Overview

This repository is a fork of [this really helpful Superset repo](https://github.com/amancevice/superset) to give us a consistent dev environment for a project we are working on internally.  For a local dev environment for exploratory anaysis, we didn't need the additional databases such a postgres and mysql.

The main goal of this repo is to launch an environment consisting of Jupyter and Superset, with a shared volume between them to help us develop a tool to make the interactions between the two cleaner.  In the `examples` directory, the `demo.sh` script will launch an environment with Superset and Jupyter, with a shared volume pointing at `examples/sqlite/superset`.

# Launch dev environment

From within `examples`, run the following:
`sh demo.sh`

# Needing specific tools inside Jupyter container

We opted to begin with the standard `base-notebook` jupyter image, [although any of the other jupyter-docker-stacks images could be swapped in.](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html)

If you find yourself needing specific packages installed with your jupyter image, create a local image with a jupyter-docker-stack image as a base, install whatever packages you need, then swap that image into `examples/sqlite/docker-compose.yaml`.


