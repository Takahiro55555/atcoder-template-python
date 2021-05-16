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
    $venv_pip3_path install numpy autopep8
fi

if [ ! -d ./.vscode ]; then
    mkdir -p ./.vscode
fi

if [ ! -f ./.vscode/settings.json ]; then
    echo "{" > ./.vscode/settings.json
    echo "    \"python.pythonPath\": \"$venv_python_path\"" >> ./.vscode/settings.json
    echo "}" >> ./.vscode/settings.json
fi

if [ 1 -ne `code --list-extensions | grep "ms-python.python" | wc -l` ]; then
    code --install-extension ms-python.python
fi

if [ 1 -ne `code --list-extensions | grep "ms-python.vscode-pylance" | wc -l` ]; then
    code --install-extension ms-python.vscode-pylance
fi
