#!/bin/bash

venv_path="/home/$USER/.venv"
atcoder_venv_path="$venv_path/atcoder"
venv_python_path="$atcoder_venv_path/bin/python3"
venv_pip3_path="$atcoder_venv_path/bin/pip3"

if [ ! -d $venv_path ]; then
    mkdir -p $venv_path
fi

if [ ! -f $venv_python_path ]; then
    python3 -m venv $atcoder_venv_path
    $venv_pip3_path install numpy
fi
